// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adi, afm

public class adf extends adi
{

    protected final afm a;
    protected final afm b;

    protected adf(Class class1, afm afm1, afm afm2, Object obj, Object obj1)
    {
        super(class1, afm1.hashCode() ^ afm2.hashCode(), obj, obj1);
        a = afm1;
        b = afm2;
    }

    public adf a(Object obj)
    {
        return new adf(d, a, b, f, obj);
    }

    protected afm a(Class class1)
    {
        return new adf(class1, a, b, f, g);
    }

    protected String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(d.getName());
        if (a != null)
        {
            stringbuilder.append('<');
            stringbuilder.append(a.m());
            stringbuilder.append(',');
            stringbuilder.append(b.m());
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public String a(int i)
    {
        if (i == 0)
        {
            return "K";
        }
        if (i == 1)
        {
            return "V";
        } else
        {
            return null;
        }
    }

    public adf b(Object obj)
    {
        return new adf(d, a, b.f(obj), f, g);
    }

    public afm b(int i)
    {
        if (i == 0)
        {
            return a;
        }
        if (i == 1)
        {
            return b;
        } else
        {
            return null;
        }
    }

    public afm b(Class class1)
    {
        if (class1 == b.p())
        {
            return this;
        } else
        {
            return new adf(d, a, b.f(class1), f, g);
        }
    }

    public adf c(Object obj)
    {
        return new adf(d, a, b, obj, g);
    }

    public afm c(Class class1)
    {
        if (class1 == b.p())
        {
            return this;
        } else
        {
            return new adf(d, a, b.h(class1), f, g);
        }
    }

    public afm d(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new adf(d, a.f(class1), b, f, g);
        }
    }

    public afm d(Object obj)
    {
        return c(obj);
    }

    public afm e(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new adf(d, a.h(class1), b, f, g);
        }
    }

    public afm e(Object obj)
    {
        return b(obj);
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            obj = (adf)obj;
            if (d != ((adf) (obj)).d || !a.equals(((adf) (obj)).a) || !b.equals(((adf) (obj)).b))
            {
                return false;
            }
        }
        return true;
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
        return b;
    }

    public int h()
    {
        return 2;
    }

    public boolean j()
    {
        return true;
    }

    public afm k()
    {
        return a;
    }

    public boolean l()
    {
        return java/util/Map.isAssignableFrom(d);
    }

    public String toString()
    {
        return (new StringBuilder()).append("[map-like type; class ").append(d.getName()).append(", ").append(a).append(" -> ").append(b).append("]").toString();
    }
}
