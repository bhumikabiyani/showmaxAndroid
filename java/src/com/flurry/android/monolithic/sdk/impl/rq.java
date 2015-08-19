// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ri, rr, py, qf, 
//            qs, adz, ra, ye, 
//            sf, zl, yh, rl, 
//            adk, rg, afm, qb, 
//            xg

public class rq extends ri
{

    protected sf a;
    protected Class b;
    protected zl c;

    public rq(qf qf1, py py1, ye ye1, yh yh, rl rl, adk adk, qs qs1)
    {
        super(qf1, py1, ye1, yh, rl, adk, qs1, d(com/flurry/android/monolithic/sdk/impl/rr));
        a = null;
        c = null;
    }

    protected rq(rq rq1, rg rg)
    {
        super(rq1, rg, rq1.h);
        a = null;
        a = rq1.a;
        b = rq1.b;
        c = rq1.c;
    }

    protected rq(rq rq1, HashMap hashmap, yh yh)
    {
        this(rq1, rq1.e);
        f = hashmap;
        h = yh;
    }

    public py a()
    {
        if (a(rr.a))
        {
            return super.a();
        } else
        {
            return py.a();
        }
    }

    public qb a(afm afm)
    {
        return i().a(this, afm, this);
    }

    public ra a(xg xg, Class class1)
    {
        qs qs1 = k();
        if (qs1 != null)
        {
            xg = qs1.a(this, xg, class1);
            if (xg != null)
            {
                return xg;
            }
        }
        return (ra)adz.b(class1, c());
    }

    public rq a(yh yh)
    {
        HashMap hashmap = f;
        g = true;
        return new rq(this, hashmap, yh);
    }

    public boolean a(rr rr1)
    {
        return (i & rr1.b()) != 0;
    }

    public qb b(afm afm)
    {
        return i().a(this, afm, this);
    }

    public boolean b()
    {
        return a(rr.a);
    }

    public boolean c()
    {
        return a(rr.e);
    }

    public boolean d()
    {
        return a(rr.l);
    }

    public ye e()
    {
        ye ye2 = super.e();
        ye ye1 = ye2;
        if (!a(rr.b))
        {
            ye1 = ye2.a(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        ye2 = ye1;
        if (!a(rr.c))
        {
            ye2 = ye1.b(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        ye1 = ye2;
        if (!a(rr.d))
        {
            ye1 = ye2.e(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        return ye1;
    }

    public Class f()
    {
        return b;
    }

    public sf g()
    {
        if (a != null)
        {
            return a;
        }
        if (a(rr.g))
        {
            return sf.a;
        } else
        {
            return sf.b;
        }
    }

    public zl h()
    {
        return c;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[SerializationConfig: flags=0x").append(Integer.toHexString(i)).append("]").toString();
    }
}
