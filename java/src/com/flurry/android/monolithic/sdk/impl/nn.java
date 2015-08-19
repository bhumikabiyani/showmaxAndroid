// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.nio.ByteBuffer;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kq, ji, no, kj, 
//            nq, np, jh, jg, 
//            nr, lw

public class nn extends kq
{

    private static final nn a = new nn();
    private static final Class c[] = new Class[0];
    private static final Class d[] = {
        com/flurry/android/monolithic/sdk/impl/ji
    };
    private static final Map e = new ConcurrentHashMap();
    private static final Class g = (new no()).getClass();
    private static final ji h;
    private final ClassLoader b;
    private Map f;
    private final WeakHashMap i;

    protected nn()
    {
        this(com/flurry/android/monolithic/sdk/impl/nn.getClassLoader());
    }

    public nn(ClassLoader classloader)
    {
        f = new ConcurrentHashMap();
        i = new WeakHashMap();
        b = classloader;
    }

    public static Object a(Class class1, ji ji1)
    {
        boolean flag = com/flurry/android/monolithic/sdk/impl/nq.isAssignableFrom(class1);
        Object obj;
        Constructor constructor;
        try
        {
            constructor = (Constructor)e.get(class1);
        }
        // Misplaced declaration of an exception variable
        catch (Class class1)
        {
            throw new RuntimeException(class1);
        }
        obj = constructor;
        if (constructor != null) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        obj = d;
_L5:
        obj = class1.getDeclaredConstructor(((Class []) (obj)));
        ((Constructor) (obj)).setAccessible(true);
        e.put(class1, obj);
_L2:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_85;
        }
        class1 = ((Class) (new Object[1]));
        class1[0] = ji1;
_L6:
        return ((Constructor) (obj)).newInstance(class1);
_L4:
        obj = c;
          goto _L5
        class1 = ((Class) ((Object[])null));
          goto _L6
    }

    public static nn b()
    {
        return a;
    }

    public static String c(ji ji1)
    {
        String s = ji1.f();
        String s1 = ji1.d();
        if (s == null || "".equals(s))
        {
            return s1;
        }
        if (s.endsWith("$"))
        {
            ji1 = "";
        } else
        {
            ji1 = ".";
        }
        return (new StringBuilder()).append(s).append(ji1).append(s1).toString();
    }

    protected int a(Object obj, Object obj1, ji ji1, boolean flag)
    {
        np.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 3 3: default 28
    //                   3 38;
           goto _L1 _L2
_L1:
        return super.a(obj, obj1, ji1, flag);
_L2:
        if (obj instanceof Enum)
        {
            return ((Enum)obj).ordinal() - ((Enum)obj1).ordinal();
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public ji a(Type type)
    {
        ji ji2 = (ji)i.get(type);
        ji ji1 = ji2;
        if (ji2 == null)
        {
            ji1 = a(type, ((Map) (new LinkedHashMap())));
            i.put(type, ji1);
        }
        return ji1;
    }

    protected ji a(Type type, Map map)
    {
        if ((type instanceof Class) && java/lang/CharSequence.isAssignableFrom((Class)type))
        {
            return ji.a(kj.g);
        }
        if (type == java/nio/ByteBuffer)
        {
            return ji.a(kj.h);
        }
        if (type == java/lang/Integer || type == Integer.TYPE)
        {
            return ji.a(kj.i);
        }
        if (type == java/lang/Long || type == Long.TYPE)
        {
            return ji.a(kj.j);
        }
        if (type == java/lang/Float || type == Float.TYPE)
        {
            return ji.a(kj.k);
        }
        if (type == java/lang/Double || type == Double.TYPE)
        {
            return ji.a(kj.l);
        }
        if (type == java/lang/Boolean || type == Boolean.TYPE)
        {
            return ji.a(kj.m);
        }
        if (type == java/lang/Void || type == Void.TYPE)
        {
            return ji.a(kj.n);
        }
        if (type instanceof ParameterizedType)
        {
            ParameterizedType parameterizedtype = (ParameterizedType)type;
            Object obj = (Class)parameterizedtype.getRawType();
            Type atype[] = parameterizedtype.getActualTypeArguments();
            if (java/util/Collection.isAssignableFrom(((Class) (obj))))
            {
                if (atype.length != 1)
                {
                    throw new jh("No array type specified.");
                } else
                {
                    return ji.a(a(atype[0], map));
                }
            }
            if (java/util/Map.isAssignableFrom(((Class) (obj))))
            {
                obj = atype[0];
                Type type1 = atype[1];
                if (!(type instanceof Class) || !java/lang/CharSequence.isAssignableFrom((Class)type))
                {
                    throw new jh((new StringBuilder()).append("Map key class not CharSequence: ").append(obj).toString());
                } else
                {
                    return ji.b(a(type1, map));
                }
            } else
            {
                return a(((Type) (obj)), map);
            }
        }
        if (!(type instanceof Class))
        {
            break MISSING_BLOCK_LABEL_461;
        }
        Class class1 = (Class)type;
        String s = class1.getName();
        ji ji1 = (ji)map.get(s);
        type = ji1;
        if (ji1 != null)
        {
            break MISSING_BLOCK_LABEL_409;
        }
        try
        {
            ji1 = (ji)(ji)class1.getDeclaredField("SCHEMA$").get(null);
        }
        // Misplaced declaration of an exception variable
        catch (Type type)
        {
            throw new jg((new StringBuilder()).append("Not a Specific class: ").append(class1).toString());
        }
        // Misplaced declaration of an exception variable
        catch (Type type)
        {
            throw new jg(type);
        }
        type = ji1;
        if (!s.equals(c(ji1)))
        {
            type = ji.f(ji1.toString().replace(ji1.f(), class1.getPackage().getName()));
        }
        map.put(s, type);
        return type;
        throw new jh((new StringBuilder()).append("Unknown type: ").append(type).toString());
    }

    public lw a(ji ji1)
    {
        return new nr(ji1, ji1, this);
    }

    public Class b(ji ji1)
    {
        switch (np.a[ji1.a().ordinal()])
        {
        default:
            throw new jg((new StringBuilder()).append("Unknown type: ").append(ji1).toString());

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            String s = ji1.g();
            if (s == null)
            {
                return null;
            }
            Class class2 = (Class)f.get(s);
            Class class1 = class2;
            if (class2 == null)
            {
                try
                {
                    class1 = b.loadClass(c(ji1));
                }
                // Misplaced declaration of an exception variable
                catch (ji ji1)
                {
                    class1 = g;
                }
                f.put(s, class1);
            }
            ji1 = class1;
            if (class1 == g)
            {
                ji1 = null;
            }
            return ji1;

        case 4: // '\004'
            return java/util/List;

        case 5: // '\005'
            return java/util/Map;

        case 6: // '\006'
            ji1 = ji1.k();
            if (ji1.size() == 2 && ji1.contains(h))
            {
                int j;
                if (((ji)ji1.get(0)).equals(h))
                {
                    j = 1;
                } else
                {
                    j = 0;
                }
                return b((ji)ji1.get(j));
            } else
            {
                return java/lang/Object;
            }

        case 7: // '\007'
            if ("String".equals(ji1.a("avro.java.string")))
            {
                return java/lang/String;
            } else
            {
                return java/lang/CharSequence;
            }

        case 8: // '\b'
            return java/nio/ByteBuffer;

        case 9: // '\t'
            return Integer.TYPE;

        case 10: // '\n'
            return Long.TYPE;

        case 11: // '\013'
            return Float.TYPE;

        case 12: // '\f'
            return Double.TYPE;

        case 13: // '\r'
            return Boolean.TYPE;

        case 14: // '\016'
            return Void.TYPE;
        }
    }

    public Object c(Object obj, ji ji1)
    {
        Class class1 = b().b(ji1);
        Object obj1;
        if (class1 == null)
        {
            obj1 = super.c(obj, ji1);
        } else
        {
            obj1 = obj;
            if (!class1.isInstance(obj))
            {
                return a(class1, ji1);
            }
        }
        return obj1;
    }

    public Object d(Object obj, ji ji1)
    {
        Class class1 = b().b(ji1);
        Object obj1;
        if (class1 == null)
        {
            obj1 = super.d(obj, ji1);
        } else
        {
            obj1 = obj;
            if (!class1.isInstance(obj))
            {
                return a(class1, ji1);
            }
        }
        return obj1;
    }

    protected boolean f(Object obj)
    {
        return (obj instanceof Enum) || super.f(obj);
    }

    protected ji g(Object obj)
    {
        if (obj instanceof Enum)
        {
            return a(obj.getClass());
        } else
        {
            return super.g(obj);
        }
    }

    static 
    {
        h = ji.a(kj.n);
    }
}
