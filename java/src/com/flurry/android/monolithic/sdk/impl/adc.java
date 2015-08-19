// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adi, afm

public class adc extends adi
{

    protected final afm a;

    protected adc(Class class1, afm afm1, Object obj, Object obj1)
    {
        super(class1, afm1.hashCode(), obj, obj1);
        a = afm1;
    }

    public adc a(Object obj)
    {
        return new adc(d, a, f, obj);
    }

    protected afm a(Class class1)
    {
        return new adc(class1, a, f, g);
    }

    protected String a()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(d.getName());
        if (a != null)
        {
            stringbuilder.append('<');
            stringbuilder.append(a.m());
            stringbuilder.append('>');
        }
        return stringbuilder.toString();
    }

    public String a(int j)
    {
        if (j == 0)
        {
            return "E";
        } else
        {
            return null;
        }
    }

    public boolean a_()
    {
        return java/util/Collection.isAssignableFrom(d);
    }

    public adc b(Object obj)
    {
        return new adc(d, a.f(obj), f, g);
    }

    public afm b(int j)
    {
        if (j == 0)
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
            return new adc(d, a.f(class1), f, g);
        }
    }

    public adc c(Object obj)
    {
        return new adc(d, a, obj, g);
    }

    public afm c(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new adc(d, a.h(class1), f, g);
        }
    }

    public afm d(Object obj)
    {
        return c(obj);
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
            obj = (adc)obj;
            if (d != ((adc) (obj)).d || !a.equals(((adc) (obj)).a))
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
        return a;
    }

    public int h()
    {
        return 1;
    }

    public boolean i()
    {
        return true;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[collection-like type; class ").append(d.getName()).append(", contains ").append(a).append("]").toString();
    }
}
