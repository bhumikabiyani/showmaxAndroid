// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qf, xh, adh, xq, 
//            xt, xw, xv, xu, 
//            afm, yb, rf, xz, 
//            qk, qg, qb, rq

public class xr extends qf
{

    protected static final xq a;
    protected static final xq b;
    protected static final xq c;
    protected static final xq d;
    public static final xt e = new xt(null);
    public static final xw f = new xw();
    public static final xv g = new xv();
    protected static final xz h = new xu(null);
    public static final xr i = new xr();

    public xr()
    {
    }

    public qb a(qk qk, afm afm1, qg qg)
    {
        return c(qk, afm1, qg);
    }

    public qb a(rf rf1, afm afm1, qg qg)
    {
        return b(rf1, afm1, qg);
    }

    public qb a(rq rq, afm afm1, qg qg)
    {
        return b(rq, afm1, qg);
    }

    protected xq a(afm afm1)
    {
        afm1 = afm1.p();
        if (afm1 == java/lang/String)
        {
            return a;
        }
        if (afm1 == Boolean.TYPE)
        {
            return b;
        }
        if (afm1 == Integer.TYPE)
        {
            return c;
        }
        if (afm1 == Long.TYPE)
        {
            return d;
        } else
        {
            return null;
        }
    }

    public yb a(rf rf1, afm afm1, qg qg, boolean flag)
    {
        qg = c(rf1, afm1, qg);
        qg.a(h);
        qg.n();
        return a(rf1, ((xh) (qg)), afm1, flag).k();
    }

    protected yb a(rf rf1, xh xh1, afm afm1, boolean flag)
    {
        return new yb(rf1, flag, afm1, xh1);
    }

    public qb b(qk qk, afm afm1, qg qg)
    {
        return d(qk, afm1, qg);
    }

    public xq b(rf rf1, afm afm1, qg qg)
    {
        boolean flag = rf1.b();
        py py = rf1.a();
        Class class1 = afm1.p();
        if (!flag)
        {
            py = null;
        }
        return xq.a(rf1, afm1, xh.a(class1, py, qg));
    }

    public xq b(rq rq, afm afm1, qg qg)
    {
        xq xq2 = a(afm1);
        xq xq1 = xq2;
        if (xq2 == null)
        {
            xq1 = xq.b(a(rq, afm1, qg, true));
        }
        return xq1;
    }

    public xh c(rf rf1, afm afm1, qg qg)
    {
        boolean flag = rf1.b();
        rf1 = rf1.a();
        afm1 = afm1.p();
        if (!flag)
        {
            rf1 = null;
        }
        rf1 = xh.a(afm1, rf1, qg);
        rf1.a(h);
        rf1.a(true);
        return rf1;
    }

    public xq c(qk qk, afm afm1, qg qg)
    {
        xq xq2 = a(afm1);
        xq xq1 = xq2;
        if (xq2 == null)
        {
            xq1 = xq.a(a(qk, afm1, qg, false));
        }
        return xq1;
    }

    public xq d(qk qk, afm afm1, qg qg)
    {
        xq xq2 = a(afm1);
        xq xq1 = xq2;
        if (xq2 == null)
        {
            xq1 = xq.a(a(qk, afm1, qg, false));
        }
        return xq1;
    }

    static 
    {
        xh xh1 = xh.b(java/lang/String, null, null);
        a = xq.a(null, adh.d(java/lang/String), xh1);
        xh1 = xh.b(Boolean.TYPE, null, null);
        b = xq.a(null, adh.d(Boolean.TYPE), xh1);
        xh1 = xh.b(Integer.TYPE, null, null);
        c = xq.a(null, adh.d(Integer.TYPE), xh1);
        xh1 = xh.b(Long.TYPE, null, null);
        d = xq.a(null, adh.d(Long.TYPE), xh1);
    }
}
