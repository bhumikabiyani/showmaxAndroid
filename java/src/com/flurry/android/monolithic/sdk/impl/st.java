// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qp, re, su, px, 
//            ti, ss, adp, qr

public class st extends qp
{

    protected static final re a[] = new re[0];
    protected static final su b[] = new su[0];
    protected static final px c[] = new px[0];
    protected static final ti d[] = new ti[0];
    protected final qr e[];
    protected final re f[];
    protected final su g[];
    protected final px h[];
    protected final ti i[];

    public st()
    {
        this(null, null, null, null, null);
    }

    protected st(qr aqr[], re are[], su asu[], px apx[], ti ati[])
    {
        qr aqr1[] = aqr;
        if (aqr == null)
        {
            aqr1 = ss.a();
        }
        e = aqr1;
        aqr = are;
        if (are == null)
        {
            aqr = a;
        }
        f = aqr;
        aqr = asu;
        if (asu == null)
        {
            aqr = b;
        }
        g = aqr;
        aqr = apx;
        if (apx == null)
        {
            aqr = c;
        }
        h = aqr;
        aqr = ati;
        if (ati == null)
        {
            aqr = d;
        }
        i = aqr;
    }

    public Iterable a()
    {
        return adp.b(e);
    }

    public Iterable b()
    {
        return adp.b(f);
    }

    public Iterable c()
    {
        return adp.b(g);
    }

    public Iterable d()
    {
        return adp.b(h);
    }

    public Iterable e()
    {
        return adp.b(i);
    }

    public boolean f()
    {
        return f.length > 0;
    }

    public boolean g()
    {
        return g.length > 0;
    }

    public boolean h()
    {
        return h.length > 0;
    }

    public boolean i()
    {
        return i.length > 0;
    }

}
