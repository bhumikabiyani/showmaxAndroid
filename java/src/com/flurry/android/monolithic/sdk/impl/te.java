// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qq, ss, aem, qw, 
//            qu, qh, ro, afm, 
//            adz, qo, tf, qi, 
//            sp, ql, qk, xh, 
//            py, ada, adf, adg, 
//            adc, add, ou, pw, 
//            qc, rc

public class te extends qq
{

    protected final ConcurrentHashMap a;
    protected final HashMap b;
    protected final aem c;
    protected qo d;

    public te()
    {
        this(((qo) (ss.h)));
    }

    public te(qo qo1)
    {
        a = new ConcurrentHashMap(64, 0.75F, 2);
        b = new HashMap(8);
        d = qo1;
        c = new aem();
    }

    public pw a(qk qk1, afm afm1)
        throws qw
    {
        return c.a(afm1, qk1);
    }

    protected qu a(afm afm1)
    {
        if (afm1 == null)
        {
            throw new IllegalArgumentException();
        } else
        {
            return (qu)a.get(afm1);
        }
    }

    public qu a(qk qk1, afm afm1, qc qc)
        throws qw
    {
        qu qu1 = a(afm1);
        if (qu1 != null)
        {
            afm1 = qu1;
            if (qu1 instanceof qh)
            {
                afm1 = ((qh)qu1).a(qk1, qc);
            }
        } else
        {
            qu qu3 = d(qk1, afm1, qc);
            qu qu2 = qu3;
            if (qu3 == null)
            {
                qu2 = b(afm1);
            }
            afm1 = qu2;
            if (qu2 instanceof qh)
            {
                return ((qh)qu2).a(qk1, qc);
            }
        }
        return afm1;
    }

    protected void a(qk qk1, ro ro1)
        throws qw
    {
        ro1.a(qk1, this);
    }

    protected qu b(afm afm1)
        throws qw
    {
        if (!adz.d(afm1.p()))
        {
            throw new qw((new StringBuilder()).append("Can not find a Value deserializer for abstract type ").append(afm1).toString());
        } else
        {
            throw new qw((new StringBuilder()).append("Can not find a Value deserializer for type ").append(afm1).toString());
        }
    }

    public qu b(qk qk1, afm afm1, qc qc)
        throws qw
    {
        qu qu1 = a(qk1, afm1, qc);
        qk1 = d.b(qk1, afm1, qc);
        if (qk1 != null)
        {
            return new tf(qk1, qu1);
        } else
        {
            return qu1;
        }
    }

    protected rc c(afm afm1)
        throws qw
    {
        throw new qw((new StringBuilder()).append("Can not find a (Map) Key deserializer for type ").append(afm1).toString());
    }

    public rc c(qk qk1, afm afm1, qc qc)
        throws qw
    {
        rc rc1 = d.a(qk1, afm1, qc);
        rc rc = rc1;
        if (rc1 instanceof qi)
        {
            rc = ((qi)rc1).a(qk1, qc);
        }
        qk1 = rc;
        if (rc == null)
        {
            qk1 = c(afm1);
        }
        return qk1;
    }

    protected qu d(qk qk1, afm afm1, qc qc)
        throws qw
    {
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        qu qu1 = a(afm1);
        if (qu1 == null)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return qu1;
        int i = b.size();
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        qu1 = (qu)b.get(afm1);
        if (qu1 == null)
        {
            break MISSING_BLOCK_LABEL_71;
        }
        hashmap;
        JVM INSTR monitorexit ;
        return qu1;
        qk1;
        hashmap;
        JVM INSTR monitorexit ;
        throw qk1;
        qk1 = e(qk1, afm1, qc);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        if (b.size() > 0)
        {
            b.clear();
        }
        hashmap;
        JVM INSTR monitorexit ;
        return qk1;
        qk1;
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        if (b.size() > 0)
        {
            b.clear();
        }
        throw qk1;
    }

    protected qu e(qk qk1, afm afm1, qc qc)
        throws qw
    {
        try
        {
            qc = f(qk1, afm1, qc);
        }
        // Misplaced declaration of an exception variable
        catch (qk qk1)
        {
            throw new qw(qk1.getMessage(), null, qk1);
        }
        if (qc == null)
        {
            qk1 = null;
        } else
        {
            boolean flag2 = qc instanceof ro;
            boolean flag;
            boolean flag1;
            if (qc.getClass() == com/flurry/android/monolithic/sdk/impl/sp)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            flag1 = flag;
            if (!flag)
            {
                flag1 = flag;
                if (qk1.a(ql.a))
                {
                    Object obj = qk1.a();
                    obj = ((py) (obj)).a(xh.a(qc.getClass(), ((py) (obj)), null));
                    flag1 = flag;
                    if (obj != null)
                    {
                        flag1 = ((Boolean) (obj)).booleanValue();
                    }
                }
            }
            if (flag2)
            {
                b.put(afm1, qc);
                a(qk1, (ro)qc);
                b.remove(afm1);
            }
            qk1 = qc;
            if (flag1)
            {
                a.put(afm1, qc);
                return qc;
            }
        }
        return qk1;
    }

    protected qu f(qk qk1, afm afm1, qc qc)
        throws qw
    {
        if (afm1.r())
        {
            return d.b(qk1, this, afm1, qc);
        }
        if (afm1.f())
        {
            if (afm1.b())
            {
                return d.a(qk1, this, (ada)afm1, qc);
            }
            if (afm1.j())
            {
                afm1 = (adf)afm1;
                if (afm1.l())
                {
                    return d.a(qk1, this, (adg)afm1, qc);
                } else
                {
                    return d.a(qk1, this, afm1, qc);
                }
            }
            if (afm1.i())
            {
                afm1 = (adc)afm1;
                if (afm1.a_())
                {
                    return d.a(qk1, this, (add)afm1, qc);
                } else
                {
                    return d.a(qk1, this, afm1, qc);
                }
            }
        }
        if (com/flurry/android/monolithic/sdk/impl/ou.isAssignableFrom(afm1.p()))
        {
            return d.c(qk1, this, afm1, qc);
        } else
        {
            return d.a(qk1, this, afm1, qc);
        }
    }
}
