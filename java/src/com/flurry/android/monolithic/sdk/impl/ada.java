// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Array;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adi, afm, adk

public final class ada extends adi
{

    protected final afm a;
    protected final Object b;

    private ada(afm afm1, Object obj, Object obj1, Object obj2)
    {
        super(obj.getClass(), afm1.hashCode(), obj1, obj2);
        a = afm1;
        b = obj;
    }

    public static ada a(afm afm1, Object obj, Object obj1)
    {
        return new ada(afm1, Array.newInstance(afm1.p(), 0), null, null);
    }

    public ada a(Object obj)
    {
        if (obj == g)
        {
            return this;
        } else
        {
            return new ada(a, b, f, obj);
        }
    }

    protected afm a(Class class1)
    {
        if (!class1.isArray())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Incompatible narrowing operation: trying to narrow ").append(toString()).append(" to class ").append(class1.getName()).toString());
        } else
        {
            class1 = class1.getComponentType();
            return a(adk.a().a(class1), f, g);
        }
    }

    protected String a()
    {
        return d.getName();
    }

    public String a(int i)
    {
        if (i == 0)
        {
            return "E";
        } else
        {
            return null;
        }
    }

    public ada b(Object obj)
    {
        if (obj == a.o())
        {
            return this;
        } else
        {
            return new ada(a.f(obj), b, f, g);
        }
    }

    public afm b(int i)
    {
        if (i == 0)
        {
            return a;
        } else
        {
            return null;
        }
    }

    public afm b(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return a(a.f(class1), f, g);
        }
    }

    public boolean b()
    {
        return true;
    }

    public ada c(Object obj)
    {
        if (obj == f)
        {
            return this;
        } else
        {
            return new ada(a, b, obj, g);
        }
    }

    public afm c(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return a(a.h(class1), f, g);
        }
    }

    public boolean c()
    {
        return false;
    }

    public afm d(Object obj)
    {
        return c(obj);
    }

    public boolean d()
    {
        return true;
    }

    public afm e(Object obj)
    {
        return b(obj);
    }

    public boolean e()
    {
        return a.e();
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (obj.getClass() == getClass())
                {
                    obj = (ada)obj;
                    return a.equals(((ada) (obj)).a);
                }
            }
        }
        return flag;
    }

    public afm f(Object obj)
    {
        return a(obj);
    }

    public boolean f()
    {
        return true;
    }

    public afm g()
    {
        return a;
    }

    public int h()
    {
        return 1;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[array type, component type: ").append(a).append("]").toString();
    }
}
