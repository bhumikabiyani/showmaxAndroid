// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            py

public class aed
{

    protected final Class a;
    protected final Enum b[];
    protected final HashMap c;

    protected aed(Class class1, Enum aenum[], HashMap hashmap)
    {
        a = class1;
        b = aenum;
        c = hashmap;
    }

    public static aed a(Class class1)
    {
        Enum aenum[] = (Enum[])class1.getEnumConstants();
        HashMap hashmap = new HashMap();
        int i = aenum.length;
        do
        {
            i--;
            if (i >= 0)
            {
                Enum enum = aenum[i];
                hashmap.put(enum.toString(), enum);
            } else
            {
                return new aed(class1, aenum, hashmap);
            }
        } while (true);
    }

    public static aed a(Class class1, py py1)
    {
        Enum aenum[] = (Enum[])class1.getEnumConstants();
        if (aenum == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("No enum constants for class ").append(class1.getName()).toString());
        }
        HashMap hashmap = new HashMap();
        int j = aenum.length;
        for (int i = 0; i < j; i++)
        {
            Enum enum = aenum[i];
            hashmap.put(py1.a(enum), enum);
        }

        return new aed(class1, aenum, hashmap);
    }

    public static aed b(Class class1)
    {
        return a(class1);
    }

    public static aed b(Class class1, py py1)
    {
        return a(class1, py1);
    }

    public Class a()
    {
        return a;
    }

    public Enum a(int i)
    {
        if (i < 0 || i >= b.length)
        {
            return null;
        } else
        {
            return b[i];
        }
    }

    public Enum a(String s)
    {
        return (Enum)c.get(s);
    }

    public int b()
    {
        return b.length - 1;
    }
}
