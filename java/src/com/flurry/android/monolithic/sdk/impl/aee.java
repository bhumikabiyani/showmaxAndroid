// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.EnumMap;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            adz, pw, py

public final class aee
{

    private final EnumMap a;

    private aee(Map map)
    {
        a = new EnumMap(map);
    }

    public static aee a(Class class1, py py1)
    {
        return b(class1, py1);
    }

    public static aee b(Class class1, py py1)
    {
        Enum aenum[] = (Enum[])adz.g(class1).getEnumConstants();
        if (aenum != null)
        {
            class1 = new HashMap();
            int j = aenum.length;
            for (int i = 0; i < j; i++)
            {
                Enum enum = aenum[i];
                class1.put(enum, new pw(py1.a(enum)));
            }

            return new aee(class1);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not determine enum constants for Class ").append(class1.getName()).toString());
        }
    }

    public static aee c(Class class1, py py1)
    {
        py1 = (Enum[])adz.g(class1).getEnumConstants();
        if (py1 != null)
        {
            class1 = new HashMap();
            int j = py1.length;
            for (int i = 0; i < j; i++)
            {
                Enum enum = py1[i];
                class1.put(enum, new pw(enum.toString()));
            }

            return new aee(class1);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Can not determine enum constants for Class ").append(class1.getName()).toString());
        }
    }

    public pw a(Enum enum)
    {
        return (pw)a.get(enum);
    }
}
