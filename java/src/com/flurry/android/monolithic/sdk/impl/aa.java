// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.ProgressDialog;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.util.Collections;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            o, ja, cp, je, 
//            bi, p

class aa extends WebViewClient
{

    final o a;

    private aa(o o1)
    {
        a = o1;
        super();
    }

    aa(o o1, p p)
    {
        this(o1);
    }

    public void onLoadResource(WebView webview, String s)
    {
        ja.a(3, o.a(a), (new StringBuilder()).append("onLoadResource: url = ").append(s).toString());
        super.onLoadResource(webview, s);
        if (s != null && webview != null && webview == o.b(a))
        {
            if (!s.equalsIgnoreCase(o.b(a).getUrl()))
            {
                o.c(a);
            }
            if (!o.d(a))
            {
                webview = Uri.parse(s).getLastPathSegment();
                if (webview != null && webview.equalsIgnoreCase("mraid.js"))
                {
                    o.a(a, true);
                    o.e(a);
                    if (o.f(a))
                    {
                        o.g(a);
                        o.h(a);
                        return;
                    }
                }
            }
        }
    }

    public void onPageFinished(WebView webview, String s)
    {
        ja.a(3, o.a(a), (new StringBuilder()).append("onPageFinished: url = ").append(s).toString());
        if (s != null && webview != null && webview == o.b(a))
        {
            o.c(a);
            o.k(a);
            if (o.l(a) != null && o.l(a).isShowing())
            {
                o.l(a).dismiss();
            }
            if (!a.a(o.b(a)) && (a.getCurrentBinding() == 2 || a.getCurrentBinding() == 1))
            {
                ja.a(3, o.a(a), "adding WebView to AdUnityView");
                a.addView(o.b(a));
            }
            o.b(a, true);
            if (o.d(a))
            {
                o.g(a);
                o.h(a);
                return;
            }
        }
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        ja.a(3, o.a(a), (new StringBuilder()).append("onPageStarted: url = ").append(s).toString());
        if (s == null || webview == null || webview != o.b(a))
        {
            return;
        } else
        {
            o.i(a);
            o.j(a);
            o.b(a, false);
            o.a(a, false);
            return;
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        if (o.l(a) != null && o.l(a).isShowing())
        {
            o.l(a).dismiss();
        }
        a.a("renderFailed", Collections.emptyMap(), a.d, a.c, a.e, 0);
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        ja.a(3, o.a(a), (new StringBuilder()).append("shouldOverrideUrlLoading: url = ").append(s).toString());
        if (s == null || webview == null || webview != o.b(a))
        {
            return false;
        }
        String s1 = cp.b(o.b(a).getUrl());
        webview = s;
        if (!TextUtils.isEmpty(s1))
        {
            webview = s;
            if (s.startsWith(s1))
            {
                s1 = s.substring(s1.length());
                Uri uri = Uri.parse(s1);
                webview = s;
                if (uri.isHierarchical())
                {
                    webview = s;
                    if (!TextUtils.isEmpty(uri.getScheme()))
                    {
                        webview = s;
                        if (!TextUtils.isEmpty(uri.getAuthority()))
                        {
                            ja.a(3, o.a(a), (new StringBuilder()).append("shouldOverrideUrlLoading: target url = ").append(s1).toString());
                            webview = s1;
                        }
                    }
                }
            }
        }
        s = Uri.parse(webview);
        if (s.getScheme() != null && s.getScheme().equals("flurry"))
        {
            webview = s.getQueryParameter("event");
            if (webview != null)
            {
                o.m(a).add(webview);
                s = je.f(s.getEncodedQuery());
                if (s.containsKey("guid"))
                {
                    com.flurry.android.impl.ads.avro.protocol.v6.AdUnit adunit = o.a(a, (String)s.get("guid"));
                    m m = o.b(a, (String)s.get("guid"));
                    if (adunit != null && m != null)
                    {
                        a.a(webview, s, adunit, m, 0, 0);
                    }
                } else
                {
                    a.a(webview, s, a.d, a.c, a.e, 0);
                }
            }
            return true;
        }
        a.a("clicked", Collections.emptyMap(), a.d, a.c, a.e, 0);
        if (a.d())
        {
            o.b(a).loadUrl(webview);
        } else
        {
            a.b.a().a(a.getContext(), webview, true, a.d);
        }
        return true;
    }
}
