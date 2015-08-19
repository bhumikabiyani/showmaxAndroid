// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import com.flurry.android.impl.ads.avro.protocol.v6.AdUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, bi, ja

class bl extends jf
{

    final String a;
    final Context b;
    final boolean c;
    final AdUnit d;
    final bi e;

    bl(bi bi1, String s, Context context, boolean flag, AdUnit adunit)
    {
        e = bi1;
        a = s;
        b = context;
        c = flag;
        d = adunit;
        super();
    }

    public void a()
    {
        String s = e.b(a);
        if (s != null)
        {
            e.a(b, s, c, d);
            return;
        } else
        {
            ja.a(5, bi.d(), (new StringBuilder()).append("Redirect URL could not be found for: ").append(a).toString());
            return;
        }
    }
}
