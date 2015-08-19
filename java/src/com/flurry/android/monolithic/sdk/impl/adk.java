// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm, adm, adg, add, 
//            ade, adh, adj, ada, 
//            adl

public final class adk
{

    public static final adk a = new adk();
    private static final afm f[] = new afm[0];
    protected final adl b[] = null;
    protected final adm c = new adm(this);
    protected ade d;
    protected ade e;

    private adk()
    {
    }

    public static adk a()
    {
        return a;
    }

    public static afm a(String s)
        throws IllegalArgumentException
    {
        return a.b(s);
    }

    public static afm b()
    {
        return a().c();
    }

    private afm b(Class class1)
    {
        afm aafm[] = a(class1, java/util/Map);
        if (aafm == null)
        {
            return adg.a(class1, c(), c());
        }
        if (aafm.length != 2)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Strange Map type ").append(class1.getName()).append(": can not determine type parameters").toString());
        } else
        {
            return adg.a(class1, aafm[0], aafm[1]);
        }
    }

    private afm c(Class class1)
    {
        afm aafm[] = a(class1, java/util/Collection);
        if (aafm == null)
        {
            return add.a(class1, c());
        }
        if (aafm.length != 1)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Strange Collection type ").append(class1.getName()).append(": can not determine type parameters").toString());
        } else
        {
            return add.a(class1, aafm[0]);
        }
    }

    protected ade a(ade ade1)
    {
        this;
        JVM INSTR monitorenter ;
        if (d == null)
        {
            ade ade2 = ade1.a();
            a(ade2, java/util/Map);
            d = ade2.b();
        }
        ade ade3 = d.a();
        ade1.a(ade3);
        ade3.b(ade1);
        this;
        JVM INSTR monitorexit ;
        return ade1;
        ade1;
        throw ade1;
    }

    protected ade a(ade ade1, Class class1)
    {
        Object obj = ade1.e();
        Type atype[] = ((Class) (obj)).getGenericInterfaces();
        if (atype != null)
        {
            int j = atype.length;
            for (int i = 0; i < j; i++)
            {
                ade ade2 = b(atype[i], class1);
                if (ade2 != null)
                {
                    ade2.b(ade1);
                    ade1.a(ade2);
                    return ade1;
                }
            }

        }
        obj = ((Class) (obj)).getGenericSuperclass();
        if (obj != null)
        {
            class1 = b(((Type) (obj)), class1);
            if (class1 != null)
            {
                class1.b(ade1);
                ade1.a(class1);
                return ade1;
            }
        }
        return null;
    }

    protected ade a(Type type, Class class1)
    {
        type = new ade(type);
        Object obj = type.e();
        if (obj == class1)
        {
            return type;
        }
        obj = ((Class) (obj)).getGenericSuperclass();
        if (obj != null)
        {
            class1 = a(((Type) (obj)), class1);
            if (class1 != null)
            {
                class1.b(type);
                type.a(class1);
                return type;
            }
        }
        return null;
    }

    public adg a(Class class1, Class class2, Class class3)
    {
        return adg.a(class1, a(((Type) (class2))), a(((Type) (class3))));
    }

    public afm a(afm afm1, Class class1)
    {
        if ((afm1 instanceof adh) && (class1.isArray() || java/util/Map.isAssignableFrom(class1) || java/util/Collection.isAssignableFrom(class1)))
        {
            if (!afm1.p().isAssignableFrom(class1))
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getClass().getName()).append(" not subtype of ").append(afm1).toString());
            }
            Object obj = a(class1, new adj(this, afm1.p()));
            Object obj1 = afm1.n();
            class1 = ((Class) (obj));
            if (obj1 != null)
            {
                class1 = ((afm) (obj)).d(obj1);
            }
            obj = afm1.o();
            afm1 = class1;
            if (obj != null)
            {
                afm1 = class1.f(obj);
            }
            return afm1;
        } else
        {
            return afm1.f(class1);
        }
    }

    public afm a(Class class1)
    {
        return new adh(class1);
    }

    protected afm a(Class class1, adj adj1)
    {
        if (class1.isArray())
        {
            return ada.a(b(class1.getComponentType(), ((adj) (null))), null, null);
        }
        if (class1.isEnum())
        {
            return new adh(class1);
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            return b(class1);
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            return c(class1);
        } else
        {
            return new adh(class1);
        }
    }

    protected afm a(Class class1, List list)
    {
        if (class1.isArray())
        {
            return ada.a(b(class1.getComponentType(), ((adj) (null))), null, null);
        }
        if (class1.isEnum())
        {
            return new adh(class1);
        }
        if (java/util/Map.isAssignableFrom(class1))
        {
            if (list.size() > 0)
            {
                afm afm1 = (afm)list.get(0);
                if (list.size() >= 2)
                {
                    list = (afm)list.get(1);
                } else
                {
                    list = c();
                }
                return adg.a(class1, afm1, list);
            } else
            {
                return b(class1);
            }
        }
        if (java/util/Collection.isAssignableFrom(class1))
        {
            if (list.size() >= 1)
            {
                return add.a(class1, (afm)list.get(0));
            } else
            {
                return c(class1);
            }
        }
        if (list.size() == 0)
        {
            return new adh(class1);
        } else
        {
            return a(class1, (afm[])list.toArray(new afm[list.size()]));
        }
    }

    public afm a(Class class1, afm aafm[])
    {
        TypeVariable atypevariable[] = class1.getTypeParameters();
        if (atypevariable.length != aafm.length)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Parameter type mismatch for ").append(class1.getName()).append(": expected ").append(atypevariable.length).append(" parameters, was given ").append(aafm.length).toString());
        }
        String as[] = new String[atypevariable.length];
        int i = 0;
        for (int j = atypevariable.length; i < j; i++)
        {
            as[i] = atypevariable[i].getName();
        }

        return new adh(class1, as, aafm, null, null);
    }

    protected afm a(GenericArrayType genericarraytype, adj adj1)
    {
        return ada.a(b(genericarraytype.getGenericComponentType(), adj1), null, null);
    }

    protected afm a(ParameterizedType parameterizedtype, adj adj1)
    {
        Class class1;
        Type atype[];
        int i;
        class1 = (Class)parameterizedtype.getRawType();
        atype = parameterizedtype.getActualTypeArguments();
        if (atype == null)
        {
            i = 0;
        } else
        {
            i = atype.length;
        }
        if (i != 0) goto _L2; else goto _L1
_L1:
        parameterizedtype = f;
_L4:
        if (java/util/Map.isAssignableFrom(class1))
        {
            parameterizedtype = b(a(class1, ((afm []) (parameterizedtype))), java/util/Map);
            afm aafm[];
            int j;
            if (parameterizedtype.length != 2)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Could not find 2 type parameters for Map class ").append(class1.getName()).append(" (found ").append(parameterizedtype.length).append(")").toString());
            } else
            {
                return adg.a(class1, parameterizedtype[0], parameterizedtype[1]);
            }
        }
        break MISSING_BLOCK_LABEL_176;
_L2:
        aafm = new afm[i];
        j = 0;
        do
        {
            parameterizedtype = aafm;
            if (j >= i)
            {
                break;
            }
            aafm[j] = b(atype[j], adj1);
            j++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        if (java/util/Collection.isAssignableFrom(class1))
        {
            parameterizedtype = b(a(class1, ((afm []) (parameterizedtype))), java/util/Collection);
            if (parameterizedtype.length != 1)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Could not find 1 type parameter for Collection class ").append(class1.getName()).append(" (found ").append(parameterizedtype.length).append(")").toString());
            } else
            {
                return add.a(class1, parameterizedtype[0]);
            }
        }
        if (i == 0)
        {
            return new adh(class1);
        } else
        {
            return a(class1, ((afm []) (parameterizedtype)));
        }
    }

    public afm a(Type type)
    {
        return b(type, ((adj) (null)));
    }

    public afm a(Type type, adj adj1)
    {
        return b(type, adj1);
    }

    protected afm a(TypeVariable typevariable, adj adj1)
    {
        afm afm1;
        if (adj1 == null)
        {
            afm1 = c();
        } else
        {
            String s = typevariable.getName();
            afm afm2 = adj1.a(s);
            afm1 = afm2;
            if (afm2 == null)
            {
                typevariable = typevariable.getBounds();
                adj1.b(s);
                return b(typevariable[0], adj1);
            }
        }
        return afm1;
    }

    protected afm a(WildcardType wildcardtype, adj adj1)
    {
        return b(wildcardtype.getUpperBounds()[0], adj1);
    }

    public afm[] a(Class class1, Class class2)
    {
        return a(class1, class2, new adj(this, class1));
    }

    public afm[] a(Class class1, Class class2, adj adj1)
    {
        ade ade1;
        ade ade2 = c(class1, class2);
        ade1 = ade2;
        if (ade2 == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Class ").append(class1.getName()).append(" is not a subtype of ").append(class2.getName()).toString());
        }
_L4:
        if (ade1.b() == null)
        {
            break; /* Loop/switch isn't completed */
        }
        ade1 = ade1.b();
        Class class3 = ade1.e();
        class1 = new adj(this, class3);
        if (ade1.c())
        {
            class2 = ade1.d().getActualTypeArguments();
            TypeVariable atypevariable[] = class3.getTypeParameters();
            int j = class2.length;
            int i = 0;
            while (i < j) 
            {
                class1.a(atypevariable[i].getName(), a.b(class2[i], adj1));
                i++;
            }
        }
        if (true) goto _L2; else goto _L1
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        adj1 = class1;
        if (true) goto _L4; else goto _L3
_L3:
        if (!ade1.c())
        {
            return null;
        } else
        {
            return adj1.b();
        }
    }

    public add b(Class class1, Class class2)
    {
        return add.a(class1, a(class2));
    }

    protected ade b(ade ade1)
    {
        this;
        JVM INSTR monitorenter ;
        if (e == null)
        {
            ade ade2 = ade1.a();
            a(ade2, java/util/List);
            e = ade2.b();
        }
        ade ade3 = e.a();
        ade1.a(ade3);
        ade3.b(ade1);
        this;
        JVM INSTR monitorexit ;
        return ade1;
        ade1;
        throw ade1;
    }

    protected ade b(Type type, Class class1)
    {
        ade ade1 = new ade(type);
        Class class2 = ade1.e();
        if (class2 == class1)
        {
            return new ade(type);
        }
        if (class2 == java/util/HashMap && class1 == java/util/Map)
        {
            return a(ade1);
        }
        if (class2 == java/util/ArrayList && class1 == java/util/List)
        {
            return b(ade1);
        } else
        {
            return a(ade1, class1);
        }
    }

    public afm b(String s)
        throws IllegalArgumentException
    {
        return c.a(s);
    }

    public afm b(Type type, adj adj1)
    {
        Object obj;
        afm afm1;
        if (type instanceof Class)
        {
            Object obj1 = (Class)type;
            obj = adj1;
            if (adj1 == null)
            {
                obj = new adj(this, ((Class) (obj1)));
            }
            obj1 = a(((Class) (obj1)), ((adj) (obj)));
            adj1 = ((adj) (obj));
            obj = obj1;
        } else
        if (type instanceof ParameterizedType)
        {
            obj = a((ParameterizedType)type, adj1);
        } else
        if (type instanceof GenericArrayType)
        {
            obj = a((GenericArrayType)type, adj1);
        } else
        if (type instanceof TypeVariable)
        {
            obj = a((TypeVariable)type, adj1);
        } else
        if (type instanceof WildcardType)
        {
            obj = a((WildcardType)type, adj1);
        } else
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unrecognized Type: ").append(type.toString()).toString());
        }
        afm1 = ((afm) (obj));
        if (b != null)
        {
            afm1 = ((afm) (obj));
            if (!((afm) (obj)).f())
            {
                adl aadl[] = b;
                int j = aadl.length;
                int i = 0;
                do
                {
                    afm1 = ((afm) (obj));
                    if (i >= j)
                    {
                        break;
                    }
                    obj = aadl[i].a(((afm) (obj)), type, adj1, this);
                    i++;
                } while (true);
            }
        }
        return afm1;
    }

    public afm[] b(afm afm1, Class class1)
    {
        Object obj;
        int j;
        obj = afm1.p();
        if (obj != class1)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        j = afm1.h();
        if (j != 0) goto _L2; else goto _L1
_L1:
        class1 = null;
_L4:
        return class1;
_L2:
        obj = new afm[j];
        int i = 0;
        do
        {
            class1 = ((Class) (obj));
            if (i >= j)
            {
                break;
            }
            obj[i] = afm1.b(i);
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
        return a(((Class) (obj)), class1, new adj(this, afm1));
    }

    protected ade c(Class class1, Class class2)
    {
        if (class2.isInterface())
        {
            return b(class1, class2);
        } else
        {
            return a(class1, class2);
        }
    }

    protected afm c()
    {
        return new adh(java/lang/Object);
    }

}
