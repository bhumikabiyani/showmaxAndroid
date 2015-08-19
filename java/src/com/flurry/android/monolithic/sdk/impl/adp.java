// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashSet;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adq, adr, ads, adx, 
//            adv, adw, adu, adt

public final class adp
{

    adr a;
    ads b;
    adx c;
    adv d;
    adw e;
    adu f;
    adt g;

    public adp()
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = null;
        f = null;
        g = null;
    }

    public static HashSet a(Object aobj[])
    {
        HashSet hashset = new HashSet();
        if (aobj != null)
        {
            int j = aobj.length;
            for (int i = 0; i < j; i++)
            {
                hashset.add(aobj[i]);
            }

        }
        return hashset;
    }

    public static Iterable b(Object aobj[])
    {
        return new adq(aobj);
    }

    public adr a()
    {
        if (a == null)
        {
            a = new adr();
        }
        return a;
    }

    public ads b()
    {
        if (b == null)
        {
            b = new ads();
        }
        return b;
    }

    public adx c()
    {
        if (c == null)
        {
            c = new adx();
        }
        return c;
    }

    public adv d()
    {
        if (d == null)
        {
            d = new adv();
        }
        return d;
    }

    public adw e()
    {
        if (e == null)
        {
            e = new adw();
        }
        return e;
    }

    public adu f()
    {
        if (f == null)
        {
            f = new adu();
        }
        return f;
    }

    public adt g()
    {
        if (g == null)
        {
            g = new adt();
        }
        return g;
    }
}
