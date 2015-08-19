// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qb, rf, yb, adj, 
//            py, xh, xi, xl, 
//            qe, pz, afm, sf, 
//            ado

public class xq extends qb
{

    protected final rf b;
    protected final py c;
    protected final xh d;
    protected adj e;
    protected final List f;
    protected xl g;
    protected Map h;
    protected Set i;
    protected Set j;
    protected xl k;
    protected xl l;

    protected xq(rf rf1, afm afm, xh xh1, List list)
    {
        super(afm);
        b = rf1;
        if (rf1 == null)
        {
            rf1 = null;
        } else
        {
            rf1 = rf1.a();
        }
        c = rf1;
        d = xh1;
        f = list;
    }

    public static xq a(rf rf1, afm afm, xh xh1)
    {
        return new xq(rf1, afm, xh1, Collections.emptyList());
    }

    public static xq a(yb yb1)
    {
        xq xq1 = new xq(yb1.a(), yb1.b(), yb1.c(), yb1.d());
        xq1.g = yb1.h();
        xq1.i = yb1.i();
        xq1.j = yb1.j();
        xq1.h = yb1.e();
        return xq1;
    }

    public static xq b(yb yb1)
    {
        xq xq1 = new xq(yb1.a(), yb1.b(), yb1.c(), yb1.d());
        xq1.k = yb1.f();
        xq1.l = yb1.g();
        return xq1;
    }

    public afm a(Type type)
    {
        if (type == null)
        {
            return null;
        } else
        {
            return j().a(type);
        }
    }

    public sf a(sf sf)
    {
        if (c == null)
        {
            return sf;
        } else
        {
            return c.a(d, sf);
        }
    }

    public xl a(String s, Class aclass[])
    {
        return d.a(s, aclass);
    }

    public Object a(boolean flag)
    {
        Object obj1;
        Object obj = d.h();
        if (obj == null)
        {
            return null;
        }
        if (flag)
        {
            ((xi) (obj)).k();
        }
        try
        {
            obj = ((xi) (obj)).e().newInstance(new Object[0]);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj1)
        {
            for (; ((Throwable) (obj1)).getCause() != null; obj1 = ((Throwable) (obj1)).getCause()) { }
            if (obj1 instanceof Error)
            {
                throw (Error)obj1;
            }
            if (obj1 instanceof RuntimeException)
            {
                throw (RuntimeException)obj1;
            } else
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Failed to instantiate bean of type ").append(d.e().getName()).append(": (").append(obj1.getClass().getName()).append(") ").append(((Throwable) (obj1)).getMessage()).toString(), ((Throwable) (obj1)));
            }
        }
        return obj;
    }

    public transient Constructor a(Class aclass[])
    {
        Iterator iterator = d.i().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xi xi1 = (xi)iterator.next();
            if (xi1.f() == 1)
            {
                Class class1 = xi1.a(0);
                int j1 = aclass.length;
                int i1 = 0;
                while (i1 < j1) 
                {
                    if (aclass[i1] == class1)
                    {
                        return xi1.e();
                    }
                    i1++;
                }
            }
        } while (true);
        return null;
    }

    protected boolean a(xl xl1)
    {
        Class class1 = xl1.d();
        if (b().isAssignableFrom(class1))
        {
            if (c.k(xl1))
            {
                return true;
            }
            if ("valueOf".equals(xl1.b()))
            {
                return true;
            }
        }
        return false;
    }

    public transient Method b(Class aclass[])
    {
        Iterator iterator = d.j().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            xl xl1 = (xl)iterator.next();
            if (a(xl1))
            {
                Class class1 = xl1.a(0);
                int j1 = aclass.length;
                int i1 = 0;
                while (i1 < j1) 
                {
                    if (class1.isAssignableFrom(aclass[i1]))
                    {
                        return xl1.e();
                    }
                    i1++;
                }
            }
        } while (true);
        return null;
    }

    public xh c()
    {
        return d;
    }

    public List d()
    {
        return f;
    }

    public xl e()
    {
        return k;
    }

    public Set f()
    {
        if (i == null)
        {
            return Collections.emptySet();
        } else
        {
            return i;
        }
    }

    public Set g()
    {
        return j;
    }

    public boolean h()
    {
        return d.g();
    }

    public ado i()
    {
        return d.f();
    }

    public adj j()
    {
        if (e == null)
        {
            e = new adj(b.m(), a);
        }
        return e;
    }

    public xi k()
    {
        return d.h();
    }

    public xl l()
        throws IllegalArgumentException
    {
        if (g != null)
        {
            Class class1 = g.a(0);
            if (class1 != java/lang/String && class1 != java/lang/Object)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Invalid 'any-setter' annotation on method ").append(g.b()).append("(): first argument not of type String or Object, but ").append(class1.getName()).toString());
            }
        }
        return g;
    }

    public Map m()
    {
        return h;
    }

    public List n()
    {
        return d.i();
    }

    public List o()
    {
        Object obj = d.j();
        if (((List) (obj)).isEmpty())
        {
            return ((List) (obj));
        }
        ArrayList arraylist = new ArrayList();
        obj = ((List) (obj)).iterator();
        do
        {
            if (!((Iterator) (obj)).hasNext())
            {
                break;
            }
            xl xl1 = (xl)((Iterator) (obj)).next();
            if (a(xl1))
            {
                arraylist.add(xl1);
            }
        } while (true);
        return arraylist;
    }

    public xl p()
        throws IllegalArgumentException
    {
        if (l != null && !java/util/Map.isAssignableFrom(l.d()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid 'any-getter' annotation on method ").append(l.b()).append("(): return type is not instance of java.util.Map").toString());
        } else
        {
            return l;
        }
    }

    public Map q()
    {
        HashMap hashmap = null;
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            xk xk = ((qe)iterator.next()).k();
            if (xk != null)
            {
                Object obj = c.a(xk);
                if (obj != null && ((pz) (obj)).c())
                {
                    if (hashmap == null)
                    {
                        hashmap = new HashMap();
                    }
                    obj = ((pz) (obj)).a();
                    if (hashmap.put(obj, xk) != null)
                    {
                        throw new IllegalArgumentException((new StringBuilder()).append("Multiple back-reference properties with name '").append(((String) (obj))).append("'").toString());
                    }
                }
            }
        }

        return hashmap;
    }
}
