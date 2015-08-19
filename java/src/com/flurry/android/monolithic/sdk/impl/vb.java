// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ug, ro, th, tr, 
//            oz, rw, ow, pb, 
//            qm, qw, qd, sw, 
//            adp, qu, rc, tw, 
//            afm, qk, qq

public class vb extends ug
    implements ro
{

    protected final afm a;
    protected final rc b;
    protected final qu c;
    protected final rw d;
    protected final th e;
    protected final boolean f;
    protected tr g;
    protected qu h;
    protected HashSet i;

    public vb(afm afm1, th th1, rc rc1, qu qu1, rw rw1)
    {
        super(java/util/Map);
        a = afm1;
        b = rc1;
        c = qu1;
        d = rw1;
        e = th1;
        if (th1.j())
        {
            g = new tr(th1);
        } else
        {
            g = null;
        }
        f = th1.h();
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.a(ow1, qm1);
    }

    public volatile Object a(ow ow1, qm qm1, Object obj)
        throws IOException, oz
    {
        return a(ow1, qm1, (Map)obj);
    }

    public Map a(ow ow1, qm qm1, Map map)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 != pb.b && pb1 != pb.f)
        {
            throw qm1.b(e());
        } else
        {
            b(ow1, qm1, map);
            return map;
        }
    }

    public void a(qk qk, qq qq)
        throws qw
    {
        if (e.i())
        {
            afm afm1 = e.l();
            if (afm1 == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid delegate-creator definition for ").append(a).append(": value instantiator (").append(e.getClass().getName()).append(") returned true for 'canCreateUsingDelegate()', but null for 'getDelegateType()'").toString());
            }
            h = a(qk, qq, afm1, ((qc) (new qd(null, afm1, null, e.o()))));
        }
        if (g != null)
        {
            Iterator iterator = g.a().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                sw sw1 = (sw)iterator.next();
                if (!sw1.f())
                {
                    g.a(sw1, a(qk, qq, sw1.a(), ((qc) (sw1))));
                }
            } while (true);
        }
    }

    protected void a(Throwable throwable, Object obj)
        throws IOException
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        if ((throwable instanceof IOException) && !(throwable instanceof qw))
        {
            throw (IOException)throwable;
        } else
        {
            throw qw.a(throwable, obj, null);
        }
    }

    public void a(String as[])
    {
        if (as == null || as.length == 0)
        {
            as = null;
        } else
        {
            as = adp.a(as);
        }
        i = as;
    }

    public Map b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (g != null)
        {
            return c(ow1, qm1);
        }
        if (h != null)
        {
            return (Map)e.a(h.a(ow1, qm1));
        }
        if (!f)
        {
            throw qm1.a(e(), "No default constructor found");
        }
        pb pb1 = ow1.e();
        if (pb1 != pb.b && pb1 != pb.f && pb1 != pb.c)
        {
            if (pb1 == pb.h)
            {
                return (Map)e.a(ow1.k());
            } else
            {
                throw qm1.b(e());
            }
        } else
        {
            Map map = (Map)e.m();
            b(ow1, qm1, map);
            return map;
        }
    }

    protected final void b(ow ow1, qm qm1, Map map)
        throws IOException, oz
    {
        Object obj2 = ow1.e();
        Object obj = obj2;
        if (obj2 == pb.b)
        {
            obj = ow1.b();
        }
        obj2 = b;
        qu qu1 = c;
        rw rw1 = d;
        while (obj == pb.f) 
        {
            obj = ow1.g();
            Object obj3 = ((rc) (obj2)).a(((String) (obj)), qm1);
            pb pb1 = ow1.b();
            if (i != null && i.contains(obj))
            {
                ow1.d();
            } else
            {
                Object obj1;
                if (pb1 == pb.m)
                {
                    obj1 = null;
                } else
                if (rw1 == null)
                {
                    obj1 = qu1.a(ow1, qm1);
                } else
                {
                    obj1 = qu1.a(ow1, qm1, rw1);
                }
                map.put(obj3, obj1);
            }
            obj = ow1.b();
        }
    }

    public Map c(ow ow1, qm qm1)
        throws IOException, oz
    {
        tr tr1 = g;
        tw tw1 = tr1.a(ow1, qm1);
        Object obj1 = ow1.e();
        Object obj = obj1;
        if (obj1 == pb.b)
        {
            obj = ow1.b();
        }
        obj1 = c;
        rw rw1 = d;
        while (obj == pb.f) 
        {
            Object obj2 = ow1.g();
            obj = ow1.b();
            if (i != null && i.contains(obj2))
            {
                ow1.d();
            } else
            {
                obj2 = tr1.a(((String) (obj2)));
                if (obj2 != null)
                {
                    obj = ((sw) (obj2)).a(ow1, qm1);
                    if (tw1.a(((sw) (obj2)).j(), obj))
                    {
                        ow1.b();
                        try
                        {
                            obj = (Map)tr1.a(tw1);
                        }
                        // Misplaced declaration of an exception variable
                        catch (ow ow1)
                        {
                            a(ow1, a.p());
                            return null;
                        }
                        b(ow1, qm1, ((Map) (obj)));
                        return ((Map) (obj));
                    }
                } else
                {
                    Object obj3 = ow1.g();
                    obj3 = b.a(((String) (obj3)), qm1);
                    if (obj == pb.m)
                    {
                        obj = null;
                    } else
                    if (rw1 == null)
                    {
                        obj = ((qu) (obj1)).a(ow1, qm1);
                    } else
                    {
                        obj = ((qu) (obj1)).a(ow1, qm1, rw1);
                    }
                    tw1.a(obj3, obj);
                }
            }
            obj = ow1.b();
        }
        try
        {
            ow1 = (Map)tr1.a(tw1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            a(ow1, a.p());
            return null;
        }
        return ow1;
    }

    public qu d()
    {
        return c;
    }

    public final Class e()
    {
        return a.p();
    }
}
