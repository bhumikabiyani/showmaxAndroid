// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ax, ar

final class ba
    implements ax
{

    final ar a;
    private android.webkit.WebChromeClient.CustomViewCallback b;

    public ba(ar ar, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        a = ar;
        super();
        b = customviewcallback;
    }

    public void a()
    {
        if (b != null)
        {
            b.onCustomViewHidden();
        }
    }
}
