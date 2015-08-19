// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.graphics.Bitmap;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ar, ja, az, as

final class au extends WebViewClient
{

    final ar a;

    private au(ar ar1)
    {
        a = ar1;
        super();
    }

    au(ar ar1, as as)
    {
        this(ar1);
    }

    public void onPageFinished(WebView webview, String s)
    {
        ja.a(3, ar.a(a), (new StringBuilder()).append("onPageFinished: url = ").append(s).toString());
        if (s == null || webview == null || webview != ar.b(a))
        {
            return;
        } else
        {
            ar.a(a, false);
            return;
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        ja.a(3, ar.a(a), (new StringBuilder()).append("onPageStarted: url = ").append(s).toString());
        if (s == null || webview == null || webview != ar.b(a))
        {
            return;
        }
        if (ar.d(a))
        {
            boolean flag = false;
            if (ar.c(a) != null)
            {
                flag = ar.c(a).a(a, s, ar.d(a));
            }
            if (flag)
            {
                webview.stopLoading();
            }
        }
        ar.a(a, true);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        ja.a(3, ar.a(a), (new StringBuilder()).append("shouldOverrideUrlLoading: url = ").append(s).toString());
        if (s == null || webview == null || webview != ar.b(a))
        {
            return false;
        }
        boolean flag;
        if (ar.c(a) != null)
        {
            flag = ar.c(a).a(a, s, ar.d(a));
        } else
        {
            flag = false;
        }
        ar.a(a, false);
        return flag;
    }
}
