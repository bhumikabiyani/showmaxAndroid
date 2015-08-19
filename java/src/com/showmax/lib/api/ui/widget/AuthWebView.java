// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.content.Context;
import android.net.Uri;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.lib.api.ui.widget:
//            BaseWebView

public class AuthWebView extends BaseWebView
{
    public static interface AuthWebViewListener
    {

        public abstract void onAuthSuccessful(String s, String s1, String s2, Boolean boolean1);

        public abstract void onCloseButtonClicked();

        public abstract void onPageError(int i, String s, String s1);

        public abstract void onPageLoadingProgressChanged(int i);
    }


    public static boolean LOG = true;
    private AuthWebViewListener mListener;

    public AuthWebView(Context context)
    {
        super(context);
    }

    public AuthWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public AuthWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private boolean isUrlAuthSuccessful(String s)
    {
        return s.contains("token") && s.contains("expires_in") && s.contains("secure_token");
    }

    protected void onProgressChanged(WebView webview, int i)
    {
        if (mListener != null)
        {
            mListener.onPageLoadingProgressChanged(i);
        }
    }

    protected void onReceivedError(WebView webview, int i, String s, String s1)
    {
        if (mListener != null)
        {
            mListener.onPageError(i, s, s1);
        }
    }

    public void setAuthWebViewListener(AuthWebViewListener authwebviewlistener)
    {
        mListener = authwebviewlistener;
    }

    protected boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (LOG)
        {
            MauLog.v("[AuthWebView]::[shouldOverrideUrlLoading]::[url: %s]", new Object[] {
                s
            });
        }
        if (isCloseButtonMatched(s))
        {
            if (LOG)
            {
                MauLog.v("[AuthWebView]::[shouldOverrideUrlLoading]::[close button matched]");
            }
            if (mListener != null)
            {
                mListener.onCloseButtonClicked();
            }
        } else
        if (isUrlAuthSuccessful(s))
        {
            webview = Uri.parse(s);
            s = webview.getQueryParameter("token");
            String s1 = webview.getQueryParameter("expires_in");
            String s2 = webview.getQueryParameter("secure_token");
            webview = webview.getQueryParameter("bonus");
            if (LOG)
            {
                MauLog.v("[AuthWebView]::[shouldOverrideUrlLoading]::[bonusStr %s]]", new Object[] {
                    webview
                });
            }
            if ("true".equals(webview))
            {
                webview = Boolean.valueOf(true);
            } else
            if ("false".equals(webview))
            {
                webview = Boolean.valueOf(false);
            } else
            {
                webview = null;
            }
            if (mListener != null)
            {
                if (LOG)
                {
                    MauLog.v("[AuthWebView]::[shouldOverrideUrlLoading]::[auth successful]::[notify listener]");
                }
                mListener.onAuthSuccessful(s, s2, s1, webview);
                return true;
            }
        } else
        {
            return false;
        }
        return true;
    }

}
