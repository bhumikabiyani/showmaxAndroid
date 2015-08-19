// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.view.View;
import android.webkit.WebChromeClient;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ar, ja, aw, ba, 
//            as

final class at extends WebChromeClient
{

    final ar a;

    private at(ar ar1)
    {
        a = ar1;
        super();
    }

    at(ar ar1, as as)
    {
        this(ar1);
    }

    public void onHideCustomView()
    {
        ja.a(3, ar.a(a), "onHideCustomView()");
        if (ar.e(a) != null)
        {
            ar.e(a).a(a);
        }
        ar.b(a, false);
    }

    public void onShowCustomView(View view, int i, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        ja.a(3, ar.a(a), "onShowCustomView(14)");
        ar.b(a, true);
        if (ar.e(a) != null)
        {
            ar.e(a).a(a, view, i, new ba(a, customviewcallback));
        }
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        ja.a(3, ar.a(a), "onShowCustomView(7)");
        ar.b(a, true);
        if (ar.e(a) != null)
        {
            ar.e(a).a(a, view, new ba(a, customviewcallback));
        }
    }
}
