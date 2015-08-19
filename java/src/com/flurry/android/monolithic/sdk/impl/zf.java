// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Type;
import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qc, aal, pw, qw, 
//            ru, aap, or, ra, 
//            aaw, xk, ado, afm, 
//            rx

public class zf
    implements qc
{

    protected final xk a;
    protected final ado b;
    protected final afm c;
    protected final Method d;
    protected final Field e;
    protected HashMap f;
    protected final pw g;
    protected final afm h;
    protected final ra i;
    protected aal j;
    protected final boolean k;
    protected final Object l;
    protected Class m[];
    protected rx n;
    protected afm o;

    public zf(xk xk, ado ado, pw pw1, afm afm, ra ra1, rx rx, afm afm1, 
            Method method, Field field, boolean flag, Object obj)
    {
        a = xk;
        b = ado;
        g = pw1;
        c = afm;
        i = ra1;
        if (ra1 == null)
        {
            xk = aal.a();
        } else
        {
            xk = null;
        }
        j = xk;
        n = rx;
        h = afm1;
        d = method;
        e = field;
        k = flag;
        l = obj;
    }

    public zf(xk xk, ado ado, String s, afm afm, ra ra1, rx rx, afm afm1, 
            Method method, Field field, boolean flag, Object obj)
    {
        this(xk, ado, new pw(s), afm, ra1, rx, afm1, method, field, flag, obj);
    }

    protected zf(zf zf1)
    {
        this(zf1, zf1.i);
    }

    protected zf(zf zf1, ra ra1)
    {
        i = ra1;
        a = zf1.a;
        b = zf1.b;
        c = zf1.c;
        d = zf1.d;
        e = zf1.e;
        if (zf1.f != null)
        {
            f = new HashMap(zf1.f);
        }
        g = zf1.g;
        h = zf1.h;
        j = zf1.j;
        k = zf1.k;
        l = zf1.l;
        m = zf1.m;
        n = zf1.n;
        o = zf1.o;
    }

    public afm a()
    {
        return c;
    }

    protected ra a(aal aal1, Class class1, ru ru1)
        throws qw
    {
        if (o != null)
        {
            class1 = aal1.a(ru1.a(o, class1), ru1, this);
        } else
        {
            class1 = aal1.a(class1, ru1, this);
        }
        if (aal1 != ((aap) (class1)).b)
        {
            j = ((aap) (class1)).b;
        }
        return ((aap) (class1)).a;
    }

    public zf a(ra ra1)
    {
        if (getClass() != com/flurry/android/monolithic/sdk/impl/zf)
        {
            throw new IllegalStateException("BeanPropertyWriter sub-class does not override 'withSerializer()'; needs to!");
        } else
        {
            return new zf(this, ra1);
        }
    }

    public final Object a(Object obj)
        throws Exception
    {
        if (d != null)
        {
            return d.invoke(obj, new Object[0]);
        } else
        {
            return e.get(obj);
        }
    }

    public void a(afm afm)
    {
        o = afm;
    }

    public void a(Object obj, or or1, ru ru1)
        throws Exception
    {
        Object obj1 = a(obj);
        if (obj1 == null)
        {
            if (!k)
            {
                or1.a(g);
                ru1.a(or1);
            }
        } else
        {
            if (obj1 == obj)
            {
                b(obj);
            }
            if (l == null || !l.equals(obj1))
            {
                ra ra1 = i;
                obj = ra1;
                if (ra1 == null)
                {
                    Class class1 = obj1.getClass();
                    aal aal1 = j;
                    ra ra2 = aal1.a(class1);
                    obj = ra2;
                    if (ra2 == null)
                    {
                        obj = a(aal1, class1, ru1);
                    }
                }
                or1.a(g);
                if (n == null)
                {
                    ((ra) (obj)).a(obj1, or1, ru1);
                    return;
                } else
                {
                    ((ra) (obj)).a(obj1, or1, ru1, n);
                    return;
                }
            }
        }
    }

    public void a(Class aclass[])
    {
        m = aclass;
    }

    public xk b()
    {
        return a;
    }

    protected void b(Object obj)
        throws qw
    {
        throw new qw("Direct self-reference leading to cycle");
    }

    public zf c()
    {
        return new aaw(this);
    }

    public String d()
    {
        return g.a();
    }

    public boolean e()
    {
        return i != null;
    }

    public afm f()
    {
        return h;
    }

    public Type g()
    {
        if (d != null)
        {
            return d.getGenericReturnType();
        } else
        {
            return e.getGenericType();
        }
    }

    public Class[] h()
    {
        return m;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder(40);
        stringbuilder.append("property '").append(d()).append("' (");
        if (d != null)
        {
            stringbuilder.append("via method ").append(d.getDeclaringClass().getName()).append("#").append(d.getName());
        } else
        {
            stringbuilder.append("field \"").append(e.getDeclaringClass().getName()).append("#").append(e.getName());
        }
        if (i == null)
        {
            stringbuilder.append(", no static serializer");
        } else
        {
            stringbuilder.append((new StringBuilder()).append(", static serializer of type ").append(i.getClass().getName()).toString());
        }
        stringbuilder.append(')');
        return stringbuilder.toString();
    }
}
