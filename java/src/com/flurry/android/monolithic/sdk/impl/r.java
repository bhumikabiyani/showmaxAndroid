// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.webkit.WebView;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, p, o

class r extends jf
{

    final p a;

    r(p p1)
    {
        a = p1;
        super();
    }

    public void a()
    {
        if (o.b(a.b) != null)
        {
            o.b(a.b).loadUrl(a.a);
        }
    }
}
