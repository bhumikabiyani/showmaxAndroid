// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adc, afm

public final class add extends adc
{

    private add(Class class1, afm afm1, Object obj, Object obj1)
    {
        super(class1, afm1, obj, obj1);
    }

    public static add a(Class class1, afm afm1)
    {
        return new add(class1, afm1, null, null);
    }

    public adc a(Object obj)
    {
        return g(obj);
    }

    protected afm a(Class class1)
    {
        return new add(class1, a, null, null);
    }

    public adc b(Object obj)
    {
        return h(obj);
    }

    public afm b(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new add(d, a.f(class1), f, g);
        }
    }

    public adc c(Object obj)
    {
        return i(obj);
    }

    public afm c(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new add(d, a.h(class1), f, g);
        }
    }

    public afm d(Object obj)
    {
        return i(obj);
    }

    public afm e(Object obj)
    {
        return h(obj);
    }

    public afm f(Object obj)
    {
        return g(obj);
    }

    public add g(Object obj)
    {
        return new add(d, a, f, obj);
    }

    public add h(Object obj)
    {
        return new add(d, a.f(obj), f, g);
    }

    public add i(Object obj)
    {
        return new add(d, a, obj, g);
    }

    public String toString()
    {
        return (new StringBuilder()).append("[collection type; class ").append(d.getName()).append(", contains ").append(a).append("]").toString();
    }
}
