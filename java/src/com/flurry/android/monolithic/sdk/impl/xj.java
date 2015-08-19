// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Type;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xk, xp

public final class xj extends xk
{

    protected final Field a;

    public xj(Field field, xp xp1)
    {
        super(xp1);
        a = field;
    }

    public xj a(xp xp1)
    {
        return new xj(a, xp1);
    }

    public Annotation a(Class class1)
    {
        return b.a(class1);
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
            a.set(obj, obj1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Failed to setValue() for field ").append(f()).append(": ").append(((IllegalAccessException) (obj)).getMessage()).toString(), ((Throwable) (obj)));
        }
    }

    public void a(Annotation annotation)
    {
        b.b(annotation);
    }

    public String b()
    {
        return a.getName();
    }

    public Type c()
    {
        return a.getGenericType();
    }

    public Class d()
    {
        return a.getType();
    }

    public Field e()
    {
        return a;
    }

    public String f()
    {
        return (new StringBuilder()).append(h().getName()).append("#").append(b()).toString();
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
        return (new StringBuilder()).append("[field ").append(b()).append(", annotations: ").append(b).append("]").toString();
    }
}
