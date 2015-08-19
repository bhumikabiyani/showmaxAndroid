// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public class ade
{

    protected final Type a;
    protected final Class b;
    protected final ParameterizedType c;
    protected ade d;
    protected ade e;

    public ade(Type type)
    {
        a = type;
        if (type instanceof Class)
        {
            b = (Class)type;
            c = null;
            return;
        }
        if (type instanceof ParameterizedType)
        {
            c = (ParameterizedType)type;
            b = (Class)c.getRawType();
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Type ").append(type.getClass().getName()).append(" can not be used to construct HierarchicType").toString());
        }
    }

    private ade(Type type, Class class1, ParameterizedType parameterizedtype, ade ade1, ade ade2)
    {
        a = type;
        b = class1;
        c = parameterizedtype;
        d = ade1;
        e = ade2;
    }

    public ade a()
    {
        ade ade1;
        ade ade2;
        if (d == null)
        {
            ade1 = null;
        } else
        {
            ade1 = d.a();
        }
        ade2 = new ade(a, b, c, ade1, null);
        if (ade1 != null)
        {
            ade1.b(ade2);
        }
        return ade2;
    }

    public void a(ade ade1)
    {
        d = ade1;
    }

    public final ade b()
    {
        return d;
    }

    public void b(ade ade1)
    {
        e = ade1;
    }

    public final boolean c()
    {
        return c != null;
    }

    public final ParameterizedType d()
    {
        return c;
    }

    public final Class e()
    {
        return b;
    }

    public String toString()
    {
        if (c != null)
        {
            return c.toString();
        } else
        {
            return b.getName();
        }
    }
}
