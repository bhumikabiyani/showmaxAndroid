// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.lib.api.ui.widget:
//            BaseWebView

public class MyAccountWebView extends BaseWebView
{
    public static interface MyAccountWebViewListener
    {

        public abstract void onCloseButtonClicked();

        public abstract void onPageError(int i, String s, String s1);

        public abstract void onPageLoadingProgressChanged(int i);
    }


    public static boolean LOG = true;
    private MyAccountWebViewListener mListener;

    public MyAccountWebView(Context context)
    {
        super(context);
    }

    public MyAccountWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public MyAccountWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
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

    public void setMyAccountWebViewListener(MyAccountWebViewListener myaccountwebviewlistener)
    {
        mListener = myaccountwebviewlistener;
    }

    protected boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (LOG)
        {
            MauLog.v("[MyAccountWebView]::[shouldOverrideUrlLoading]::[url: %s]", new Object[] {
                s
            });
        }
        if (isCloseButtonMatched(s))
        {
            if (LOG)
            {
                MauLog.v("[MyAccountWebView]::[shouldOverrideUrlLoading]::[close button matched]");
            }
            if (mListener != null)
            {
                mListener.onCloseButtonClicked();
            }
            return true;
        } else
        {
            return false;
        }
    }

}
