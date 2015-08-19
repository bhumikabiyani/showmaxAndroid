// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Constructor;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumMap;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aea

public final class adz
{

    public static Class a(Enum enum)
    {
        Class class1 = enum.getClass();
        enum = class1;
        if (class1.getSuperclass() != java/lang/Enum)
        {
            enum = class1.getSuperclass();
        }
        return enum;
    }

    public static Class a(EnumMap enummap)
    {
        if (!enummap.isEmpty())
        {
            return a((Enum)enummap.keySet().iterator().next());
        } else
        {
            return aea.a.a(enummap);
        }
    }

    public static Class a(EnumSet enumset)
    {
        if (!enumset.isEmpty())
        {
            return a((Enum)enumset.iterator().next());
        } else
        {
            return aea.a.a(enumset);
        }
    }

    public static String a(Class class1)
    {
        if (class1.isAnnotation())
        {
            return "annotation";
        }
        if (class1.isArray())
        {
            return "array";
        }
        if (class1.isEnum())
        {
            return "enum";
        }
        if (class1.isPrimitive())
        {
            return "primitive";
        } else
        {
            return null;
        }
    }

    public static String a(Class class1, boolean flag)
    {
        if (class1.getEnclosingMethod() != null)
        {
            return "local/anonymous";
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        if (class1.getEnclosingClass() != null && !Modifier.isStatic(class1.getModifiers()))
        {
            return "non-static member class";
        }
        break MISSING_BLOCK_LABEL_35;
        class1;
_L2:
        return null;
        class1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static Throwable a(Throwable throwable)
    {
        for (; throwable.getCause() != null; throwable = throwable.getCause()) { }
        return throwable;
    }

    public static List a(Class class1, Class class2)
    {
        return a(class1, class2, ((List) (new ArrayList(8))));
    }

    public static List a(Class class1, Class class2, List list)
    {
        a(class1, class2, ((Collection) (list)), false);
        return list;
    }

    private static void a(Class class1, Class class2, Collection collection, boolean flag)
    {
        if (class1 != class2 && class1 != null && class1 != java/lang/Object) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (!flag)
        {
            break; /* Loop/switch isn't completed */
        }
        if (collection.contains(class1))
        {
            continue; /* Loop/switch isn't completed */
        }
        collection.add(class1);
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        Class aclass[] = class1.getInterfaces();
        int j = aclass.length;
        for (int i = 0; i < j; i++)
        {
            a(aclass[i], class2, collection, true);
        }

        a(class1.getSuperclass(), class2, collection, true);
        return;
    }

    public static void a(Throwable throwable, String s)
    {
        if (throwable instanceof RuntimeException)
        {
            throw (RuntimeException)throwable;
        }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        } else
        {
            throw new IllegalArgumentException(s, throwable);
        }
    }

    public static void a(Member member)
    {
        AccessibleObject accessibleobject = (AccessibleObject)member;
        accessibleobject.setAccessible(true);
_L1:
        return;
        SecurityException securityexception;
        securityexception;
        if (!accessibleobject.isAccessible())
        {
            Class class1 = member.getDeclaringClass();
            throw new IllegalArgumentException((new StringBuilder()).append("Can not access ").append(member).append(" (from class ").append(class1.getName()).append("; failed to set access: ").append(securityexception.getMessage()).toString());
        }
          goto _L1
    }

    public static boolean a(Method method)
    {
        Class aclass[];
        if (!Modifier.isStatic(method.getModifiers()))
        {
            if (((aclass = method.getParameterTypes()) == null || aclass.length == 0) && Void.TYPE != method.getReturnType())
            {
                return true;
            }
        }
        return false;
    }

    public static Class b(Class class1)
    {
        if (class1.getEnclosingMethod() != null)
        {
            return null;
        }
        if (Modifier.isStatic(class1.getModifiers()))
        {
            break MISSING_BLOCK_LABEL_30;
        }
        class1 = class1.getEnclosingClass();
        return class1;
        class1;
        return null;
        class1;
        return null;
    }

    public static Object b(Class class1, boolean flag)
        throws IllegalArgumentException
    {
        Object obj = c(class1, flag);
        if (obj == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getName()).append(" has no default (no arg) constructor").toString());
        }
        try
        {
            obj = ((Constructor) (obj)).newInstance(new Object[0]);
        }
        catch (Exception exception)
        {
            b(((Throwable) (exception)), (new StringBuilder()).append("Failed to instantiate class ").append(class1.getName()).append(", problem: ").append(exception.getMessage()).toString());
            return null;
        }
        return obj;
    }

    public static void b(Throwable throwable)
    {
        a(throwable, throwable.getMessage());
    }

    public static void b(Throwable throwable, String s)
    {
        a(a(throwable), s);
    }

    public static Constructor c(Class class1, boolean flag)
        throws IllegalArgumentException
    {
        Object obj = class1.getDeclaredConstructor(new Class[0]);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        a(((Member) (obj)));
        return ((Constructor) (obj));
        if (!Modifier.isPublic(((Constructor) (obj)).getModifiers()))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Default constructor for ").append(class1.getName()).append(" is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type").toString());
        }
          goto _L1
        class1;
_L2:
        return null;
        obj;
        b(((Throwable) (obj)), (new StringBuilder()).append("Failed to find default constructor of class ").append(class1.getName()).append(", problem: ").append(((Exception) (obj)).getMessage()).toString());
        if (true) goto _L2; else goto _L1
_L1:
        return ((Constructor) (obj));
    }

    public static void c(Throwable throwable)
    {
        b(a(throwable));
    }

    public static boolean c(Class class1)
    {
        if (!Proxy.isProxyClass(class1))
        {
            if (!(class1 = class1.getName()).startsWith("net.sf.cglib.proxy.") && !class1.startsWith("org.hibernate.proxy."))
            {
                return false;
            }
        }
        return true;
    }

    public static boolean d(Class class1)
    {
        return (class1.getModifiers() & 0x600) == 0;
    }

    public static boolean e(Class class1)
    {
        while (class1.isArray() || java/util/Collection.isAssignableFrom(class1) || java/util/Map.isAssignableFrom(class1)) 
        {
            return true;
        }
        return false;
    }

    public static Object f(Class class1)
    {
        if (class1 == Integer.TYPE)
        {
            return Integer.valueOf(0);
        }
        if (class1 == Long.TYPE)
        {
            return Long.valueOf(0L);
        }
        if (class1 == Boolean.TYPE)
        {
            return Boolean.FALSE;
        }
        if (class1 == Double.TYPE)
        {
            return Double.valueOf(0.0D);
        }
        if (class1 == Float.TYPE)
        {
            return Float.valueOf(0.0F);
        }
        if (class1 == Byte.TYPE)
        {
            return Byte.valueOf((byte)0);
        }
        if (class1 == Short.TYPE)
        {
            return Short.valueOf((short)0);
        }
        if (class1 == Character.TYPE)
        {
            return Character.valueOf('\0');
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getName()).append(" is not a primitive type").toString());
        }
    }

    public static Class g(Class class1)
    {
        Class class2 = class1;
        if (class1.getSuperclass() != java/lang/Enum)
        {
            class2 = class1.getSuperclass();
        }
        return class2;
    }
}
