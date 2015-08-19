// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Type;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xo, xp, adj, afm

public final class xl extends xo
{

    protected final Method a;
    protected Class c[];

    public xl(Method method, xp xp, xp axp[])
    {
        super(xp, axp);
        a = method;
    }

    public afm a(adj adj)
    {
        return a(adj, a.getTypeParameters());
    }

    public xl a(xp xp)
    {
        return new xl(a, xp, d);
    }

    public xl a(Method method)
    {
        return new xl(method, b, d);
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
        return a.invoke(null, new Object[] {
            obj
        });
    }

    public final Object a(Object aobj[])
        throws Exception
    {
        return a.invoke(null, aobj);
    }

    public AnnotatedElement a()
    {
        return e();
    }

    public void a(Object obj, Object obj1)
        throws IllegalArgumentException
    {
        try
        {
            a.invoke(obj, new Object[] {
                obj1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Failed to setValue() with method ").append(n()).append(": ").append(((IllegalAccessException) (obj)).getMessage()).toString(), ((Throwable) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Failed to setValue() with method ").append(n()).append(": ").append(((InvocationTargetException) (obj)).getMessage()).toString(), ((Throwable) (obj)));
        }
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
        return a.getGenericReturnType();
    }

    public Class d()
    {
        return a.getReturnType();
    }

    public Method e()
    {
        return a;
    }

    public int f()
    {
        return l().length;
    }

    public final Object g()
        throws Exception
    {
        return a.invoke(null, new Object[0]);
    }

    public Class h()
    {
        return a.getDeclaringClass();
    }

    public Member i()
    {
        return a;
    }

    public Type[] l()
    {
        return a.getGenericParameterTypes();
    }

    public Class[] m()
    {
        if (c == null)
        {
            c = a.getParameterTypes();
        }
        return c;
    }

    public String n()
    {
        return (new StringBuilder()).append(h().getName()).append("#").append(b()).append("(").append(f()).append(" params)").toString();
    }

    public String toString()
    {
        return (new StringBuilder()).append("[method ").append(b()).append(", annotations: ").append(b).append("]").toString();
    }
}
