// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xo, xp, adj, afm

public final class xi extends xo
{

    protected final Constructor a;

    public xi(Constructor constructor, xp xp, xp axp[])
    {
        super(xp, axp);
        if (constructor == null)
        {
            throw new IllegalArgumentException("Null constructor not allowed");
        } else
        {
            a = constructor;
            return;
        }
    }

    public afm a(adj adj)
    {
        return a(adj, a.getTypeParameters());
    }

    public Class a(int j)
    {
        Class aclass[] = a.getParameterTypes();
        if (j >= aclass.length)
        {
            return null;
        } else
        {
            return aclass[j];
        }
    }

    public final Object a(Object obj)
        throws Exception
    {
        return a.newInstance(new Object[] {
            obj
        });
    }

    public final Object a(Object aobj[])
        throws Exception
    {
        return a.newInstance(aobj);
    }

    public AnnotatedElement a()
    {
        return e();
    }

    public void a(Object obj, Object obj1)
        throws UnsupportedOperationException
    {
        throw new UnsupportedOperationException((new StringBuilder()).append("Cannot call setValue() on constructor of ").append(h().getName()).toString());
    }

    public String b()
    {
        return a.getName();
    }

    public Type b(int j)
    {
        Type atype[] = a.getGenericParameterTypes();
        if (j >= atype.length)
        {
            return null;
        } else
        {
            return atype[j];
        }
    }

    public Type c()
    {
        return d();
    }

    public Class d()
    {
        return a.getDeclaringClass();
    }

    public Constructor e()
    {
        return a;
    }

    public int f()
    {
        return a.getParameterTypes().length;
    }

    public final Object g()
        throws Exception
    {
        return a.newInstance(new Object[0]);
    }

    public Class h()
    {
        return a.getDeclaringClass();
    }

    public Member i()
    {
        return a;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[constructor for ").append(b()).append(", annotations: ").append(b).append("]").toString();
    }
}
