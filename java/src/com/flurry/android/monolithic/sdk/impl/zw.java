// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.text.DateFormat;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ru, aai, acq, aav, 
//            abn, aat, aem, qw, 
//            aas, afm, rs, zx, 
//            qj, rp, rq, oz, 
//            rr, or, ra, oq, 
//            acr, qc

public class zw extends ru
{

    public static final ra d = new aai("Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)");
    public static final ra e = new acq();
    public static final ra f = new aav();
    protected final rs g;
    protected final aat h;
    protected final aem i;
    protected ra j;
    protected ra k;
    protected ra l;
    protected ra m;
    protected final aas n;
    protected DateFormat o;

    public zw()
    {
        super(null);
        j = f;
        l = abn.a;
        m = d;
        g = null;
        h = new aat();
        n = null;
        i = new aem();
    }

    protected zw(rq rq1, zw zw1, rs rs1)
    {
        super(rq1);
        j = f;
        l = abn.a;
        m = d;
        if (rq1 == null)
        {
            throw new NullPointerException();
        } else
        {
            g = rs1;
            h = zw1.h;
            j = zw1.j;
            k = zw1.k;
            l = zw1.l;
            m = zw1.m;
            i = zw1.i;
            n = h.a();
            return;
        }
    }

    public ra a(afm afm1, qc qc)
        throws qw
    {
        ra ra2 = n.b(afm1);
        ra ra1 = ra2;
        if (ra2 == null)
        {
            ra ra3 = h.a(afm1);
            ra1 = ra3;
            if (ra3 == null)
            {
                ra ra4 = c(afm1, qc);
                ra1 = ra4;
                if (ra4 == null)
                {
                    return a(afm1.p());
                }
            }
        }
        return a(ra1, qc);
    }

    public ra a(afm afm1, boolean flag, qc qc)
        throws qw
    {
        Object obj = n.a(afm1);
        if (obj == null)
        {
            ra ra1 = h.b(afm1);
            obj = ra1;
            if (ra1 == null)
            {
                obj = a(afm1, qc);
                qc = g.b(b, afm1, qc);
                if (qc != null)
                {
                    qc = new zx(qc, ((ra) (obj)));
                } else
                {
                    qc = ((qc) (obj));
                }
                obj = qc;
                if (flag)
                {
                    h.a(afm1, qc);
                    return qc;
                }
            }
        }
        return ((ra) (obj));
    }

    protected ra a(ra ra1, qc qc)
        throws qw
    {
        if (!(ra1 instanceof qj))
        {
            return ra1;
        }
        qc = ((qj)ra1).a(b, qc);
        if (qc != ra1)
        {
            ra1 = qc;
            if (qc instanceof rp)
            {
                ((rp)qc).a(this);
                ra1 = qc;
            }
        }
        return ra1;
    }

    public ra a(Class class1)
    {
        return j;
    }

    public ra a(Class class1, qc qc)
        throws qw
    {
        ra ra2 = n.b(class1);
        ra ra1 = ra2;
        if (ra2 == null)
        {
            ra ra3 = h.a(class1);
            ra1 = ra3;
            if (ra3 == null)
            {
                ra ra4 = h.a(b.b(class1));
                ra1 = ra4;
                if (ra4 == null)
                {
                    ra ra5 = b(class1, qc);
                    ra1 = ra5;
                    if (ra5 == null)
                    {
                        return a(class1);
                    }
                }
            }
        }
        return a(ra1, qc);
    }

    public ra a(Class class1, boolean flag, qc qc)
        throws qw
    {
        Object obj = n.a(class1);
        if (obj == null)
        {
            ra ra1 = h.b(class1);
            obj = ra1;
            if (ra1 == null)
            {
                obj = a(class1, qc);
                qc = g.b(b, b.b(class1), qc);
                if (qc != null)
                {
                    qc = new zx(qc, ((ra) (obj)));
                } else
                {
                    qc = ((qc) (obj));
                }
                obj = qc;
                if (flag)
                {
                    h.a(class1, qc);
                    return qc;
                }
            }
        }
        return ((ra) (obj));
    }

    protected zw a(rq rq1, rs rs1)
    {
        return new zw(rq1, this, rs1);
    }

    public final void a(long l1, or or1)
        throws IOException, oz
    {
        if (a(rr.q))
        {
            or1.a(l1);
            return;
        }
        if (o == null)
        {
            o = (DateFormat)b.n().clone();
        }
        or1.b(o.format(new Date(l1)));
    }

    protected void a(or or1, Object obj)
        throws IOException, oz
    {
        if (obj != null) goto _L2; else goto _L1
_L1:
        ra ra1;
        boolean flag;
        ra1 = d();
        flag = false;
_L4:
        ra ra2;
        boolean flag1;
        try
        {
            ra1.a(obj, or1, this);
        }
        // Misplaced declaration of an exception variable
        catch (or or1)
        {
            throw or1;
        }
        catch (Exception exception)
        {
            obj = exception.getMessage();
            or1 = ((or) (obj));
            if (obj == null)
            {
                or1 = (new StringBuilder()).append("[no message for ").append(exception.getClass().getName()).append("]").toString();
            }
            throw new qw(or1, exception);
        }
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        or1.e();
        return;
_L2:
        ra2 = a(obj.getClass(), true, null);
        flag1 = b.a(rr.j);
        flag = flag1;
        ra1 = ra2;
        if (flag1)
        {
            or1.d();
            or1.a(i.a(obj.getClass(), b));
            flag = flag1;
            ra1 = ra2;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final void a(rq rq1, or or1, Object obj, rs rs1)
        throws IOException, oq
    {
        if (rs1 == null)
        {
            throw new IllegalArgumentException("Can not pass null serializerFactory");
        }
        rq1 = a(rq1, rs1);
        if (rq1.getClass() != getClass())
        {
            throw new IllegalStateException((new StringBuilder()).append("Broken serializer provider: createInstance returned instance of type ").append(rq1.getClass()).append("; blueprint of type ").append(getClass()).toString());
        } else
        {
            rq1.a(or1, obj);
            return;
        }
    }

    public final void a(Date date, or or1)
        throws IOException, oz
    {
        if (a(rr.q))
        {
            or1.a(date.getTime());
            return;
        }
        if (o == null)
        {
            o = (DateFormat)b.n().clone();
        }
        or1.b(o.format(date));
    }

    public ra b(afm afm1, qc qc)
        throws qw
    {
        ra ra2 = g.c(b, afm1, qc);
        ra ra1 = ra2;
        if (ra2 == null)
        {
            if (k == null)
            {
                ra1 = acr.a(afm1);
            } else
            {
                ra1 = k;
            }
        }
        afm1 = ra1;
        if (ra1 instanceof qj)
        {
            afm1 = ((qj)ra1).a(b, qc);
        }
        return afm1;
    }

    protected ra b(Class class1, qc qc)
        throws qw
    {
        try
        {
            qc = d(b.b(class1), qc);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            throw new qw(class1.getMessage(), null, class1);
        }
        if (qc != null)
        {
            h.a(class1, qc, this);
        }
        return qc;
    }

    public void b(long l1, or or1)
        throws IOException, oz
    {
        if (a(rr.r))
        {
            or1.a(String.valueOf(l1));
            return;
        }
        if (o == null)
        {
            o = (DateFormat)b.n().clone();
        }
        or1.a(o.format(new Date(l1)));
    }

    public void b(Date date, or or1)
        throws IOException, oz
    {
        if (a(rr.r))
        {
            or1.a(String.valueOf(date.getTime()));
            return;
        }
        if (o == null)
        {
            o = (DateFormat)b.n().clone();
        }
        or1.a(o.format(date));
    }

    public ra c()
    {
        return m;
    }

    protected ra c(afm afm1, qc qc)
        throws qw
    {
        try
        {
            qc = d(afm1, qc);
        }
        // Misplaced declaration of an exception variable
        catch (afm afm1)
        {
            throw new qw(afm1.getMessage(), null, afm1);
        }
        if (qc != null)
        {
            h.a(afm1, qc, this);
        }
        return qc;
    }

    public ra d()
    {
        return l;
    }

    protected ra d(afm afm1, qc qc)
        throws qw
    {
        return g.a(b, afm1, qc);
    }

}
