// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            em, ja

class ep
    implements Runnable
{

    final byte a[];
    final String b;
    final String c;
    final em d;

    ep(em em1, byte abyte0[], String s, String s1)
    {
        d = em1;
        a = abyte0;
        b = s;
        c = s1;
        super();
    }

    public void run()
    {
        em.a(d);
        try
        {
            d.b(a, b, c);
            return;
        }
        catch (Exception exception)
        {
            ja.a(6, em.d(), "storeData error", exception);
        }
    }
}
