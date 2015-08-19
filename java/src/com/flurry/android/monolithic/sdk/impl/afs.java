// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pd, aft, afu, oq, 
//            or, pf

public class afs
    implements pd
{

    protected pf a;
    protected pf b;
    protected boolean c;
    protected int d;

    public afs()
    {
        a = new aft();
        b = new afu();
        c = true;
        d = 0;
    }

    public void a(or or1)
        throws IOException, oq
    {
        or1.a(' ');
    }

    public void a(or or1, int i)
        throws IOException, oq
    {
        if (!b.a())
        {
            d = d - 1;
        }
        if (i > 0)
        {
            b.a(or1, d);
        } else
        {
            or1.a(' ');
        }
        or1.a('}');
    }

    public void b(or or1)
        throws IOException, oq
    {
        or1.a('{');
        if (!b.a())
        {
            d = d + 1;
        }
    }

    public void b(or or1, int i)
        throws IOException, oq
    {
        if (!a.a())
        {
            d = d - 1;
        }
        if (i > 0)
        {
            a.a(or1, d);
        } else
        {
            or1.a(' ');
        }
        or1.a(']');
    }

    public void c(or or1)
        throws IOException, oq
    {
        or1.a(',');
        b.a(or1, d);
    }

    public void d(or or1)
        throws IOException, oq
    {
        if (c)
        {
            or1.c(" : ");
            return;
        } else
        {
            or1.a(':');
            return;
        }
    }

    public void e(or or1)
        throws IOException, oq
    {
        if (!a.a())
        {
            d = d + 1;
        }
        or1.a('[');
    }

    public void f(or or1)
        throws IOException, oq
    {
        or1.a(',');
        a.a(or1, d);
    }

    public void g(or or1)
        throws IOException, oq
    {
        a.a(or1, d);
    }

    public void h(or or1)
        throws IOException, oq
    {
        b.a(or1, d);
    }
}
