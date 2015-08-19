// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, ro, qb, th, 
//            tr, ty, oz, ow, 
//            sv, sw, ug, sm, 
//            afm, sz, xh, pb, 
//            sq, qm, rw, tj, 
//            afz, qu, qw, tx, 
//            tp, qd, ql, adb, 
//            qq, qk, py, adz, 
//            sy, to, oy, tw, 
//            qc

public class sp extends vo
    implements ro
{

    protected final xh a;
    protected final afm b;
    protected final qc c;
    protected final th d;
    protected qu e;
    protected final tr f;
    protected boolean g;
    protected final tj h;
    protected final ty i[];
    protected sv j;
    protected final HashSet k;
    protected final boolean l;
    protected final Map m;
    protected HashMap n;
    protected tx o;
    protected to p;

    public sp(qb qb1, qc qc, th th1, tj tj1, Map map, HashSet hashset, boolean flag, 
            sv sv1, List list)
    {
        this(qb1.c(), qb1.a(), qc, th1, tj1, map, hashset, flag, sv1, list);
    }

    protected sp(sp sp1)
    {
        this(sp1, sp1.l);
    }

    protected sp(sp sp1, boolean flag)
    {
        super(sp1.b);
        a = sp1.a;
        b = sp1.b;
        c = sp1.c;
        d = sp1.d;
        e = sp1.e;
        f = sp1.f;
        h = sp1.h;
        m = sp1.m;
        k = sp1.k;
        l = flag;
        j = sp1.j;
        i = sp1.i;
        g = sp1.g;
        o = sp1.o;
    }

    protected sp(xh xh1, afm afm1, qc qc, th th1, tj tj1, Map map, HashSet hashset, 
            boolean flag, sv sv1, List list)
    {
        Object obj = null;
        super(afm1);
        a = xh1;
        b = afm1;
        c = qc;
        d = th1;
        if (th1.j())
        {
            f = new tr(th1);
        } else
        {
            f = null;
        }
        h = tj1;
        m = map;
        k = hashset;
        l = flag;
        j = sv1;
        xh1 = obj;
        if (list != null)
        {
            if (list.isEmpty())
            {
                xh1 = obj;
            } else
            {
                xh1 = (ty[])list.toArray(new ty[list.size()]);
            }
        }
        i = xh1;
        if (th1.i() || f != null || !th1.h() || o != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        g = flag;
    }

    private final void b(ow ow1, qm qm1, Object obj, String s)
        throws IOException, oz
    {
        if (k != null && k.contains(s))
        {
            ow1.d();
            return;
        }
        if (j != null)
        {
            try
            {
                j.a(ow1, qm1, obj, s);
                return;
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                a(ow1, obj, s, qm1);
            }
            return;
        } else
        {
            a(ow1, qm1, obj, s);
            return;
        }
    }

    public qu a()
    {
        if (getClass() != com/flurry/android/monolithic/sdk/impl/sp)
        {
            return this;
        } else
        {
            return new sp(this, true);
        }
    }

    protected sw a(qk qk1, sw sw1)
    {
        String s;
        boolean flag;
        s = sw1.e();
        if (s == null)
        {
            return sw1;
        }
        qk1 = sw1.h();
        flag = false;
        if (!(qk1 instanceof sp)) goto _L2; else goto _L1
_L1:
        qk1 = ((sp)qk1).a(s);
_L4:
        if (qk1 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not handle managed/back reference '").append(s).append("': no back reference property found from type ").append(sw1.a()).toString());
        }
        break MISSING_BLOCK_LABEL_269;
_L2:
        if (!(qk1 instanceof ug))
        {
            break; /* Loop/switch isn't completed */
        }
        qk1 = ((ug)qk1).d();
        if (!(qk1 instanceof sp))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not handle managed/back reference '").append(s).append("': value deserializer is of type ContainerDeserializerBase, but content type is not handled by a BeanDeserializer ").append(" (instead it's of type ").append(qk1.getClass().getName()).append(")").toString());
        }
        qk1 = ((sp)qk1).a(s);
        flag = true;
        if (true) goto _L4; else goto _L3
_L3:
        if (qk1 instanceof sm)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not handle managed/back reference for abstract types (property ").append(b.p().getName()).append(".").append(sw1.c()).append(")").toString());
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not handle managed/back reference '").append(s).append("': type for value deserializer is not BeanDeserializer or ContainerDeserializerBase, but ").append(qk1.getClass().getName()).toString());
        }
        afm afm1 = b;
        afm afm2 = qk1.a();
        if (!afm2.p().isAssignableFrom(afm1.p()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not handle managed/back reference '").append(s).append("': back reference type (").append(afm2.p().getName()).append(") not compatible with managed type (").append(afm1.p().getName()).append(")").toString());
        } else
        {
            return new sz(s, sw1, qk1, a.f(), flag);
        }
    }

    public sw a(String s)
    {
        if (m == null)
        {
            return null;
        } else
        {
            return (sw)m.get(s);
        }
    }

    public final Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.b)
        {
            ow1.b();
            return b(ow1, qm1);
        }
        switch (sq.a[pb1.ordinal()])
        {
        default:
            throw qm1.b(d());

        case 1: // '\001'
            return d(ow1, qm1);

        case 2: // '\002'
            return e(ow1, qm1);

        case 3: // '\003'
            return f(ow1, qm1);

        case 4: // '\004'
            return ow1.z();

        case 5: // '\005'
        case 6: // '\006'
            return g(ow1, qm1);

        case 7: // '\007'
            return h(ow1, qm1);

        case 8: // '\b'
        case 9: // '\t'
            return b(ow1, qm1);
        }
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.a(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        if (i != null)
        {
            a(qm1, obj);
        }
        if (o == null) goto _L2; else goto _L1
_L1:
        Object obj2 = b(ow1, qm1, obj);
_L4:
        return obj2;
_L2:
        if (p != null)
        {
            return c(ow1, qm1, obj);
        }
        obj2 = ow1.e();
        Object obj1 = obj2;
        if (obj2 == pb.b)
        {
            obj1 = ow1.b();
        }
        do
        {
            obj2 = obj;
            if (obj1 != pb.f)
            {
                continue;
            }
            obj1 = ow1.g();
            ow1.b();
            obj2 = h.a(((String) (obj1)));
            if (obj2 != null)
            {
                try
                {
                    ((sw) (obj2)).a(ow1, qm1, obj);
                }
                catch (Exception exception)
                {
                    a(((Throwable) (exception)), obj, ((String) (obj1)), qm1);
                }
            } else
            if (k != null && k.contains(obj1))
            {
                ow1.d();
            } else
            if (j != null)
            {
                j.a(ow1, qm1, obj, ((String) (obj1)));
            } else
            {
                a(ow1, qm1, obj, ((String) (obj1)));
            }
            obj1 = ow1.b();
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected Object a(ow ow1, qm qm1, Object obj, afz afz1)
        throws IOException, oz
    {
        qu qu1 = b(qm1, obj, afz1);
        if (qu1 != null)
        {
            if (afz1 != null)
            {
                afz1.e();
                afz1 = afz1.h();
                afz1.b();
                afz1 = ((afz) (qu1.a(afz1, qm1, obj)));
            } else
            {
                afz1 = ((afz) (obj));
            }
            obj = afz1;
            if (ow1 != null)
            {
                obj = qu1.a(ow1, qm1, afz1);
            }
        } else
        {
            if (afz1 != null)
            {
                afz1 = ((afz) (a(qm1, obj, afz1)));
            } else
            {
                afz1 = ((afz) (obj));
            }
            obj = afz1;
            if (ow1 != null)
            {
                return a(ow1, qm1, afz1);
            }
        }
        return obj;
    }

    protected Object a(qm qm1, Object obj, afz afz1)
        throws IOException, oz
    {
        afz1.e();
        String s;
        for (afz1 = afz1.h(); afz1.b() != pb.c; a(((ow) (afz1)), qm1, obj, s))
        {
            s = afz1.g();
            afz1.b();
        }

        return obj;
    }

    protected void a(ow ow1, qm qm1, Object obj, String s)
        throws IOException, oz
    {
        if (l || k != null && k.contains(s))
        {
            ow1.d();
            return;
        } else
        {
            super.a(ow1, qm1, obj, s);
            return;
        }
    }

    public void a(qk qk1, qq qq1)
        throws qw
    {
        Iterator iterator = h.c();
        tp tp1 = null;
        Object obj = null;
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Object obj4 = (sw)iterator.next();
            Object obj1;
            Object obj2;
            if (!((sw) (obj4)).f())
            {
                obj1 = ((sw) (obj4)).a(a(qk1, qq1, ((sw) (obj4)).a(), ((qc) (obj4))));
            } else
            {
                obj1 = obj4;
            }
            obj1 = a(qk1, ((sw) (obj1)));
            obj2 = b(qk1, ((sw) (obj1)));
            if (obj2 != null)
            {
                obj1 = obj;
                if (obj == null)
                {
                    obj1 = new tx();
                }
                ((tx) (obj1)).a(((sw) (obj2)));
                obj = obj2;
            } else
            {
                Object obj3 = obj1;
                obj1 = obj;
                obj = obj3;
            }
            obj2 = c(qk1, ((sw) (obj)));
            if (obj2 != obj4)
            {
                h.a(((sw) (obj2)));
            }
            obj = obj1;
            if (((sw) (obj2)).g())
            {
                obj4 = ((sw) (obj2)).i();
                obj = obj1;
                if (((rw) (obj4)).a() == com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.EXTERNAL_PROPERTY)
                {
                    if (tp1 == null)
                    {
                        tp1 = new tp();
                    }
                    tp1.a(((sw) (obj2)), ((rw) (obj4)).b());
                    h.b(((sw) (obj2)));
                    obj = obj1;
                }
            }
        } while (true);
        if (j != null && !j.b())
        {
            j = j.a(a(qk1, qq1, j.c(), j.a()));
        }
        if (d.i())
        {
            obj1 = d.l();
            if (obj1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid delegate-creator definition for ").append(b).append(": value instantiator (").append(d.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            obj2 = d.o();
            e = a(qk1, qq1, ((afm) (obj1)), ((qc) (new qd(null, ((afm) (obj1)), a.f(), ((xk) (obj2))))));
        }
        if (f != null)
        {
            obj1 = f.a().iterator();
            do
            {
                if (!((Iterator) (obj1)).hasNext())
                {
                    break;
                }
                obj2 = (sw)((Iterator) (obj1)).next();
                if (!((sw) (obj2)).f())
                {
                    f.a(((sw) (obj2)), a(qk1, qq1, ((sw) (obj2)).a(), ((qc) (obj2))));
                }
            } while (true);
        }
        if (tp1 != null)
        {
            p = tp1.a();
            g = true;
        }
        o = ((tx) (obj));
        if (obj != null)
        {
            g = true;
        }
    }

    protected void a(qm qm1, Object obj)
        throws IOException, oz
    {
        ty aty[] = i;
        int j1 = aty.length;
        for (int i1 = 0; i1 < j1; i1++)
        {
            aty[i1].b(qm1, obj);
        }

    }

    protected void a(Throwable throwable, qm qm1)
        throws IOException
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (qm1 == null || qm1.a(ql.n))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            throw (IOException)throwable;
        }
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        } else
        {
            throw qm1.a(b.p(), throwable);
        }
    }

    public void a(Throwable throwable, Object obj, String s, qm qm1)
        throws IOException
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (qm1 == null || qm1.a(ql.n))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof qw))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        throw qw.a(throwable, obj, s);
    }

    protected qu b(qm qm1, Object obj, afz afz1)
        throws IOException, oz
    {
        this;
        JVM INSTR monitorenter ;
        if (n != null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        afz1 = null;
_L1:
        this;
        JVM INSTR monitorexit ;
        if (afz1 != null)
        {
            return afz1;
        }
        break MISSING_BLOCK_LABEL_49;
        afz1 = (qu)n.get(new adb(obj.getClass()));
          goto _L1
        qm1;
        this;
        JVM INSTR monitorexit ;
        throw qm1;
        qq qq1 = qm1.b();
        if (qq1 == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        afz1 = qm1.a(obj.getClass());
        qm1 = qq1.a(qm1.a(), afz1, c);
        afz1 = qm1;
        if (qm1 == null)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        this;
        JVM INSTR monitorenter ;
        if (n == null)
        {
            n = new HashMap();
        }
        n.put(new adb(obj.getClass()), qm1);
        this;
        JVM INSTR monitorexit ;
        return qm1;
        qm1;
        this;
        JVM INSTR monitorexit ;
        throw qm1;
        return afz1;
    }

    protected sw b(qk qk1, sw sw1)
    {
        xk xk = sw1.b();
        if (xk != null && qk1.a().b(xk) == Boolean.TRUE)
        {
            qk1 = sw1.h();
            qu qu1 = qk1.a();
            if (qu1 != qk1 && qu1 != null)
            {
                return sw1.a(qu1);
            }
        }
        return null;
    }

    public Object b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!g) goto _L2; else goto _L1
_L1:
        if (o == null) goto _L4; else goto _L3
_L3:
        Object obj = j(ow1, qm1);
_L6:
        return obj;
_L4:
        if (p != null)
        {
            return l(ow1, qm1);
        } else
        {
            return c(ow1, qm1);
        }
_L2:
        Object obj1 = d.m();
        if (i != null)
        {
            a(qm1, obj1);
        }
        do
        {
            obj = obj1;
            if (ow1.e() == pb.c)
            {
                continue;
            }
            obj = ow1.g();
            ow1.b();
            sw sw1 = h.a(((String) (obj)));
            if (sw1 != null)
            {
                try
                {
                    sw1.a(ow1, qm1, obj1);
                }
                catch (Exception exception)
                {
                    a(exception, obj1, ((String) (obj)), qm1);
                }
            } else
            {
                b(ow1, qm1, obj1, ((String) (obj)));
            }
            ow1.b();
        } while (true);
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected Object b(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        Object obj2 = ow1.e();
        Object obj1 = obj2;
        if (obj2 == pb.b)
        {
            obj1 = ow1.b();
        }
        obj2 = new afz(ow1.a());
        ((afz) (obj2)).d();
        while (obj1 == pb.f) 
        {
            obj1 = ow1.g();
            sw sw1 = h.a(((String) (obj1)));
            ow1.b();
            if (sw1 != null)
            {
                try
                {
                    sw1.a(ow1, qm1, obj);
                }
                catch (Exception exception)
                {
                    a(exception, obj, ((String) (obj1)), qm1);
                }
            } else
            if (k != null && k.contains(obj1))
            {
                ow1.d();
            } else
            {
                ((afz) (obj2)).a(((String) (obj1)));
                ((afz) (obj2)).c(ow1);
                if (j != null)
                {
                    j.a(ow1, qm1, obj, ((String) (obj1)));
                }
            }
            obj1 = ow1.b();
        }
        ((afz) (obj2)).e();
        o.a(ow1, qm1, obj, ((afz) (obj2)));
        return obj;
    }

    protected sw c(qk qk1, sw sw1)
    {
        Object obj;
        Object obj1;
        obj1 = sw1.h();
        obj = sw1;
        if (!(obj1 instanceof sp)) goto _L2; else goto _L1
_L1:
        obj = sw1;
        if (((sp)obj1).e().h()) goto _L2; else goto _L3
_L3:
        Class class1;
        class1 = sw1.a().p();
        obj1 = adz.b(class1);
        obj = sw1;
        if (obj1 == null) goto _L2; else goto _L4
_L4:
        obj = sw1;
        if (obj1 != b.p()) goto _L2; else goto _L5
_L5:
        Constructor aconstructor[];
        int i1;
        int j1;
        aconstructor = class1.getConstructors();
        j1 = aconstructor.length;
        i1 = 0;
_L10:
        obj = sw1;
        if (i1 >= j1) goto _L2; else goto _L6
_L6:
        Class aclass[];
        obj = aconstructor[i1];
        aclass = ((Constructor) (obj)).getParameterTypes();
        if (aclass.length != 1 || aclass[0] != obj1) goto _L8; else goto _L7
_L7:
        if (qk1.a(ql.f))
        {
            adz.a(((java.lang.reflect.Member) (obj)));
        }
        obj = new sy(sw1, ((Constructor) (obj)));
_L2:
        return ((sw) (obj));
_L8:
        i1++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    protected Object c(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null)
        {
            return d.a(e.a(ow1, qm1));
        }
        if (f != null)
        {
            return i(ow1, qm1);
        }
        if (b.c())
        {
            throw qw.a(ow1, (new StringBuilder()).append("Can not instantiate abstract type ").append(b).append(" (need to add/enable type information?)").toString());
        } else
        {
            throw qw.a(ow1, (new StringBuilder()).append("No suitable constructor found for type ").append(b).append(": can not instantiate from JSON object (need to add/enable type information?)").toString());
        }
    }

    protected Object c(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        to to1 = p.a();
        while (ow1.e() != pb.c) 
        {
            String s = ow1.g();
            ow1.b();
            sw sw1 = h.a(s);
            if (sw1 != null)
            {
                try
                {
                    sw1.a(ow1, qm1, obj);
                }
                catch (Exception exception)
                {
                    a(exception, obj, s, qm1);
                }
            } else
            if (k != null && k.contains(s))
            {
                ow1.d();
            } else
            if (!to1.a(ow1, qm1, s, obj))
            {
                if (j != null)
                {
                    try
                    {
                        j.a(ow1, qm1, obj, s);
                    }
                    catch (Exception exception1)
                    {
                        a(exception1, obj, s, qm1);
                    }
                } else
                {
                    a(ow1, qm1, obj, s);
                }
            }
            ow1.b();
        }
        return to1.a(ow1, qm1, obj);
    }

    public final Class d()
    {
        return b.p();
    }

    public Object d(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null && !d.c())
        {
            ow1 = ((ow) (d.a(e.a(ow1, qm1))));
            if (i != null)
            {
                a(qm1, ow1);
            }
            return ow1;
        } else
        {
            return d.a(ow1.k());
        }
    }

    public th e()
    {
        return d;
    }

    public Object e(ow ow1, qm qm1)
        throws IOException, oz
    {
        sq.b[ow1.q().ordinal()];
        JVM INSTR tableswitch 1 2: default 32
    //                   1 75
    //                   2 138;
           goto _L1 _L2 _L3
_L1:
        if (e == null) goto _L5; else goto _L4
_L4:
        Object obj = d.a(e.a(ow1, qm1));
        ow1 = ((ow) (obj));
        if (i != null)
        {
            a(qm1, obj);
            ow1 = ((ow) (obj));
        }
_L6:
        return ow1;
_L2:
        if (e != null && !d.d())
        {
            Object obj1 = d.a(e.a(ow1, qm1));
            ow1 = ((ow) (obj1));
            if (i != null)
            {
                a(qm1, obj1);
                return obj1;
            }
        } else
        {
            return d.a(ow1.t());
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
_L3:
        if (e != null && !d.d())
        {
            Object obj2 = d.a(e.a(ow1, qm1));
            ow1 = ((ow) (obj2));
            if (i != null)
            {
                a(qm1, obj2);
                return obj2;
            }
        } else
        {
            return d.a(ow1.u());
        }
        if (true) goto _L6; else goto _L5
_L5:
        throw qm1.a(d(), "no suitable creator method found to deserialize from JSON integer number");
    }

    public Object f(ow ow1, qm qm1)
        throws IOException, oz
    {
        sq.b[ow1.q().ordinal()];
        JVM INSTR tableswitch 3 4: default 32
    //                   3 58
    //                   4 58;
           goto _L1 _L2 _L2
_L1:
        if (e == null) goto _L4; else goto _L3
_L3:
        ow1 = ((ow) (d.a(e.a(ow1, qm1))));
_L5:
        return ow1;
_L2:
        if (e != null && !d.f())
        {
            Object obj = d.a(e.a(ow1, qm1));
            ow1 = ((ow) (obj));
            if (i != null)
            {
                a(qm1, obj);
                return obj;
            }
        } else
        {
            return d.a(ow1.x());
        }
        if (true) goto _L5; else goto _L4
_L4:
        throw qm1.a(d(), "no suitable creator method found to deserialize from JSON floating-point number");
    }

    public Object g(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null && !d.g())
        {
            ow1 = ((ow) (d.a(e.a(ow1, qm1))));
            if (i != null)
            {
                a(qm1, ow1);
            }
            return ow1;
        }
        boolean flag;
        if (ow1.e() == pb.k)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        return d.a(flag);
    }

    public Object h(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        ow1 = ((ow) (d.a(e.a(ow1, qm1))));
        if (i != null)
        {
            a(qm1, ow1);
        }
        return ow1;
        ow1;
        a(ow1, qm1);
        throw qm1.b(d());
    }

    protected final Object i(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj;
        Object obj1;
        tr tr1;
        tw tw1;
        tr1 = f;
        tw1 = tr1.a(ow1, qm1);
        obj1 = ow1.e();
        obj = null;
_L2:
        Object obj2;
        if (obj1 != pb.f)
        {
            break MISSING_BLOCK_LABEL_315;
        }
        obj2 = ow1.g();
        ow1.b();
        sw sw1 = tr1.a(((String) (obj2)));
        if (sw1 == null)
        {
            break MISSING_BLOCK_LABEL_180;
        }
        Object obj3 = sw1.a(ow1, qm1);
        obj1 = obj;
        if (!tw1.a(sw1.j(), obj3))
        {
            break MISSING_BLOCK_LABEL_143;
        }
        ow1.b();
        obj1 = tr1.a(tw1);
        if (obj1.getClass() != b.p())
        {
            return a(ow1, qm1, obj1, ((afz) (obj)));
        }
        break; /* Loop/switch isn't completed */
        obj1;
        a(((Throwable) (obj1)), b.p(), ((String) (obj2)), qm1);
        obj1 = obj;
_L3:
        obj2 = ow1.b();
        obj = obj1;
        obj1 = obj2;
        if (true) goto _L2; else goto _L1
_L1:
        if (obj != null)
        {
            obj = a(qm1, obj1, ((afz) (obj)));
        } else
        {
            obj = obj1;
        }
        return a(ow1, qm1, obj);
        obj1 = h.a(((String) (obj2)));
        if (obj1 != null)
        {
            tw1.a(((sw) (obj1)), ((sw) (obj1)).a(ow1, qm1));
            obj1 = obj;
        } else
        if (k != null && k.contains(obj2))
        {
            ow1.d();
            obj1 = obj;
        } else
        if (j != null)
        {
            tw1.a(j, ((String) (obj2)), j.a(ow1, qm1));
            obj1 = obj;
        } else
        {
            obj1 = obj;
            if (obj == null)
            {
                obj1 = new afz(ow1.a());
            }
            ((afz) (obj1)).a(((String) (obj2)));
            ((afz) (obj1)).c(ow1);
        }
          goto _L3
        try
        {
            ow1 = ((ow) (tr1.a(tw1)));
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            a(ow1, qm1);
            return null;
        }
        if (obj != null)
        {
            if (ow1.getClass() != b.p())
            {
                return a(((ow) (null)), qm1, ow1, ((afz) (obj)));
            } else
            {
                return a(qm1, ow1, ((afz) (obj)));
            }
        } else
        {
            return ow1;
        }
    }

    protected Object j(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (e != null)
        {
            return d.a(e.a(ow1, qm1));
        }
        if (f != null)
        {
            return k(ow1, qm1);
        }
        afz afz1 = new afz(ow1.a());
        afz1.d();
        Object obj = d.m();
        if (i != null)
        {
            a(qm1, obj);
        }
        while (ow1.e() != pb.c) 
        {
            String s = ow1.g();
            ow1.b();
            sw sw1 = h.a(s);
            if (sw1 != null)
            {
                try
                {
                    sw1.a(ow1, qm1, obj);
                }
                catch (Exception exception)
                {
                    a(exception, obj, s, qm1);
                }
            } else
            if (k != null && k.contains(s))
            {
                ow1.d();
            } else
            {
                afz1.a(s);
                afz1.c(ow1);
                if (j != null)
                {
                    try
                    {
                        j.a(ow1, qm1, obj, s);
                    }
                    catch (Exception exception1)
                    {
                        a(exception1, obj, s, qm1);
                    }
                }
            }
            ow1.b();
        }
        afz1.e();
        o.a(ow1, qm1, obj, afz1);
        return obj;
    }

    protected Object k(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj;
        afz afz1;
        tr tr1;
        tw tw1;
        tr1 = f;
        tw1 = tr1.a(ow1, qm1);
        afz1 = new afz(ow1.a());
        afz1.d();
        obj = ow1.e();
_L2:
        String s;
        if (obj != pb.f)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        s = ow1.g();
        ow1.b();
        obj = tr1.a(s);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        Object obj2 = ((sw) (obj)).a(ow1, qm1);
        if (!tw1.a(((sw) (obj)).j(), obj2))
        {
            break MISSING_BLOCK_LABEL_146;
        }
        obj = ow1.b();
        Object obj3 = tr1.a(tw1);
        for (; obj == pb.f; obj = ow1.b())
        {
            ow1.b();
            afz1.c(ow1);
        }

        break; /* Loop/switch isn't completed */
        obj;
        a(((Throwable) (obj)), b.p(), s, qm1);
_L3:
        obj = ow1.b();
        if (true) goto _L2; else goto _L1
_L1:
        afz1.e();
        if (obj3.getClass() != b.p())
        {
            throw qm1.b("Can not create polymorphic instances with unwrapped values");
        } else
        {
            return o.a(ow1, qm1, obj3, afz1);
        }
        sw sw1 = h.a(s);
        if (sw1 != null)
        {
            tw1.a(sw1, sw1.a(ow1, qm1));
        } else
        if (k != null && k.contains(s))
        {
            ow1.d();
        } else
        {
            afz1.a(s);
            afz1.c(ow1);
            if (j != null)
            {
                tw1.a(j, s, j.a(ow1, qm1));
            }
        }
          goto _L3
        Object obj1;
        try
        {
            obj1 = tr1.a(tw1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            a(ow1, qm1);
            return null;
        }
        return o.a(ow1, qm1, obj1, afz1);
    }

    protected Object l(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (f != null)
        {
            return m(ow1, qm1);
        } else
        {
            return c(ow1, qm1, d.m());
        }
    }

    protected Object m(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj;
        to to1;
        afz afz1;
        tr tr1;
        tw tw1;
        to1 = p.a();
        tr1 = f;
        tw1 = tr1.a(ow1, qm1);
        afz1 = new afz(ow1.a());
        afz1.d();
        obj = ow1.e();
_L2:
        String s;
        if (obj != pb.f)
        {
            break MISSING_BLOCK_LABEL_295;
        }
        s = ow1.g();
        ow1.b();
        obj = tr1.a(s);
        if (obj == null)
        {
            break MISSING_BLOCK_LABEL_196;
        }
        Object obj2 = ((sw) (obj)).a(ow1, qm1);
        if (!tw1.a(((sw) (obj)).j(), obj2))
        {
            break MISSING_BLOCK_LABEL_155;
        }
        obj = ow1.b();
        Object obj3 = tr1.a(tw1);
        for (; obj == pb.f; obj = ow1.b())
        {
            ow1.b();
            afz1.c(ow1);
        }

        break; /* Loop/switch isn't completed */
        obj;
        a(((Throwable) (obj)), b.p(), s, qm1);
_L3:
        obj = ow1.b();
        if (true) goto _L2; else goto _L1
_L1:
        if (obj3.getClass() != b.p())
        {
            throw qm1.b("Can not create polymorphic instances with unwrapped values");
        } else
        {
            return to1.a(ow1, qm1, obj3);
        }
        sw sw1 = h.a(s);
        if (sw1 != null)
        {
            tw1.a(sw1, sw1.a(ow1, qm1));
        } else
        if (!to1.a(ow1, qm1, s, null))
        {
            if (k != null && k.contains(s))
            {
                ow1.d();
            } else
            if (j != null)
            {
                tw1.a(j, s, j.a(ow1, qm1));
            }
        }
          goto _L3
        Object obj1;
        try
        {
            obj1 = tr1.a(tw1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            a(ow1, qm1);
            return null;
        }
        return to1.a(ow1, qm1, obj1);
    }
}
