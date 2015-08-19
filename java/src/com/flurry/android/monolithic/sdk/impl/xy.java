// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;

public final class xy
{

    static final Class a[] = new Class[0];
    final String b;
    final Class c[];

    public xy(String s, Class aclass[])
    {
        b = s;
        s = aclass;
        if (aclass == null)
        {
            s = a;
        }
        c = s;
    }

    public xy(Constructor constructor)
    {
        this("", constructor.getParameterTypes());
    }

    public xy(Method method)
    {
        this(method.getName(), method.getParameterTypes());
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
            obj = (xy)obj;
            if (!b.equals(((xy) (obj)).b))
            {
                return false;
            }
            obj = ((xy) (obj)).c;
            int j = c.length;
            if (obj.length != j)
            {
                return false;
            }
            int i = 0;
            while (i < j) 
            {
                Class class1 = obj[i];
                Class class2 = c[i];
                if (class1 == class2 || class1.isAssignableFrom(class2) || class2.isAssignableFrom(class1))
                {
                    i++;
                } else
                {
                    return false;
                }
            }
        }
        return true;
    }

    public int hashCode()
    {
        return b.hashCode() + c.length;
    }

    public String toString()
    {
        return (new StringBuilder()).append(b).append("(").append(c.length).append("-args)").toString();
    }

}
