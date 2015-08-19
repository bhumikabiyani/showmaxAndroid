// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xk, xo, xp, adk, 
//            afm

public final class xn extends xk
{

    protected final xo a;
    protected final Type c;
    protected final int d;

    public xn(xo xo1, Type type, xp xp1, int j)
    {
        super(xp1);
        a = xo1;
        c = type;
        d = j;
    }

    public xn a(xp xp1)
    {
        if (xp1 == b)
        {
            return this;
        } else
        {
            return a.a(d, xp1);
        }
    }

    public Annotation a(Class class1)
    {
        return b.a(class1);
    }

    public AnnotatedElement a()
    {
        return null;
    }

    public void a(Object obj, Object obj1)
        throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException((new StringBuilder()).append("Cannot call setValue() on constructor parameter of ").append(h().getName()).toString());
    }

    public String b()
    {
        return "";
    }

    public Type c()
    {
        return c;
    }

    public Class d()
    {
        if (c instanceof Class)
        {
            return (Class)c;
        } else
        {
            return adk.a().a(c).p();
        }
    }

    public Type e()
    {
        return c;
    }

    public xo f()
    {
        return a;
    }

    public int g()
    {
        return d;
    }

    public Class h()
    {
        return a.h();
    }

    public Member i()
    {
        return a.i();
    }

    public String toString()
    {
        return (new StringBuilder()).append("[parameter #").append(g()).append(", annotations: ").append(b).append("]").toString();
    }
}
