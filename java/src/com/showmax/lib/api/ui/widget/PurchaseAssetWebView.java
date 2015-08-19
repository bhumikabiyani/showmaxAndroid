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

public class PurchaseAssetWebView extends BaseWebView
{
    public static interface PurchaseAssetWebViewListener
    {

        public abstract void onCloseButtonClicked();

        public abstract void onPageError(int i, String s, String s1);

        public abstract void onPageLoadingProgressChanged(int i);
    }


    public static boolean LOG = true;
    private String mAssetId;
    private PurchaseAssetWebViewListener mListener;

    public PurchaseAssetWebView(Context context)
    {
        super(context);
    }

    public PurchaseAssetWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public PurchaseAssetWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    private boolean isPurchaseSuccessful(String s)
    {
        return isRedirectUrlMatched(s);
    }

    public void load(String s, String s1)
    {
        mAssetId = s1;
        super.load(s);
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

    public void setPurchaseAssetWebViewListener(PurchaseAssetWebViewListener purchaseassetwebviewlistener)
    {
        mListener = purchaseassetwebviewlistener;
    }

    protected boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        boolean flag = false;
        if (LOG)
        {
            MauLog.v("[PurchaseAssetWebView]::[shouldOverrideUrlLoading]::[url: %s]", new Object[] {
                s
            });
        }
        if (isCloseButtonMatched(s) || isPurchaseSuccessful(s))
        {
            if (LOG)
            {
                MauLog.v("[PurchaseAssetWebView]::[shouldOverrideUrlLoading]::[close button matched or purchase successful]");
            }
            if (mListener != null)
            {
                mListener.onCloseButtonClicked();
            }
            flag = true;
        }
        return flag;
    }

}
