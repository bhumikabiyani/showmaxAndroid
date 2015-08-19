// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            so, st, qw, qk, 
//            xq, afm, xl, py, 
//            adz, wu, qp, qr, 
//            th, sm, sr, su, 
//            re, rc, ql, adj, 
//            qd, sv, xj, sx, 
//            rw, sw, pz, ta, 
//            ti, xn, adk, tn, 
//            adp, qe, xi, ye, 
//            tm, px, sp, wz, 
//            tc, xk, qc, ada, 
//            qq, qu, adc, add, 
//            adf, adg

public class ss extends so
{

    public static final ss h = new ss(null);
    private static final Class j[] = {
        java/lang/Throwable
    };
    protected final qp i;

    public ss()
    {
        this(null);
    }

    public ss(qp qp1)
    {
        Object obj = qp1;
        if (qp1 == null)
        {
            obj = new st();
        }
        i = ((qp) (obj));
    }

    static qr[] a()
    {
        return a;
    }

    private rc c(qk qk1, afm afm1, qc qc)
        throws qw
    {
        Object obj = (xq)qk1.b(afm1);
        afm1 = afm1.p();
        qc = a(afm1, qk1);
        for (obj = ((xq) (obj)).o().iterator(); ((Iterator) (obj)).hasNext();)
        {
            xl xl1 = (xl)((Iterator) (obj)).next();
            if (qk1.a().k(xl1))
            {
                if (xl1.f() == 1 && xl1.d().isAssignableFrom(afm1))
                {
                    if (xl1.b(0) != java/lang/String)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Parameter #0 type for factory method (").append(xl1).append(") not suitable, must be java.lang.String").toString());
                    }
                    if (qk1.c())
                    {
                        adz.a(xl1.i());
                    }
                    return wu.a(qc, xl1);
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Unsuitable method (").append(xl1).append(") decorated with @JsonCreator (for Enum type ").append(afm1.getName()).append(")").toString());
                }
            }
        }

        return wu.a(qc);
    }

    public afm a(qk qk1, afm afm1)
        throws qw
    {
        do
        {
            afm afm2 = b(qk1, afm1);
            if (afm2 == null)
            {
                return afm1;
            }
            Class class1 = afm1.p();
            Class class2 = afm2.p();
            if (class1 == class2 || !class1.isAssignableFrom(class2))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid abstract type resolution from ").append(afm1).append(" to ").append(afm2).append(": latter is not a subtype of former").toString());
            }
            afm1 = afm2;
        } while (true);
    }

    protected qu a(ada ada, qk qk1, qq qq, qc qc, rw rw1, qu qu)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu1 = ((qr)iterator.next()).a(ada, qk1, qq, qc, rw1, qu);
            if (qu1 != null)
            {
                return qu1;
            }
        }

        return null;
    }

    protected qu a(adc adc, qk qk1, qq qq, xq xq1, qc qc, rw rw1, qu qu)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu1 = ((qr)iterator.next()).a(adc, qk1, qq, xq1, qc, rw1, qu);
            if (qu1 != null)
            {
                return qu1;
            }
        }

        return null;
    }

    protected qu a(add add, qk qk1, qq qq, xq xq1, qc qc, rw rw1, qu qu)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu1 = ((qr)iterator.next()).a(add, qk1, qq, xq1, qc, rw1, qu);
            if (qu1 != null)
            {
                return qu1;
            }
        }

        return null;
    }

    protected qu a(adf adf, qk qk1, qq qq, xq xq1, qc qc, rc rc1, rw rw1, 
            qu qu)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu1 = ((qr)iterator.next()).a(adf, qk1, qq, xq1, qc, rc1, rw1, qu);
            if (qu1 != null)
            {
                return qu1;
            }
        }

        return null;
    }

    protected qu a(adg adg, qk qk1, qq qq, xq xq1, qc qc, rc rc1, rw rw1, 
            qu qu)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu1 = ((qr)iterator.next()).a(adg, qk1, qq, xq1, qc, rc1, rw1, qu);
            if (qu1 != null)
            {
                return qu1;
            }
        }

        return null;
    }

    protected qu a(afm afm1, qk qk1, qq qq, xq xq1, qc qc)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu = ((qr)iterator.next()).a(afm1, qk1, qq, xq1, qc);
            if (qu != null)
            {
                return qu;
            }
        }

        return null;
    }

    public qu a(qk qk1, afm afm1, xq xq1, qc qc)
        throws qw
    {
        Object obj = a(qk1, xq1);
        if (!afm1.c() || ((th) (obj)).b()) goto _L2; else goto _L1
_L1:
        qc = new sm(afm1);
_L4:
        return qc;
_L2:
label0:
        {
            afm1 = a(xq1);
            afm1.a(((th) (obj)));
            a(qk1, xq1, ((sr) (afm1)));
            b(qk1, xq1, afm1);
            c(qk1, xq1, afm1);
            if (i.g())
            {
                Iterator iterator = i.c().iterator();
                do
                {
                    obj = afm1;
                    if (!iterator.hasNext())
                    {
                        break;
                    }
                    afm1 = ((su)iterator.next()).a(qk1, xq1, afm1);
                } while (true);
            } else
            {
                obj = afm1;
            }
            afm1 = ((sr) (obj)).a(qc);
            if (!i.g())
            {
                break label0;
            }
            obj = i.c().iterator();
            do
            {
                qc = afm1;
                if (!((Iterator) (obj)).hasNext())
                {
                    break;
                }
                afm1 = ((su)((Iterator) (obj)).next()).a(qk1, xq1, afm1);
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        return afm1;
    }

    public qu a(qk qk1, qq qq, afm afm1, qc qc)
        throws qw
    {
        afm afm2 = afm1;
        if (afm1.c())
        {
            afm2 = a(qk1, afm1);
        }
        xq xq1 = (xq)qk1.b(afm2);
        afm1 = a(qk1, ((xg) (xq1.c())), qc);
        if (afm1 == null)
        {
            afm1 = a(qk1, ((xg) (xq1.c())), afm2, ((String) (null)));
            if (afm1.p() != afm2.p())
            {
                xq1 = (xq)qk1.b(afm1);
                afm2 = afm1;
            }
            qu qu = a(afm2, qk1, qq, xq1, qc);
            afm1 = qu;
            if (qu == null)
            {
                if (afm2.q())
                {
                    return b(qk1, afm2, xq1, qc);
                }
                if (afm2.c())
                {
                    afm1 = b(qk1, xq1);
                    if (afm1 != null)
                    {
                        return a(qk1, afm1, (xq)qk1.b(afm1), qc);
                    }
                }
                qq = d(qk1, qq, afm2, qc);
                afm1 = qq;
                if (qq == null)
                {
                    if (!a(afm2.p()))
                    {
                        return null;
                    } else
                    {
                        return a(qk1, afm2, xq1, qc);
                    }
                }
            }
        }
        return afm1;
    }

    protected qu a(Class class1, qk qk1, qc qc)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu = ((qr)iterator.next()).a(class1, qk1, qc);
            if (qu != null)
            {
                return qu;
            }
        }

        return null;
    }

    protected qu a(Class class1, qk qk1, xq xq1, qc qc)
        throws qw
    {
        for (Iterator iterator = i.a().iterator(); iterator.hasNext();)
        {
            qu qu = ((qr)iterator.next()).a(class1, qk1, xq1, qc);
            if (qu != null)
            {
                return qu;
            }
        }

        return null;
    }

    public rc a(qk qk1, afm afm1, qc qc)
        throws qw
    {
        if (!i.f()) goto _L2; else goto _L1
_L1:
        xq xq1;
        Iterator iterator;
        xq1 = (xq)qk1.c(afm1.p());
        iterator = i.b().iterator();
_L5:
        if (!iterator.hasNext()) goto _L2; else goto _L3
_L3:
        Object obj = ((re)iterator.next()).a(afm1, qk1, xq1, qc);
        if (obj == null) goto _L5; else goto _L4
_L4:
        return ((rc) (obj));
_L2:
        obj = afm1.p();
        if (obj == java/lang/String || obj == java/lang/Object)
        {
            return wu.a(qk1, afm1);
        }
        rc rc1 = (rc)c.get(afm1);
        obj = rc1;
        if (rc1 == null)
        {
            if (afm1.r())
            {
                return c(qk1, afm1, qc);
            } else
            {
                return wu.b(qk1, afm1);
            }
        }
        if (true) goto _L4; else goto _L6
_L6:
    }

    protected sr a(xq xq1)
    {
        return new sr(xq1);
    }

    protected sv a(qk qk1, xq xq1, xl xl1)
        throws qw
    {
        if (qk1.a(ql.f))
        {
            xl1.k();
        }
        Object obj = xq1.j().a(xl1.b(1));
        qd qd1 = new qd(xl1.b(), ((afm) (obj)), xq1.i(), xl1);
        xq1 = a(qk1, xq1, ((afm) (obj)), ((xk) (xl1)), ((qc) (qd1)));
        obj = a(qk1, ((xg) (xl1)), ((qc) (qd1)));
        if (obj != null)
        {
            return new sv(qd1, xl1, xq1, ((qu) (obj)));
        } else
        {
            return new sv(qd1, xl1, a(qk1, ((xg) (xl1)), ((afm) (xq1)), qd1.c()), null);
        }
    }

    protected sw a(qk qk1, xq xq1, String s, xj xj1)
        throws qw
    {
        if (qk1.a(ql.f))
        {
            xj1.k();
        }
        afm afm2 = xq1.j().a(xj1.c());
        Object obj1 = new qd(s, afm2, xq1.i(), xj1);
        afm afm1 = a(qk1, xq1, afm2, ((xk) (xj1)), ((qc) (obj1)));
        Object obj = obj1;
        if (afm1 != afm2)
        {
            obj = ((qd) (obj1)).a(afm1);
        }
        obj = a(qk1, ((xg) (xj1)), ((qc) (obj)));
        obj1 = a(qk1, ((xg) (xj1)), afm1, s);
        s = new sx(s, ((afm) (obj1)), (rw)((afm) (obj1)).o(), xq1.i(), xj1);
        xq1 = s;
        if (obj != null)
        {
            xq1 = s.a(((qu) (obj)));
        }
        qk1 = qk1.a().a(xj1);
        if (qk1 != null && qk1.b())
        {
            xq1.a(qk1.a());
        }
        return xq1;
    }

    protected sw a(qk qk1, xq xq1, String s, xl xl1)
        throws qw
    {
        if (qk1.a(ql.f))
        {
            xl1.k();
        }
        afm afm2 = xq1.j().a(xl1.b(0));
        Object obj1 = new qd(s, afm2, xq1.i(), xl1);
        afm afm1 = a(qk1, xq1, afm2, ((xk) (xl1)), ((qc) (obj1)));
        Object obj = obj1;
        if (afm1 != afm2)
        {
            obj = ((qd) (obj1)).a(afm1);
        }
        obj = a(qk1, ((xg) (xl1)), ((qc) (obj)));
        obj1 = a(qk1, ((xg) (xl1)), afm1, s);
        s = new ta(s, ((afm) (obj1)), (rw)((afm) (obj1)).o(), xq1.i(), xl1);
        xq1 = s;
        if (obj != null)
        {
            xq1 = s.a(((qu) (obj)));
        }
        qk1 = qk1.a().a(xl1);
        if (qk1 != null && qk1.b())
        {
            xq1.a(qk1.a());
        }
        return xq1;
    }

    public th a(qk qk1, xq xq1)
        throws qw
    {
        Object obj1;
label0:
        {
            Object obj = xq1.c();
            obj1 = qk1.a().j(((xh) (obj)));
            if (obj1 != null)
            {
                if (obj1 instanceof th)
                {
                    obj = (th)obj1;
                } else
                {
                    if (!(obj1 instanceof Class))
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Invalid value instantiator returned for type ").append(xq1).append(": neither a Class nor ValueInstantiator").toString());
                    }
                    obj1 = (Class)obj1;
                    if (!com/flurry/android/monolithic/sdk/impl/th.isAssignableFrom(((Class) (obj1))))
                    {
                        throw new IllegalStateException((new StringBuilder()).append("Invalid instantiator Class<?> returned for type ").append(xq1).append(": ").append(((Class) (obj1)).getName()).append(" not a ValueInstantiator").toString());
                    }
                    obj = qk1.c(((xg) (obj)), ((Class) (obj1)));
                }
            } else
            {
                obj = c(qk1, xq1);
            }
            if (i.i())
            {
                Iterator iterator = i.e().iterator();
                ti ti1;
                do
                {
                    obj1 = obj;
                    if (!iterator.hasNext())
                    {
                        break label0;
                    }
                    ti1 = (ti)iterator.next();
                    obj1 = ti1.a(qk1, xq1, ((th) (obj)));
                    obj = obj1;
                } while (obj1 != null);
                throw new qw((new StringBuilder()).append("Broken registered ValueInstantiators (of type ").append(ti1.getClass().getName()).append("): returned null ValueInstantiator").toString());
            }
            obj1 = obj;
        }
        return ((th) (obj1));
    }

    protected tn a(qk qk1, xq xq1, String s, int k, xn xn1, Object obj)
        throws qw
    {
        Object obj2 = qk1.m().a(xn1.e(), xq1.j());
        Object obj1 = new qd(s, ((afm) (obj2)), xq1.i(), xn1);
        afm afm1 = a(qk1, xq1, ((afm) (obj2)), ((xk) (xn1)), ((qc) (obj1)));
        qd qd1 = ((qd) (obj1));
        if (afm1 != obj2)
        {
            qd1 = ((qd) (obj1)).a(afm1);
        }
        obj2 = a(qk1, ((xg) (xn1)), ((qc) (qd1)));
        afm1 = a(qk1, ((xg) (xn1)), afm1, s);
        obj1 = (rw)afm1.o();
        if (obj1 == null)
        {
            qk1 = b(qk1, afm1, qd1);
        } else
        {
            qk1 = ((qk) (obj1));
        }
        xq1 = new tn(s, afm1, qk1, xq1.i(), xn1, k, obj);
        qk1 = xq1;
        if (obj2 != null)
        {
            qk1 = xq1.b(((qu) (obj2)));
        }
        return qk1;
    }

    protected void a(qk qk1, xq xq1, sr sr1)
        throws qw
    {
        List list = xq1.d();
        Object obj = qk1.a();
        Object obj1 = ((py) (obj)).d(xq1.c());
        if (obj1 != null)
        {
            sr1.a(((Boolean) (obj1)).booleanValue());
        }
        obj1 = adp.a(((py) (obj)).c(xq1.c()));
        for (obj = ((Set) (obj1)).iterator(); ((Iterator) (obj)).hasNext(); sr1.a((String)((Iterator) (obj)).next())) { }
        xl xl1 = xq1.l();
        if (xl1 == null)
        {
            obj = xq1.f();
        } else
        {
            obj = xq1.g();
        }
        if (obj != null)
        {
            for (obj = ((Collection) (obj)).iterator(); ((Iterator) (obj)).hasNext(); sr1.a((String)((Iterator) (obj)).next())) { }
        }
        obj = new HashMap();
        Iterator iterator1 = list.iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Object obj4 = (qe)iterator1.next();
            Object obj3 = ((qe) (obj4)).a();
            if (!((Set) (obj1)).contains(obj3))
            {
                if (((qe) (obj4)).e())
                {
                    sr1.a(((qe) (obj4)));
                } else
                if (((qe) (obj4)).c())
                {
                    obj4 = ((qe) (obj4)).h();
                    if (a(qk1, xq1, ((xl) (obj4)).a(0), ((Map) (obj))))
                    {
                        sr1.a(((String) (obj3)));
                    } else
                    {
                        obj3 = a(qk1, xq1, ((String) (obj3)), ((xl) (obj4)));
                        if (obj3 != null)
                        {
                            sr1.a(((sw) (obj3)));
                        }
                    }
                } else
                if (((qe) (obj4)).d())
                {
                    obj4 = ((qe) (obj4)).i();
                    if (a(qk1, xq1, ((xj) (obj4)).d(), ((Map) (obj))))
                    {
                        sr1.a(((String) (obj3)));
                    } else
                    {
                        obj3 = a(qk1, xq1, ((String) (obj3)), ((xj) (obj4)));
                        if (obj3 != null)
                        {
                            sr1.a(((sw) (obj3)));
                        }
                    }
                }
            }
        } while (true);
        if (xl1 != null)
        {
            sr1.a(a(qk1, xq1, xl1));
        }
        if (qk1.a(ql.e))
        {
            Iterator iterator = list.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj2 = (qe)iterator.next();
                if (((qe) (obj2)).b())
                {
                    String s = ((qe) (obj2)).a();
                    if (!sr1.b(s) && !((Set) (obj1)).contains(s))
                    {
                        obj2 = ((qe) (obj2)).g();
                        Class class1 = ((xl) (obj2)).d();
                        if ((java/util/Collection.isAssignableFrom(class1) || java/util/Map.isAssignableFrom(class1)) && !((Set) (obj1)).contains(s) && !sr1.b(s))
                        {
                            sr1.a(b(qk1, xq1, s, ((xl) (obj2))));
                        }
                    }
                }
            } while (true);
        }
    }

    protected void a(qk qk1, xq xq1, ye ye1, py py1, tm tm1)
        throws qw
    {
        Iterator iterator = xq1.n().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xi xi1 = (xi)iterator.next();
            int l1 = xi1.f();
            if (l1 < 1)
            {
                continue;
            }
            boolean flag = py1.k(xi1);
            boolean flag1 = ye1.a(xi1);
            if (l1 == 1)
            {
                a(qk1, xq1, ye1, py1, tm1, xi1, flag, flag1);
                continue;
            }
            if (!flag && !flag1)
            {
                continue;
            }
            String s = null;
            int l = 0;
            int i1 = 0;
            tn atn[] = new tn[l1];
            int k = 0;
            while (k < l1) 
            {
                xn xn1 = xi1.c(k);
                Object obj;
                Object obj1;
                int j1;
                int k1;
                if (xn1 == null)
                {
                    obj = null;
                } else
                {
                    obj = py1.a(xn1);
                }
                obj1 = py1.d(xn1);
                if (obj != null && ((String) (obj)).length() > 0)
                {
                    k1 = l + 1;
                    atn[k] = a(qk1, xq1, ((String) (obj)), k, xn1, obj1);
                    obj = s;
                    j1 = i1;
                } else
                if (obj1 != null)
                {
                    j1 = i1 + 1;
                    atn[k] = a(qk1, xq1, ((String) (obj)), k, xn1, obj1);
                    k1 = l;
                    obj = s;
                } else
                {
                    j1 = i1;
                    k1 = l;
                    obj = xn1;
                    if (s != null)
                    {
                        j1 = i1;
                        k1 = l;
                        obj = s;
                    }
                }
                k++;
                s = ((String) (obj));
                i1 = j1;
                l = k1;
            }
            if (flag || l > 0 || i1 > 0)
            {
                if (l + i1 == l1)
                {
                    tm1.a(xi1, atn);
                } else
                if (l == 0 && i1 + 1 == l1)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Delegated constructor with Injectables not yet supported (see [JACKSON-712]) for ").append(xi1).toString());
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Argument #").append(s.g()).append(" of constructor ").append(xi1).append(" has no property name annotation; must have name when multiple-paramater constructor annotated as Creator").toString());
                }
            }
        } while (true);
    }

    protected boolean a(qk qk1, xq xq1, ye ye1, py py1, tm tm1, xi xi1, boolean flag, 
            boolean flag1)
        throws qw
    {
        ye1 = xi1.c(0);
        String s = py1.a(ye1);
        py1 = ((py) (py1.d(ye1)));
        if (py1 != null || s != null && s.length() > 0)
        {
            tm1.a(xi1, new tn[] {
                a(qk1, xq1, s, 0, ((xn) (ye1)), py1)
            });
            return true;
        }
        qk1 = xi1.a(0);
        if (qk1 == java/lang/String)
        {
            if (flag || flag1)
            {
                tm1.a(xi1);
            }
            return true;
        }
        if (qk1 == Integer.TYPE || qk1 == java/lang/Integer)
        {
            if (flag || flag1)
            {
                tm1.b(xi1);
            }
            return true;
        }
        if (qk1 == Long.TYPE || qk1 == java/lang/Long)
        {
            if (flag || flag1)
            {
                tm1.c(xi1);
            }
            return true;
        }
        if (qk1 == Double.TYPE || qk1 == java/lang/Double)
        {
            if (flag || flag1)
            {
                tm1.d(xi1);
            }
            return true;
        }
        if (flag)
        {
            tm1.f(xi1);
            return true;
        } else
        {
            return false;
        }
    }

    protected boolean a(qk qk1, xq xq1, ye ye1, py py1, tm tm1, xl xl1, boolean flag)
        throws qw
    {
        qk1 = xl1.a(0);
        if (qk1 != java/lang/String) goto _L2; else goto _L1
_L1:
        if (flag || ye1.a(xl1))
        {
            tm1.a(xl1);
        }
_L4:
        return true;
_L2:
        if (qk1 != Integer.TYPE && qk1 != java/lang/Integer)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag || ye1.a(xl1))
        {
            tm1.b(xl1);
            return true;
        }
        if (true) goto _L4; else goto _L3
_L3:
        if (qk1 != Long.TYPE && qk1 != java/lang/Long)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag || ye1.a(xl1))
        {
            tm1.c(xl1);
            return true;
        }
        if (true) goto _L4; else goto _L5
_L5:
        if (qk1 != Double.TYPE && qk1 != java/lang/Double)
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag || ye1.a(xl1))
        {
            tm1.d(xl1);
            return true;
        }
        if (true) goto _L4; else goto _L6
_L6:
        if (qk1 == Boolean.TYPE || qk1 == java/lang/Boolean)
        {
            if (flag || ye1.a(xl1))
            {
                tm1.e(xl1);
                return true;
            }
        } else
        if (py1.k(xl1))
        {
            tm1.f(xl1);
            return true;
        } else
        {
            return false;
        }
        if (true) goto _L4; else goto _L7
_L7:
    }

    protected boolean a(qk qk1, xq xq1, Class class1, Map map)
    {
        map = (Boolean)map.get(class1);
        xq1 = map;
        if (map == null)
        {
            xq1 = (xq)qk1.c(class1);
            qk1 = qk1.a().e(xq1.c());
            xq1 = qk1;
            if (qk1 == null)
            {
                xq1 = Boolean.FALSE;
            }
        }
        return xq1.booleanValue();
    }

    protected boolean a(Class class1)
    {
        String s = adz.a(class1);
        if (s != null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not deserialize Class ").append(class1.getName()).append(" (of type ").append(s).append(") as a Bean").toString());
        }
        if (adz.c(class1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not deserialize Proxy class ").append(class1.getName()).append(" as a Bean").toString());
        }
        s = adz.a(class1, true);
        if (s != null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not deserialize Class ").append(class1.getName()).append(" (of type ").append(s).append(") as a Bean").toString());
        } else
        {
            return true;
        }
    }

    protected afm b(qk qk1, afm afm1)
        throws qw
    {
label0:
        {
            Class class1 = afm1.p();
            if (!i.h())
            {
                break label0;
            }
            Iterator iterator = i.d().iterator();
            afm afm2;
            do
            {
                if (!iterator.hasNext())
                {
                    break label0;
                }
                afm2 = ((px)iterator.next()).a(qk1, afm1);
            } while (afm2 == null || afm2.p() == class1);
            return afm2;
        }
        return null;
    }

    protected afm b(qk qk1, xq xq1)
        throws qw
    {
        xq1 = xq1.a();
        for (Iterator iterator = i.d().iterator(); iterator.hasNext();)
        {
            afm afm1 = ((px)iterator.next()).b(qk1, xq1);
            if (afm1 != null)
            {
                return afm1;
            }
        }

        return null;
    }

    public qu b(qk qk1, afm afm1, xq xq1, qc qc)
        throws qw
    {
        afm1 = a(xq1);
        afm1.a(a(qk1, xq1));
        a(qk1, xq1, afm1);
        Object obj = xq1.a("initCause", j);
        if (obj != null)
        {
            obj = a(qk1, xq1, "cause", ((xl) (obj)));
            if (obj != null)
            {
                afm1.a(((sw) (obj)), true);
            }
        }
        afm1.a("localizedMessage");
        afm1.a("message");
        if (i.g())
        {
            Iterator iterator1 = i.c().iterator();
            do
            {
                obj = afm1;
                if (!iterator1.hasNext())
                {
                    break;
                }
                afm1 = ((su)iterator1.next()).a(qk1, xq1, afm1);
            } while (true);
        } else
        {
            obj = afm1;
        }
        qc = ((sr) (obj)).a(qc);
        afm1 = qc;
        if (qc instanceof sp)
        {
            afm1 = new wz((sp)qc);
        }
        if (i.g())
        {
            Iterator iterator = i.c().iterator();
            do
            {
                qc = afm1;
                if (!iterator.hasNext())
                {
                    break;
                }
                afm1 = ((su)iterator.next()).a(qk1, xq1, afm1);
            } while (true);
        } else
        {
            qc = afm1;
        }
        return qc;
    }

    protected sw b(qk qk1, xq xq1, String s, xl xl1)
        throws qw
    {
        if (qk1.a(ql.f))
        {
            xl1.k();
        }
        afm afm1 = xl1.a(xq1.j());
        qu qu = a(qk1, xl1, new qd(s, afm1, xq1.i(), xl1));
        qk1 = a(qk1, xl1, afm1, s);
        xq1 = new tc(s, qk1, (rw)qk1.o(), xq1.i(), xl1);
        qk1 = xq1;
        if (qu != null)
        {
            qk1 = xq1.a(qu);
        }
        return qk1;
    }

    protected void b(qk qk1, xq xq1, sr sr1)
        throws qw
    {
        Object obj = xq1.q();
        if (obj != null)
        {
            for (obj = ((Map) (obj)).entrySet().iterator(); ((Iterator) (obj)).hasNext();)
            {
                Object obj1 = (java.util.Map.Entry)((Iterator) (obj)).next();
                String s = (String)((java.util.Map.Entry) (obj1)).getKey();
                obj1 = (xk)((java.util.Map.Entry) (obj1)).getValue();
                if (obj1 instanceof xl)
                {
                    sr1.a(s, a(qk1, xq1, ((xk) (obj1)).b(), (xl)obj1));
                } else
                {
                    sr1.a(s, a(qk1, xq1, ((xk) (obj1)).b(), (xj)obj1));
                }
            }

        }
    }

    protected void b(qk qk1, xq xq1, ye ye1, py py1, tm tm1)
        throws qw
    {
        Iterator iterator = xq1.o().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xl xl1 = (xl)iterator.next();
            int l = xl1.f();
            if (l < 1)
            {
                continue;
            }
            boolean flag = py1.k(xl1);
            if (l == 1)
            {
                xn xn1 = xl1.c(0);
                String s = py1.a(xn1);
                if (py1.d(xn1) == null && (s == null || s.length() == 0))
                {
                    a(qk1, xq1, ye1, py1, tm1, xl1, flag);
                    continue;
                }
            } else
            if (!py1.k(xl1))
            {
                continue;
            }
            tn atn[] = new tn[l];
            for (int k = 0; k < l; k++)
            {
                xn xn2 = xl1.c(k);
                String s1 = py1.a(xn2);
                Object obj = py1.d(xn2);
                if ((s1 == null || s1.length() == 0) && obj == null)
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Argument #").append(k).append(" of factory method ").append(xl1).append(" has no property name annotation; must have when multiple-paramater static method annotated as Creator").toString());
                }
                atn[k] = a(qk1, xq1, s1, k, xn2, obj);
            }

            tm1.a(xl1, atn);
        } while (true);
    }

    protected th c(qk qk1, xq xq1)
        throws qw
    {
        boolean flag = qk1.a(ql.f);
        tm tm1 = new tm(xq1, flag);
        py py1 = qk1.a();
        if (xq1.a().d())
        {
            xi xi1 = xq1.k();
            if (xi1 != null)
            {
                if (flag)
                {
                    adz.a(xi1.e());
                }
                tm1.a(xi1);
            }
        }
        ye ye1 = qk1.e();
        ye1 = qk1.a().a(xq1.c(), ye1);
        b(qk1, xq1, ye1, py1, tm1);
        a(qk1, xq1, ye1, py1, tm1);
        return tm1.a(qk1);
    }

    protected void c(qk qk1, xq xq1, sr sr1)
        throws qw
    {
        Object obj = xq1.m();
        if (obj != null)
        {
            boolean flag = qk1.a(ql.f);
            xk xk1;
            for (qk1 = ((Map) (obj)).entrySet().iterator(); qk1.hasNext(); sr1.a(xk1.b(), xq1.a(xk1.c()), xq1.i(), xk1, ((java.util.Map.Entry) (obj)).getKey()))
            {
                obj = (java.util.Map.Entry)qk1.next();
                xk1 = (xk)((java.util.Map.Entry) (obj)).getValue();
                if (flag)
                {
                    xk1.k();
                }
            }

        }
    }

}
