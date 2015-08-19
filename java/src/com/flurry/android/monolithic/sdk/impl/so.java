// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qo, tg, wu, vd, 
//            xf, ql, qk, aed, 
//            qw, py, afm, adf, 
//            xg, rd, qv, xk, 
//            ada, qu, rw, qq, 
//            vc, adc, xq, add, 
//            ul, wx, uf, rc, 
//            adg, uk, vb, qh, 
//            yh, yj, xl, ui, 
//            ux, adb, adk, ua, 
//            qc, th

public abstract class so extends qo
{

    static final HashMap b = tg.a();
    static final HashMap c = wu.a();
    static final HashMap d;
    static final HashMap e;
    protected static final HashMap f = vd.a();
    protected xf g;

    protected so()
    {
        g = xf.a;
    }

    protected aed a(Class class1, qk qk1)
    {
        if (qk1.a(ql.j))
        {
            return aed.b(class1);
        } else
        {
            return aed.b(class1, qk1.a());
        }
    }

    public abstract afm a(qk qk1, afm afm1)
        throws qw;

    protected afm a(qk qk1, xg xg1, afm afm1, String s)
        throws qw
    {
        py py1 = qk1.a();
        Class class1 = py1.a(xg1, afm1, s);
        afm afm2;
        if (class1 != null)
        {
            try
            {
                afm2 = afm1.f(class1);
            }
            // Misplaced declaration of an exception variable
            catch (qk qk1)
            {
                throw new qw((new StringBuilder()).append("Failed to narrow type ").append(afm1).append(" with concrete-type annotation (value ").append(class1.getName()).append("), method '").append(xg1.b()).append("': ").append(qk1.getMessage()).toString(), null, qk1);
            }
            afm1 = afm2;
        }
        afm2 = afm1;
        if (afm1.f())
        {
            class1 = py1.b(xg1, afm1.k(), s);
            afm2 = afm1;
            if (class1 != null)
            {
                if (!(afm1 instanceof adf))
                {
                    throw new qw((new StringBuilder()).append("Illegal key-type annotation: type ").append(afm1).append(" is not a Map(-like) type").toString());
                }
                try
                {
                    afm2 = ((adf)afm1).d(class1);
                }
                // Misplaced declaration of an exception variable
                catch (qk qk1)
                {
                    throw new qw((new StringBuilder()).append("Failed to narrow key type ").append(afm1).append(" with key-type annotation (").append(class1.getName()).append("): ").append(qk1.getMessage()).toString(), null, qk1);
                }
            }
            afm1 = afm2.k();
            if (afm1 != null && afm1.n() == null)
            {
                class1 = py1.i(xg1);
                if (class1 != null && class1 != com/flurry/android/monolithic/sdk/impl/rd)
                {
                    afm1.j(qk1.b(xg1, class1));
                }
            }
            s = py1.c(xg1, afm2.g(), s);
            afm1 = afm2;
            if (s != null)
            {
                try
                {
                    afm1 = afm2.b(s);
                }
                // Misplaced declaration of an exception variable
                catch (qk qk1)
                {
                    throw new qw((new StringBuilder()).append("Failed to narrow content type ").append(afm2).append(" with content-type annotation (").append(s.getName()).append("): ").append(qk1.getMessage()).toString(), null, qk1);
                }
            }
            afm2 = afm1;
            if (afm1.g().n() == null)
            {
                s = py1.j(xg1);
                afm2 = afm1;
                if (s != null)
                {
                    afm2 = afm1;
                    if (s != com/flurry/android/monolithic/sdk/impl/qv)
                    {
                        qk1 = qk1.a(xg1, s);
                        afm1.g().j(qk1);
                        afm2 = afm1;
                    }
                }
            }
        }
        return afm2;
    }

    protected afm a(qk qk1, xq xq1, afm afm1, xk xk1, qc qc)
        throws qw
    {
        xq1 = afm1;
        if (afm1.f())
        {
            xq1 = qk1.a();
            afm afm2 = afm1.k();
            if (afm2 != null)
            {
                Class class1 = xq1.i(xk1);
                if (class1 != null && class1 != com/flurry/android/monolithic/sdk/impl/rd)
                {
                    afm2.j(qk1.b(xk1, class1));
                }
            }
            xq1 = xq1.j(xk1);
            if (xq1 != null && xq1 != com/flurry/android/monolithic/sdk/impl/qv)
            {
                xq1 = qk1.a(xk1, xq1);
                afm1.g().j(xq1);
            }
            xq1 = afm1;
            if (xk1 instanceof xk)
            {
                rw rw1 = b(qk1, afm1, xk1, qc);
                xq1 = afm1;
                if (rw1 != null)
                {
                    xq1 = afm1.e(rw1);
                }
            }
        }
        if (xk1 instanceof xk)
        {
            qk1 = a(qk1, ((afm) (xq1)), xk1, qc);
        } else
        {
            qk1 = b(qk1, xq1, null);
        }
        afm1 = xq1;
        if (qk1 != null)
        {
            afm1 = xq1.f(qk1);
        }
        return afm1;
    }

    protected abstract qu a(ada ada1, qk qk1, qq qq1, qc qc, rw rw1, qu qu1)
        throws qw;

    protected abstract qu a(adc adc1, qk qk1, qq qq1, xq xq1, qc qc, rw rw1, qu qu1)
        throws qw;

    protected abstract qu a(add add1, qk qk1, qq qq1, xq xq1, qc qc, rw rw1, qu qu1)
        throws qw;

    protected abstract qu a(adf adf1, qk qk1, qq qq1, xq xq1, qc qc, rc rc1, rw rw1, 
            qu qu1)
        throws qw;

    protected abstract qu a(adg adg1, qk qk1, qq qq1, xq xq1, qc qc, rc rc1, rw rw1, 
            qu qu1)
        throws qw;

    public qu a(qk qk1, qq qq1, ada ada1, qc qc)
        throws qw
    {
        qu qu2;
        afm afm1;
        afm1 = ada1.g();
        qu2 = (qu)afm1.n();
        if (qu2 != null) goto _L2; else goto _L1
_L1:
        Object obj = (qu)f.get(afm1);
        if (obj == null) goto _L4; else goto _L3
_L3:
        qk1 = a(ada1, qk1, qq1, qc, null, null);
        if (qk1 != null)
        {
            obj = qk1;
        }
_L6:
        return ((qu) (obj));
_L4:
        if (afm1.t())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Internal error: primitive type (").append(ada1).append(") passed, no array deserializer found").toString());
        }
_L2:
        rw rw1 = (rw)afm1.o();
        if (rw1 == null)
        {
            rw1 = b(qk1, afm1, qc);
        }
        qu qu3 = a(ada1, qk1, qq1, qc, rw1, qu2);
        obj = qu3;
        if (qu3 == null)
        {
            qu qu1 = qu2;
            if (qu2 == null)
            {
                qu1 = qq1.a(qk1, afm1, qc);
            }
            return new vc(ada1, qu1, rw1);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public qu a(qk qk1, qq qq1, adc adc1, qc qc)
        throws qw
    {
        adc1 = (adc)a(qk1, ((afm) (adc1)));
        xq xq1 = (xq)qk1.c(adc1.p());
        Object obj = a(qk1, ((xg) (xq1.c())), qc);
        if (obj != null)
        {
            return ((qu) (obj));
        }
        obj = (adc)a(qk1, ((xg) (xq1.c())), ((afm) (adc1)), ((String) (null)));
        afm afm1 = ((adc) (obj)).g();
        qu qu1 = (qu)afm1.n();
        adc1 = (rw)afm1.o();
        if (adc1 == null)
        {
            adc1 = b(qk1, afm1, qc);
        }
        return a(((adc) (obj)), qk1, qq1, xq1, qc, ((rw) (adc1)), qu1);
    }

    public qu a(qk qk1, qq qq1, add add1, qc qc)
        throws qw
    {
        add1 = (add)a(qk1, ((afm) (add1)));
        Class class1 = add1.p();
        xq xq1 = (xq)qk1.c(add1);
        qu qu1 = a(qk1, ((xg) (xq1.c())), qc);
        if (qu1 == null)
        {
            add add2 = (add)a(qk1, ((xg) (xq1.c())), ((afm) (add1)), ((String) (null)));
            afm afm1 = add2.g();
            qu qu3 = (qu)afm1.n();
            add1 = (rw)afm1.o();
            if (add1 == null)
            {
                add1 = b(qk1, afm1, qc);
            }
            qu qu4 = a(add2, qk1, qq1, xq1, qc, ((rw) (add1)), qu3);
            qu1 = qu4;
            if (qu4 == null)
            {
                qu qu2;
label0:
                {
                    qu2 = qu3;
                    if (qu3 == null)
                    {
                        if (java/util/EnumSet.isAssignableFrom(class1))
                        {
                            return new ul(afm1.p(), b(qk1, qq1, afm1, qc));
                        }
                        qu2 = qq1.a(qk1, afm1, qc);
                    }
                    if (!add2.s())
                    {
                        qq1 = add2;
                        qc = xq1;
                        if (!add2.c())
                        {
                            break label0;
                        }
                    }
                    qq1 = (Class)e.get(class1.getName());
                    if (qq1 == null)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Can not find a deserializer for non-concrete Collection type ").append(add2).toString());
                    }
                    qq1 = (add)qk1.a(add2, qq1);
                    qc = (xq)qk1.c(qq1);
                }
                qk1 = a(qk1, ((xq) (qc)));
                if (afm1.p() == java/lang/String)
                {
                    return new wx(qq1, qu2, qk1);
                } else
                {
                    return new uf(qq1, qu2, add1, qk1);
                }
            }
        }
        return qu1;
    }

    public qu a(qk qk1, qq qq1, adf adf1, qc qc)
        throws qw
    {
        adf1 = (adf)a(qk1, ((afm) (adf1)));
        xq xq1 = (xq)qk1.c(adf1);
        Object obj = a(qk1, ((xg) (xq1.c())), qc);
        if (obj != null)
        {
            return ((qu) (obj));
        }
        adf adf2 = (adf)a(qk1, ((xg) (xq1.c())), ((afm) (adf1)), ((String) (null)));
        obj = adf2.k();
        afm afm1 = adf2.g();
        qu qu1 = (qu)afm1.n();
        adf1 = (rc)((afm) (obj)).n();
        if (adf1 == null)
        {
            adf1 = qq1.c(qk1, ((afm) (obj)), qc);
        }
        obj = (rw)afm1.o();
        if (obj == null)
        {
            obj = b(qk1, afm1, qc);
        }
        return a(adf2, qk1, qq1, xq1, qc, ((rc) (adf1)), ((rw) (obj)), qu1);
    }

    public qu a(qk qk1, qq qq1, adg adg1, qc qc)
        throws qw
    {
        adg1 = (adg)a(qk1, ((afm) (adg1)));
        xq xq1 = (xq)qk1.c(adg1);
        qu qu1 = a(qk1, ((xg) (xq1.c())), qc);
        if (qu1 == null)
        {
            adg adg2 = (adg)a(qk1, ((xg) (xq1.c())), ((afm) (adg1)), ((String) (null)));
            afm afm1 = adg2.k();
            afm afm2 = adg2.g();
            Object obj = (qu)afm2.n();
            adg1 = (rc)afm1.n();
            if (adg1 == null)
            {
                adg1 = qq1.c(qk1, afm1, qc);
            }
            rw rw1 = (rw)afm2.o();
            if (rw1 == null)
            {
                rw1 = b(qk1, afm2, qc);
            }
            qu qu3 = a(adg2, qk1, qq1, xq1, qc, ((rc) (adg1)), rw1, ((qu) (obj)));
            qu1 = qu3;
            if (qu3 == null)
            {
                qu qu2 = ((qu) (obj));
                if (obj == null)
                {
                    qu2 = qq1.a(qk1, afm2, qc);
                }
                obj = adg2.p();
                if (java/util/EnumMap.isAssignableFrom(((Class) (obj))))
                {
                    adg1 = afm1.p();
                    if (adg1 == null || !adg1.isEnum())
                    {
                        throw new IllegalArgumentException("Can not construct EnumMap; generic (key) type not available");
                    } else
                    {
                        return new uk(afm1.p(), b(qk1, qq1, afm1, qc), qu2);
                    }
                }
                if (adg2.s() || adg2.c())
                {
                    qq1 = (Class)d.get(((Class) (obj)).getName());
                    if (qq1 == null)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Can not find a deserializer for non-concrete Map type ").append(adg2).toString());
                    }
                    qc = (adg)qk1.a(adg2, qq1);
                    qq1 = (xq)qk1.c(qc);
                } else
                {
                    qq1 = xq1;
                    qc = adg2;
                }
                adg1 = new vb(qc, a(qk1, ((xq) (qq1))), adg1, qu2, rw1);
                adg1.a(qk1.a().c(qq1.c()));
                return adg1;
            }
        }
        return qu1;
    }

    protected qu a(qk qk1, xg xg1, qc qc)
        throws qw
    {
        Object obj = qk1.a().h(xg1);
        if (obj != null)
        {
            return a(qk1, xg1, qc, obj);
        } else
        {
            return null;
        }
    }

    qu a(qk qk1, xg xg1, qc qc, Object obj)
        throws qw
    {
        if (obj instanceof qu)
        {
            obj = (qu)obj;
            xg1 = ((xg) (obj));
            if (obj instanceof qh)
            {
                xg1 = ((qh)obj).a(qk1, qc);
            }
            return xg1;
        }
        if (!(obj instanceof Class))
        {
            throw new IllegalStateException((new StringBuilder()).append("AnnotationIntrospector returned deserializer definition of type ").append(obj.getClass().getName()).append("; expected type JsonDeserializer or Class<JsonDeserializer> instead").toString());
        }
        obj = (Class)obj;
        if (!com/flurry/android/monolithic/sdk/impl/qu.isAssignableFrom(((Class) (obj))))
        {
            throw new IllegalStateException((new StringBuilder()).append("AnnotationIntrospector returned Class ").append(((Class) (obj)).getName()).append("; expected Class<JsonDeserializer>").toString());
        }
        obj = qk1.a(xg1, ((Class) (obj)));
        xg1 = ((xg) (obj));
        if (obj instanceof qh)
        {
            xg1 = ((qh)obj).a(qk1, qc);
        }
        return xg1;
    }

    protected abstract qu a(Class class1, qk qk1, qc qc)
        throws qw;

    protected abstract qu a(Class class1, qk qk1, xq xq1, qc qc)
        throws qw;

    public rw a(qk qk1, afm afm1, xk xk1, qc qc)
        throws qw
    {
        py py1 = qk1.a();
        yj yj1 = py1.a(qk1, xk1, afm1);
        if (yj1 == null)
        {
            return b(qk1, afm1, qc);
        } else
        {
            return yj1.a(qk1, afm1, qk1.l().a(xk1, qk1, py1), qc);
        }
    }

    public abstract th a(qk qk1, xq xq1)
        throws qw;

    public qu b(qk qk1, qq qq1, afm afm1, qc qc)
        throws qw
    {
        qq1 = (xq)qk1.c(afm1);
        qu qu1 = a(qk1, qq1.c(), qc);
        if (qu1 != null)
        {
            return qu1;
        }
        afm1 = afm1.p();
        qc = a(afm1, qk1, qq1, qc);
        if (qc != null)
        {
            return qc;
        }
        for (qq1 = qq1.o().iterator(); qq1.hasNext();)
        {
            qc = (xl)qq1.next();
            if (qk1.a().k(qc))
            {
                if (qc.f() == 1 && qc.d().isAssignableFrom(afm1))
                {
                    return ui.a(qk1, afm1, qc);
                } else
                {
                    throw new IllegalArgumentException((new StringBuilder()).append("Unsuitable method (").append(qc).append(") decorated with @JsonCreator (for Enum type ").append(afm1.getName()).append(")").toString());
                }
            }
        }

        return new ui(a(afm1, qk1));
    }

    public rw b(qk qk1, afm afm1, qc qc)
        throws qw
    {
        yj yj1;
        Object obj;
        Object obj1;
        obj = ((xq)qk1.c(afm1.p())).c();
        obj1 = qk1.a();
        yj1 = ((py) (obj1)).a(qk1, ((xh) (obj)), afm1);
        if (yj1 != null) goto _L2; else goto _L1
_L1:
        yj1 = qk1.d(afm1);
        afm afm2;
        if (yj1 == null)
        {
            return null;
        }
        obj = null;
          goto _L3
_L2:
        obj = qk1.l().a(((xh) (obj)), qk1, ((py) (obj1)));
_L5:
        obj1 = yj1;
        if (yj1.a() == null)
        {
            obj1 = yj1;
            if (afm1.c())
            {
                afm2 = a(qk1, afm1);
                obj1 = yj1;
                if (afm2 != null)
                {
                    obj1 = yj1;
                    if (afm2.p() != afm1.p())
                    {
                        obj1 = yj1.a(afm2.p());
                    }
                }
            }
        }
        return ((yj) (obj1)).a(qk1, afm1, ((Collection) (obj)), qc);
_L3:
        if (true) goto _L5; else goto _L4
_L4:
    }

    public rw b(qk qk1, afm afm1, xk xk1, qc qc)
        throws qw
    {
        py py1 = qk1.a();
        yj yj1 = py1.b(qk1, xk1, afm1);
        afm1 = afm1.g();
        if (yj1 == null)
        {
            return b(qk1, afm1, qc);
        } else
        {
            return yj1.a(qk1, afm1, qk1.l().a(xk1, qk1, py1), qc);
        }
    }

    public qu c(qk qk1, qq qq1, afm afm1, qc qc)
        throws qw
    {
        qq1 = afm1.p();
        qk1 = a(qq1, qk1, qc);
        if (qk1 != null)
        {
            return qk1;
        } else
        {
            return ux.a(qq1);
        }
    }

    protected qu d(qk qk1, qq qq1, afm afm1, qc qc)
        throws qw
    {
        Class class1 = afm1.p();
        qu qu1 = (qu)b.get(new adb(class1));
        if (qu1 != null)
        {
            qk1 = qu1;
        } else
        {
            if (java/util/concurrent/atomic/AtomicReference.isAssignableFrom(class1))
            {
                qk1 = qk1.m().b(afm1, java/util/concurrent/atomic/AtomicReference);
                if (qk1 == null || qk1.length < 1)
                {
                    qk1 = adk.b();
                } else
                {
                    qk1 = qk1[0];
                }
                return new ua(qk1, qc);
            }
            qq1 = g.a(afm1, qk1, qq1);
            qk1 = qq1;
            if (qq1 == null)
            {
                return null;
            }
        }
        return qk1;
    }

    static 
    {
        d = new HashMap();
        d.put(java/util/Map.getName(), java/util/LinkedHashMap);
        d.put(java/util/concurrent/ConcurrentMap.getName(), java/util/concurrent/ConcurrentHashMap);
        d.put(java/util/SortedMap.getName(), java/util/TreeMap);
        d.put("java.util.NavigableMap", java/util/TreeMap);
        try
        {
            Class class1 = Class.forName("java.util.ConcurrentNavigableMap");
            Class class2 = Class.forName("java.util.ConcurrentSkipListMap");
            d.put(class1.getName(), class2);
        }
        catch (ClassNotFoundException classnotfoundexception) { }
        e = new HashMap();
        e.put(java/util/Collection.getName(), java/util/ArrayList);
        e.put(java/util/List.getName(), java/util/ArrayList);
        e.put(java/util/Set.getName(), java/util/HashSet);
        e.put(java/util/SortedSet.getName(), java/util/TreeSet);
        e.put(java/util/Queue.getName(), java/util/LinkedList);
        e.put("java.util.Deque", java/util/LinkedList);
        e.put("java.util.NavigableSet", java/util/TreeSet);
    }
}
