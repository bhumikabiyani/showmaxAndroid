// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Member;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ww, xq, xo, adj, 
//            adz, tn, xi, qk, 
//            th

public class tm
{

    final xq a;
    final boolean b;
    protected xi c;
    protected xo d;
    protected xo e;
    protected xo f;
    protected xo g;
    protected xo h;
    protected xo i;
    protected xo j;
    protected tn k[];

    public tm(xq xq1, boolean flag)
    {
        k = null;
        a = xq1;
        b = flag;
    }

    public th a(qk qk)
    {
        ww ww1 = new ww(qk, a.a());
        if (i == null)
        {
            qk = null;
        } else
        {
            qk = a.j().a(i.b(0));
        }
        ww1.a(c, i, qk, j, k);
        ww1.a(d);
        ww1.b(e);
        ww1.c(f);
        ww1.d(g);
        ww1.e(h);
        return ww1;
    }

    protected xo a(xo xo1, xo xo2, String s)
    {
        if (xo2 != null && xo2.getClass() == xo1.getClass())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Conflicting ").append(s).append(" creators: already had ").append(xo2).append(", encountered ").append(xo1).toString());
        }
        if (b)
        {
            adz.a((Member)xo1.a());
        }
        return xo1;
    }

    public void a(xi xi)
    {
        c = xi;
    }

    public void a(xo xo1)
    {
        d = a(xo1, d, "String");
    }

    public void a(xo xo1, tn atn[])
    {
        j = a(xo1, j, "property-based");
        if (atn.length > 1)
        {
            xo1 = new HashMap();
            int i1 = atn.length;
            for (int l = 0; l < i1; l++)
            {
                String s = atn[l].c();
                Integer integer = (Integer)xo1.put(s, Integer.valueOf(l));
                if (integer != null)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Duplicate creator property \"").append(s).append("\" (index ").append(integer).append(" vs ").append(l).append(")").toString());
                }
            }

        }
        k = atn;
    }

    public void b(xo xo1)
    {
        e = a(xo1, e, "int");
    }

    public void c(xo xo1)
    {
        f = a(xo1, f, "long");
    }

    public void d(xo xo1)
    {
        g = a(xo1, g, "double");
    }

    public void e(xo xo1)
    {
        h = a(xo1, h, "boolean");
    }

    public void f(xo xo1)
    {
        i = a(xo1, i, "delegate");
    }
}
