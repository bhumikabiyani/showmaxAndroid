// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Field;
import java.util.EnumMap;
import java.util.EnumSet;

class aea
{

    static final aea a = new aea();
    private final Field b = a(java/util/EnumSet, "elementType", java/lang/Class);
    private final Field c = a(java/util/EnumMap, "elementType", java/lang/Class);

    private aea()
    {
    }

    private Object a(Object obj, Field field)
    {
        try
        {
            obj = field.get(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw new IllegalArgumentException(((Throwable) (obj)));
        }
        return obj;
    }

    private static Field a(Class class1, String s, Class class2)
    {
        Field afield[];
        int i;
        int j;
        afield = class1.getDeclaredFields();
        j = afield.length;
        i = 0;
_L11:
        if (i >= j)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        class1 = afield[i];
        if (!s.equals(class1.getName()) || class1.getType() != class2) goto _L2; else goto _L1
_L1:
        s = class1;
        if (class1 != null) goto _L4; else goto _L3
_L3:
        j = afield.length;
        i = 0;
_L12:
        if (i >= j) goto _L6; else goto _L5
_L5:
        s = afield[i];
        if (s.getType() != class2) goto _L8; else goto _L7
_L7:
        if (class1 == null) goto _L10; else goto _L9
_L9:
        class1 = null;
_L14:
        return class1;
_L2:
        i++;
          goto _L11
_L8:
        s = class1;
_L10:
        i++;
        class1 = s;
          goto _L12
_L6:
        s = class1;
_L4:
        class1 = s;
        if (s == null) goto _L14; else goto _L13
_L13:
        try
        {
            s.setAccessible(true);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            return s;
        }
        return s;
        class1 = null;
          goto _L1
    }

    public Class a(EnumMap enummap)
    {
        if (c != null)
        {
            return (Class)a(enummap, c);
        } else
        {
            throw new IllegalStateException("Can not figure out type for EnumMap (odd JDK platform?)");
        }
    }

    public Class a(EnumSet enumset)
    {
        if (b != null)
        {
            return (Class)a(enumset, b);
        } else
        {
            throw new IllegalStateException("Can not figure out type for EnumSet (odd JDK platform?)");
        }
    }

}
