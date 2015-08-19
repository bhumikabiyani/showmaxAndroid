// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pc, ou, adh, xr, 
//            xx, yf, rj, adk, 
//            zw, te, zi, op, 
//            rq, qk, oq, qw, 
//            ru, rr, or, oz, 
//            ow, aez, td, qu, 
//            qq, ov, qm, pb, 
//            pw, ql, qf, py, 
//            ye, afm, yh, qt, 
//            rs

public class rk extends pc
{

    protected static final qf a;
    protected static final py b = new xx();
    protected static final ye c = yf.a();
    private static final afm n = adh.d(com/flurry/android/monolithic/sdk/impl/ou);
    protected final op d;
    protected yh e;
    protected adk f;
    protected qt g;
    protected rq h;
    protected ru i;
    protected rs j;
    protected qk k;
    protected qq l;
    protected final ConcurrentHashMap m;

    public rk()
    {
        this(null, null, null);
    }

    public rk(op op1)
    {
        this(op1, null, null);
    }

    public rk(op op1, ru ru1, qq qq1)
    {
        this(op1, ru1, qq1, null, null);
    }

    public rk(op op1, ru ru1, qq qq1, rq rq1, qk qk1)
    {
        m = new ConcurrentHashMap(64, 0.6F, 2);
        if (op1 == null)
        {
            d = new rj(this);
        } else
        {
            d = op1;
            if (op1.a() == null)
            {
                d.a(this);
            }
        }
        f = adk.a();
        if (rq1 == null)
        {
            rq1 = new rq(a, b, c, null, null, f, null);
        }
        h = rq1;
        if (qk1 == null)
        {
            qk1 = new qk(a, b, c, null, null, f, null);
        }
        k = qk1;
        op1 = ru1;
        if (ru1 == null)
        {
            op1 = new zw();
        }
        i = op1;
        op1 = qq1;
        if (qq1 == null)
        {
            op1 = new te();
        }
        l = op1;
        j = zi.e;
    }

    private final void a(or or1, Object obj, rq rq1)
        throws IOException, oq, qw
    {
        Closeable closeable = (Closeable)obj;
        i.a(rq1, or1, obj, j);
        if (rq1.a(rr.p))
        {
            or1.g();
        }
        obj = null;
        closeable.close();
        if (true)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        throw new NullPointerException();
        return;
        or1;
        obj = closeable;
_L2:
        if (obj != null)
        {
            try
            {
                ((Closeable) (obj)).close();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj) { }
        }
        throw or1;
        or1;
        return;
        or1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public ou a(ow ow1)
        throws IOException, oz
    {
        Object obj = b();
        if (ow1.e() == null && ow1.b() == null)
        {
            ow1 = null;
        } else
        {
            obj = (ou)a(((qk) (obj)), ow1, n);
            ow1 = ((ow) (obj));
            if (obj == null)
            {
                return c().a();
            }
        }
        return ow1;
    }

    protected qm a(ow ow1, qk qk1)
    {
        return new td(qk1, ow1, l, g);
    }

    protected qu a(qk qk1, afm afm)
        throws qw
    {
        qu qu1 = (qu)m.get(afm);
        if (qu1 != null)
        {
            return qu1;
        }
        qk1 = l.b(qk1, afm, null);
        if (qk1 == null)
        {
            throw new qw((new StringBuilder()).append("Can not find a deserializer for type ").append(afm).toString());
        } else
        {
            m.put(afm, qk1);
            return qk1;
        }
    }

    public rq a()
    {
        return h.a(e);
    }

    protected Object a(ow ow1, afm afm, qm qm1, qu qu1)
        throws IOException, ov, qw
    {
        pw pw1 = l.a(qm1.a(), afm);
        if (ow1.e() != pb.b)
        {
            throw qw.a(ow1, (new StringBuilder()).append("Current token not START_OBJECT (needed to unwrap root name '").append(pw1).append("'), but ").append(ow1.e()).toString());
        }
        if (ow1.b() != pb.f)
        {
            throw qw.a(ow1, (new StringBuilder()).append("Current token not FIELD_NAME (to contain expected root name '").append(pw1).append("'), but ").append(ow1.e()).toString());
        }
        String s = ow1.g();
        if (!pw1.a().equals(s))
        {
            throw qw.a(ow1, (new StringBuilder()).append("Root name '").append(s).append("' does not match expected ('").append(pw1).append("') for type ").append(afm).toString());
        }
        ow1.b();
        afm = ((afm) (qu1.a(ow1, qm1)));
        if (ow1.b() != pb.c)
        {
            throw qw.a(ow1, (new StringBuilder()).append("Current token not END_OBJECT (to match wrapper object with root name '").append(pw1).append("'), but ").append(ow1.e()).toString());
        } else
        {
            return afm;
        }
    }

    protected Object a(qk qk1, ow ow1, afm afm)
        throws IOException, ov, qw
    {
        pb pb1 = b(ow1);
        if (pb1 == pb.m)
        {
            qk1 = ((qk) (a(qk1, afm).b()));
        } else
        if (pb1 == pb.e || pb1 == pb.c)
        {
            qk1 = null;
        } else
        {
            qm qm1 = a(ow1, qk1);
            qu qu1 = a(qk1, afm);
            if (qk1.a(ql.p))
            {
                qk1 = ((qk) (a(ow1, afm, qm1, qu1)));
            } else
            {
                qk1 = ((qk) (qu1.a(ow1, qm1)));
            }
        }
        ow1.f();
        return qk1;
    }

    public void a(or or1, ou ou1)
        throws IOException, oz
    {
        rq rq1 = a();
        i.a(rq1, or1, ou1, j);
        if (rq1.a(rr.p))
        {
            or1.g();
        }
    }

    public void a(or or1, Object obj)
        throws IOException, oq, qw
    {
        rq rq1 = a();
        if (rq1.a(rr.o) && (obj instanceof Closeable))
        {
            a(or1, obj, rq1);
        } else
        {
            i.a(rq1, or1, obj, j);
            if (rq1.a(rr.p))
            {
                or1.g();
                return;
            }
        }
    }

    protected pb b(ow ow1)
        throws IOException, ov, qw
    {
        pb pb1 = ow1.e();
        Object obj = pb1;
        if (pb1 == null)
        {
            ow1 = ow1.b();
            obj = ow1;
            if (ow1 == null)
            {
                throw new EOFException("No content to map to Object due to end of input");
            }
        }
        return ((pb) (obj));
    }

    public qk b()
    {
        return k.a(e).a(h.i);
    }

    public aez c()
    {
        return k.h();
    }

    static 
    {
        a = xr.i;
    }
}
