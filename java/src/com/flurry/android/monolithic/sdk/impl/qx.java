// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Serializable;

public class qx
    implements Serializable
{

    protected Object a;
    protected String b;
    protected int c;

    protected qx()
    {
        c = -1;
    }

    public qx(Object obj, int i)
    {
        c = -1;
        a = obj;
        c = i;
    }

    public qx(Object obj, String s)
    {
        c = -1;
        a = obj;
        if (s == null)
        {
            throw new NullPointerException("Can not pass null fieldName");
        } else
        {
            b = s;
            return;
        }
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        Class class1;
        Package package1;
        if (a instanceof Class)
        {
            class1 = (Class)a;
        } else
        {
            class1 = a.getClass();
        }
        package1 = class1.getPackage();
        if (package1 != null)
        {
            stringbuilder.append(package1.getName());
            stringbuilder.append('.');
        }
        stringbuilder.append(class1.getSimpleName());
        stringbuilder.append('[');
        if (b != null)
        {
            stringbuilder.append('"');
            stringbuilder.append(b);
            stringbuilder.append('"');
        } else
        if (c >= 0)
        {
            stringbuilder.append(c);
        } else
        {
            stringbuilder.append('?');
        }
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
