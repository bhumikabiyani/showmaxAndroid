// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ri, ql, aez, ya, 
//            qf, rr, qs, adz, 
//            qu, rc, th, ye, 
//            oo, aeg, py, yh, 
//            rl, adk, rg, afm, 
//            qb, xg, on

public class qk extends ri
{

    protected aeg a;
    protected final aez b;
    protected boolean c;

    public qk(qf qf1, py py, ye ye1, yh yh, rl rl, adk adk, qs qs1)
    {
        super(qf1, py, ye1, yh, rl, adk, qs1, d(com/flurry/android/monolithic/sdk/impl/ql));
        b = aez.a;
    }

    protected qk(qk qk1, rg rg)
    {
        super(qk1, rg, qk1.h);
        a = qk1.a;
        b = qk1.b;
        c = qk1.c;
    }

    private qk(qk qk1, HashMap hashmap, yh yh)
    {
        this(qk1, qk1.e);
        f = hashmap;
        h = yh;
    }

    public py a()
    {
        if (a(ql.a))
        {
            return super.a();
        } else
        {
            return ya.a;
        }
    }

    public qb a(afm afm)
    {
        return i().a(this, afm, this);
    }

    protected qk a(int i)
    {
        boolean flag;
        if ((rr.l.b() & i) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        return this;
    }

    public qk a(yh yh)
    {
        HashMap hashmap = f;
        g = true;
        return new qk(this, hashmap, yh);
    }

    public qu a(xg xg, Class class1)
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
        return (qu)adz.b(class1, c());
    }

    public boolean a(ql ql1)
    {
        return (i & ql1.b()) != 0;
    }

    public qb b(afm afm)
    {
        return i().a(this, afm, this);
    }

    public rc b(xg xg, Class class1)
    {
        qs qs1 = k();
        if (qs1 != null)
        {
            xg = qs1.b(this, xg, class1);
            if (xg != null)
            {
                return xg;
            }
        }
        return (rc)adz.b(class1, c());
    }

    public boolean b()
    {
        return a(ql.a);
    }

    public qb c(afm afm)
    {
        return i().b(this, afm, this);
    }

    public th c(xg xg, Class class1)
    {
        qs qs1 = k();
        if (qs1 != null)
        {
            xg = qs1.c(this, xg, class1);
            if (xg != null)
            {
                return xg;
            }
        }
        return (th)adz.b(class1, c());
    }

    public boolean c()
    {
        return a(ql.f);
    }

    public boolean d()
    {
        return c;
    }

    public ye e()
    {
        ye ye2 = super.e();
        ye ye1 = ye2;
        if (!a(ql.b))
        {
            ye1 = ye2.c(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        ye2 = ye1;
        if (!a(ql.c))
        {
            ye2 = ye1.d(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        ye1 = ye2;
        if (!a(ql.d))
        {
            ye1 = ye2.e(com.flurry.org.codehaus.jackson.annotate.JsonAutoDetect.Visibility.NONE);
        }
        return ye1;
    }

    public aeg f()
    {
        return a;
    }

    public on g()
    {
        return oo.a();
    }

    public final aez h()
    {
        return b;
    }
}
