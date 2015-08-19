// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.content.Context;
import android.content.Intent;
import android.net.MailTo;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.lib.api.ui.widget:
//            BaseWebView

class this._cls0 extends WebViewClient
{

    final BaseWebView this$0;

    public Intent getEmailIntent(Context context, String s, String s1, String s2, String s3)
    {
        context = new Intent("android.intent.action.SEND");
        context.putExtra("android.intent.extra.EMAIL", new String[] {
            s
        });
        context.putExtra("android.intent.extra.TEXT", s2);
        context.putExtra("android.intent.extra.SUBJECT", s1);
        context.putExtra("android.intent.extra.CC", s3);
        context.setType("message/rfc822");
        return context;
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

    ()
    {
        this$0 = BaseWebView.this;
        super();
    }
}
