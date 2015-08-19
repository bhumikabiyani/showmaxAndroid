// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            tt, tv, tu, sw, 
//            qm, ow, ts, sv

public final class tw
{

    final ow a;
    final qm b;
    final Object c[];
    private int d;
    private ts e;

    public tw(ow ow, qm qm1, int i)
    {
        a = ow;
        b = qm1;
        d = i;
        c = new Object[i];
    }

    protected ts a()
    {
        return e;
    }

    public void a(sv sv, String s, Object obj)
    {
        e = new tt(e, obj, sv, s);
    }

    public void a(sw sw1, Object obj)
    {
        e = new tv(e, obj, sw1);
    }

    public void a(Object obj, Object obj1)
    {
        e = new tu(e, obj1, obj);
    }

    public void a(sw asw[])
    {
        int i = 0;
        for (int j = asw.length; i < j; i++)
        {
            sw sw1 = asw[i];
            if (sw1 != null)
            {
                c[i] = b.a(sw1.k(), sw1, null);
            }
        }

    }

    public boolean a(int i, Object obj)
    {
        c[i] = obj;
        i = d - 1;
        d = i;
        return i <= 0;
    }

    protected final Object[] a(Object aobj[])
    {
        if (aobj != null)
        {
            int i = 0;
            for (int j = c.length; i < j; i++)
            {
                if (c[i] != null)
                {
                    continue;
                }
                Object obj = aobj[i];
                if (obj != null)
                {
                    c[i] = obj;
                }
            }

        }
        return c;
    }
}
