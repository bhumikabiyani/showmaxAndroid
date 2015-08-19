// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adf, afm

public final class adg extends adf
{

    private adg(Class class1, afm afm1, afm afm2, Object obj, Object obj1)
    {
        super(class1, afm1, afm2, obj, obj1);
    }

    public static adg a(Class class1, afm afm1, afm afm2)
    {
        return new adg(class1, afm1, afm2, null, null);
    }

    public adf a(Object obj)
    {
        return g(obj);
    }

    protected afm a(Class class1)
    {
        return new adg(class1, a, b, f, g);
    }

    public adf b(Object obj)
    {
        return h(obj);
    }

    public afm b(Class class1)
    {
        if (class1 == b.p())
        {
            return this;
        } else
        {
            return new adg(d, a, b.f(class1), f, g);
        }
    }

    public adf c(Object obj)
    {
        return i(obj);
    }

    public afm c(Class class1)
    {
        if (class1 == b.p())
        {
            return this;
        } else
        {
            return new adg(d, a, b.h(class1), f, g);
        }
    }

    public afm d(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new adg(d, a.f(class1), b, f, g);
        }
    }

    public afm d(Object obj)
    {
        return i(obj);
    }

    public afm e(Class class1)
    {
        if (class1 == a.p())
        {
            return this;
        } else
        {
            return new adg(d, a.h(class1), b, f, g);
        }
    }

    public afm e(Object obj)
    {
        return h(obj);
    }

    public afm f(Object obj)
    {
        return g(obj);
    }

    public adg g(Object obj)
    {
        return new adg(d, a, b, f, obj);
    }

    public adg h(Object obj)
    {
        return new adg(d, a, b.f(obj), f, g);
    }

    public adg i(Object obj)
    {
        return new adg(d, a, b, obj, g);
    }

    public String toString()
    {
        return (new StringBuilder()).append("[map type; class ").append(d.getName()).append(", ").append(a).append(" -> ").append(b).append("]").toString();
    }
}
