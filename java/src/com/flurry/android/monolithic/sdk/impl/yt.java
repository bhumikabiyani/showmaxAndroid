// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.EnumMap;
import java.util.EnumSet;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yz, adk, adz, add, 
//            adg, afm

public class yt extends yz
{

    public yt(afm afm1, adk adk1)
    {
        super(afm1, adk1);
    }

    public afm a(String s)
    {
        if (s.indexOf('<') > 0)
        {
            return adk.a(s);
        }
        Object obj;
        try
        {
            obj = Class.forName(s, true, Thread.currentThread().getContextClassLoader());
            obj = c.a(d, ((Class) (obj)));
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid type id '").append(s).append("' (for id type 'Id.class'): no such class found").toString());
        }
        catch (Exception exception)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid type id '").append(s).append("' (for id type 'Id.class'): ").append(exception.getMessage()).toString(), exception);
        }
        return ((afm) (obj));
    }

    public String a(Object obj)
    {
        return b(obj, obj.getClass());
    }

    public String a(Object obj, Class class1)
    {
        return b(obj, class1);
    }

    protected final String b(Object obj, Class class1)
    {
        Object obj1;
        obj1 = class1;
        if (java/lang/Enum.isAssignableFrom(class1))
        {
            obj1 = class1;
            if (!class1.isEnum())
            {
                obj1 = class1.getSuperclass();
            }
        }
        class1 = ((Class) (obj1)).getName();
        if (!class1.startsWith("java.util")) goto _L2; else goto _L1
_L1:
        if (!(obj instanceof EnumSet)) goto _L4; else goto _L3
_L3:
        obj = adz.a((EnumSet)obj);
        obj = adk.a().b(java/util/EnumSet, ((Class) (obj))).m();
_L6:
        return ((String) (obj));
_L4:
        if (obj instanceof EnumMap)
        {
            obj = adz.a((EnumMap)obj);
            return adk.a().a(java/util/EnumMap, ((Class) (obj)), java/lang/Object).m();
        }
        obj1 = class1.substring(9);
        if (((String) (obj1)).startsWith(".Arrays$"))
        {
            break; /* Loop/switch isn't completed */
        }
        obj = class1;
        if (!((String) (obj1)).startsWith(".Collections$")) goto _L6; else goto _L5
_L5:
        obj = class1;
        if (class1.indexOf("List") >= 0)
        {
            return "java.util.ArrayList";
        }
        continue; /* Loop/switch isn't completed */
_L2:
        obj = class1;
        if (class1.indexOf('$') >= 0)
        {
            obj = class1;
            if (adz.b(((Class) (obj1))) != null)
            {
                obj = class1;
                if (adz.b(d.p()) == null)
                {
                    return d.p().getName();
                }
            }
        }
        if (true) goto _L6; else goto _L7
_L7:
    }
}
