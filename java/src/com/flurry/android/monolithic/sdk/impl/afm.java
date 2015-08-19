// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Modifier;

public abstract class afm
{

    protected final Class d;
    protected final int e;
    protected Object f;
    protected Object g;

    protected afm(Class class1, int l)
    {
        d = class1;
        e = class1.getName().hashCode() + l;
        f = null;
        g = null;
    }

    protected abstract afm a(Class class1);

    public String a(int l)
    {
        return null;
    }

    protected void a(Class class1, Class class2)
    {
        if (!d.isAssignableFrom(class1))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getName()).append(" is not assignable to ").append(d.getName()).toString());
        } else
        {
            return;
        }
    }

    public afm b(int l)
    {
        return null;
    }

    public abstract afm b(Class class1);

    public boolean b()
    {
        return false;
    }

    public abstract afm c(Class class1);

    public boolean c()
    {
        return Modifier.isAbstract(d.getModifiers());
    }

    public afm d(Object obj)
    {
        j(obj);
        return this;
    }

    public boolean d()
    {
        while ((d.getModifiers() & 0x600) == 0 || d.isPrimitive()) 
        {
            return true;
        }
        return false;
    }

    public abstract afm e(Object obj);

    public boolean e()
    {
        return h() > 0;
    }

    public abstract boolean equals(Object obj);

    public afm f(Class class1)
    {
        if (class1 == d)
        {
            return this;
        }
        a(class1, d);
        Object obj = a(class1);
        class1 = ((Class) (obj));
        if (f != ((afm) (obj)).n())
        {
            class1 = ((afm) (obj)).d(f);
        }
        obj = class1;
        if (g != class1.o())
        {
            obj = class1.f(g);
        }
        return ((afm) (obj));
    }

    public abstract afm f(Object obj);

    public abstract boolean f();

    public afm g()
    {
        return null;
    }

    public afm g(Class class1)
    {
        if (class1 == d)
        {
            return this;
        }
        Object obj = a(class1);
        class1 = ((Class) (obj));
        if (f != ((afm) (obj)).n())
        {
            class1 = ((afm) (obj)).d(f);
        }
        obj = class1;
        if (g != class1.o())
        {
            obj = class1.f(g);
        }
        return ((afm) (obj));
    }

    public int h()
    {
        return 0;
    }

    public afm h(Class class1)
    {
        if (class1 == d)
        {
            return this;
        } else
        {
            a(d, class1);
            return i(class1);
        }
    }

    public final int hashCode()
    {
        return e;
    }

    protected afm i(Class class1)
    {
        return a(class1);
    }

    public boolean i()
    {
        return false;
    }

    public void j(Object obj)
    {
        if (obj != null && f != null)
        {
            throw new IllegalStateException((new StringBuilder()).append("Trying to reset value handler for type [").append(toString()).append("]; old handler of type ").append(f.getClass().getName()).append(", new handler of type ").append(obj.getClass().getName()).toString());
        } else
        {
            f = obj;
            return;
        }
    }

    public boolean j()
    {
        return false;
    }

    public afm k()
    {
        return null;
    }

    public abstract String m();

    public Object n()
    {
        return f;
    }

    public Object o()
    {
        return g;
    }

    public final Class p()
    {
        return d;
    }

    public boolean q()
    {
        return java/lang/Throwable.isAssignableFrom(d);
    }

    public final boolean r()
    {
        return d.isEnum();
    }

    public final boolean s()
    {
        return d.isInterface();
    }

    public final boolean t()
    {
        return d.isPrimitive();
    }

    public abstract String toString();

    public final boolean u()
    {
        return Modifier.isFinal(d.getModifiers());
    }
}
