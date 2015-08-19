// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.ui.widget;

import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.mautilus.lib.common.util.MauLog;

// Referenced classes of package com.showmax.lib.api.ui.widget:
//            BaseWebView

class this._cls0 extends WebChromeClient
{

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

    ()
    {
        this$0 = BaseWebView.this;
        super();
    }
}
