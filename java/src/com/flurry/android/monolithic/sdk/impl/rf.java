// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.text.DateFormat;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qg, aen, rg, adk, 
//            adb, adj, qs, adz, 
//            yj, yi, yv, yh, 
//            qf, py, ye, rl, 
//            afm, qb, xg

public abstract class rf
    implements qg
{

    protected static final DateFormat d;
    protected rg e;
    protected HashMap f;
    protected boolean g;
    protected yh h;

    protected rf(qf qf, py py, ye ye, yh yh, rl rl, adk adk1, qs qs1)
    {
        e = new rg(qf, py, ye, rl, adk1, null, d, qs1);
        h = yh;
        g = true;
    }

    protected rf(rf rf1, rg rg1, yh yh)
    {
        e = rg1;
        h = yh;
        g = true;
        f = rf1.f;
    }

    public afm a(afm afm, Class class1)
    {
        return m().a(afm, class1);
    }

    public py a()
    {
        return e.b();
    }

    public abstract qb a(afm afm);

    public final Class a(Class class1)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return (Class)f.get(new adb(class1));
        }
    }

    public final afm b(Class class1)
    {
        return m().a(class1, (adj)null);
    }

    public abstract boolean b();

    public qb c(Class class1)
    {
        return a(b(class1));
    }

    public abstract boolean c();

    public final yj d(afm afm)
    {
        return e.f();
    }

    public yj d(xg xg, Class class1)
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
        return (yj)adz.b(class1, c());
    }

    public abstract boolean d();

    public ye e()
    {
        return e.c();
    }

    public yi e(xg xg, Class class1)
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
        return (yi)adz.b(class1, c());
    }

    public qf i()
    {
        return e.a();
    }

    public final rl j()
    {
        return e.d();
    }

    public final qs k()
    {
        return e.h();
    }

    public final yh l()
    {
        if (h == null)
        {
            h = new yv();
        }
        return h;
    }

    public final adk m()
    {
        return e.e();
    }

    public final DateFormat n()
    {
        return e.g();
    }

    static 
    {
        d = aen.f;
    }
}
