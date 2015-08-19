// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.net.MailTo;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mautilus.lib.common.util.MauLog;
import com.showmax.lib.api.io.UserApi;
import java.util.Date;
import org.apache.http.impl.cookie.BasicClientCookie;

public abstract class BaseWebView extends WebView
{

    public static String ICFLIX_CLOSE_BUTTON = "showmax://close_webview";
    public static boolean LOG = true;
    private android.view.View.OnTouchListener mOnTouchListener = new android.view.View.OnTouchListener() {

        private float mDownX;
        final BaseWebView this$0;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            motionevent.getAction();
            JVM INSTR tableswitch 0 3: default 36
        //                       0 38
        //                       1 49
        //                       2 49
        //                       3 49;
               goto _L1 _L2 _L3 _L3 _L3
_L1:
            return false;
_L2:
            mDownX = motionevent.getX();
            continue; /* Loop/switch isn't completed */
_L3:
            motionevent.setLocation(mDownX, motionevent.getY());
            if (true) goto _L1; else goto _L4
_L4:
        }

            
            {
                this$0 = BaseWebView.this;
                super();
            }
    };
    protected String mPageUrl;
    private WebChromeClient mWebChromeClient = new WebChromeClient() {

        final BaseWebView this$0;

        public void onProgressChanged(WebView webview, int i)
        {
            if (BaseWebView.LOG)
            {
                MauLog.v("[BaseWebView]::[onProgressChanged]::[progress: %d]", new Object[] {
                    Integer.valueOf(i)
                });
            }
            BaseWebView.this.onProgressChanged(webview, i);
        }

            
            {
                this$0 = BaseWebView.this;
                super();
            }
    };
    private WebViewClient mWebViewClient = new WebViewClient() {

        final BaseWebView this$0;

        public Intent getEmailIntent(Context context1, String s, String s1, String s2, String s3)
        {
            context1 = new Intent("android.intent.action.SEND");
            context1.putExtra("android.intent.extra.EMAIL", new String[] {
                s
            });
            context1.putExtra("android.intent.extra.TEXT", s2);
            context1.putExtra("android.intent.extra.SUBJECT", s1);
            context1.putExtra("android.intent.extra.CC", s3);
            context1.setType("message/rfc822");
            return context1;
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            if (BaseWebView.LOG)
            {
                MauLog.v("[BaseWebView]::[onReceivedError]::[errorCode: %d]::[description: %s]::[failingUrl: %s]", new Object[] {
                    Integer.valueOf(i), s, s1
                });
            }
            BaseWebView.this.onReceivedError(webview, i, s, s1);
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            if (s.startsWith("mailto:"))
            {
                webview = MailTo.parse(s);
                webview = getEmailIntent(getContext(), webview.getTo(), webview.getSubject(), webview.getBody(), webview.getCc());
                getContext().startActivity(webview);
                reload();
                return true;
            } else
            {
                return BaseWebView.this.shouldOverrideUrlLoading(webview, s);
            }
        }

            
            {
                this$0 = BaseWebView.this;
                super();
            }
    };

    public BaseWebView(Context context)
    {
        super(context);
        init();
    }

    public BaseWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public BaseWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void init()
    {
        setLayerType(1, null);
        WebSettings websettings = getSettings();
        websettings.setLoadWithOverviewMode(true);
        websettings.setUseWideViewPort(true);
        websettings.setJavaScriptEnabled(true);
        websettings.setJavaScriptCanOpenWindowsAutomatically(true);
        setHorizontalScrollBarEnabled(false);
        setOnTouchListener(mOnTouchListener);
        setWebChromeClient(mWebChromeClient);
        setWebViewClient(mWebViewClient);
    }

    protected boolean isCloseButtonMatched(String s)
    {
        if (s != null && !s.isEmpty())
        {
            return ICFLIX_CLOSE_BUTTON.equals(s);
        } else
        {
            return false;
        }
    }

    protected boolean isRedirectUrlMatched(String s)
    {
        if (s != null && !s.isEmpty())
        {
            return s.contains(UserApi.getInstance().getRedirectUrl());
        } else
        {
            return false;
        }
    }

    public void load(String s)
    {
        mPageUrl = s;
        if (LOG)
        {
            MauLog.v("[BaseWebView]::[initAndLoad]::[authWebPageUrl: %s]", new Object[] {
                mPageUrl
            });
        }
        loadUrl(mPageUrl);
    }

    protected abstract void onProgressChanged(WebView webview, int i);

    protected abstract void onReceivedError(WebView webview, int i, String s, String s1);

    public void setGACookie(int i, int j, boolean flag, String s)
    {
        CookieManager cookiemanager = CookieManager.getInstance();
        cookiemanager.setAcceptCookie(true);
        s = new BasicClientCookie("_ga", String.format("GA%d.%d.%s.%d", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j), s, Long.valueOf((new Date()).getTime())
        }));
        s.setPath("/");
        String s1 = (new StringBuilder()).append(s.getName()).append("=").append(s.getValue()).toString();
        if (flag)
        {
            s = ".showmax.io";
        } else
        {
            s = ".showmax.com";
        }
        cookiemanager.setCookie(s, s1);
        if (android.os.Build.VERSION.SDK_INT < 21)
        {
            CookieSyncManager.createInstance(getContext()).sync();
        }
    }

    protected abstract boolean shouldOverrideUrlLoading(WebView webview, String s);

}
