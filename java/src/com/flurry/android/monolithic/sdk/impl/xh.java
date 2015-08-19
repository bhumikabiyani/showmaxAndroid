// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xg, xp, qg, adz, 
//            xi, xj, xm, xl, 
//            py, xz, xy, ado

public final class xh extends xg
{

    private static final xp l[] = new xp[0];
    protected final Class a;
    protected final List b;
    protected final py c;
    protected final qg d;
    protected final Class e;
    protected xp f;
    protected xi g;
    protected List h;
    protected List i;
    protected xm j;
    protected List k;

    private xh(Class class1, List list, py py1, qg qg1, xp xp1)
    {
        a = class1;
        b = list;
        c = py1;
        d = qg1;
        if (d == null)
        {
            class1 = null;
        } else
        {
            class1 = d.a(a);
        }
        e = class1;
        f = xp1;
    }

    public static xh a(Class class1, py py1, qg qg1)
    {
        class1 = new xh(class1, adz.a(class1, null), py1, qg1, null);
        class1.m();
        return class1;
    }

    private xp[] a(int i1)
    {
        if (i1 != 0) goto _L2; else goto _L1
_L1:
        xp axp[] = l;
_L4:
        return axp;
_L2:
        xp axp1[] = new xp[i1];
        int j1 = 0;
        do
        {
            axp = axp1;
            if (j1 >= i1)
            {
                continue;
            }
            axp1[j1] = o();
            j1++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static xh b(Class class1, py py1, qg qg1)
    {
        class1 = new xh(class1, Collections.emptyList(), py1, qg1, null);
        class1.m();
        return class1;
    }

    private boolean b(Field field)
    {
        int i1;
        if (!field.isSynthetic())
        {
            if (!Modifier.isStatic(i1 = field.getModifiers()) && !Modifier.isTransient(i1))
            {
                return true;
            }
        }
        return false;
    }

    private xp o()
    {
        return new xp();
    }

    protected xi a(Constructor constructor, boolean flag)
    {
        if (c == null)
        {
            return new xi(constructor, o(), a(constructor.getParameterTypes().length));
        }
        if (flag)
        {
            return new xi(constructor, a(constructor.getDeclaredAnnotations()), null);
        }
        Annotation aannotation[][] = constructor.getParameterAnnotations();
        int i1 = constructor.getParameterTypes().length;
        if (i1 != aannotation.length)
        {
            Object obj = constructor.getDeclaringClass();
            xp axp1[];
            if (((Class) (obj)).isEnum() && i1 == aannotation.length + 2)
            {
                obj = new Annotation[aannotation.length + 2][];
                System.arraycopy(aannotation, 0, obj, 2, aannotation.length);
                xp axp[] = a(((Annotation [][]) (obj)));
                aannotation = ((Annotation [][]) (obj));
                obj = axp;
            } else
            if (((Class) (obj)).isMemberClass() && i1 == aannotation.length + 1)
            {
                axp1 = new Annotation[aannotation.length + 1][];
                System.arraycopy(aannotation, 0, axp1, 1, aannotation.length);
                obj = a(((Annotation [][]) (axp1)));
                aannotation = axp1;
            } else
            {
                obj = null;
            }
            axp1 = ((xp []) (obj));
            if (obj == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("Internal error: constructor for ").append(constructor.getDeclaringClass().getName()).append(" has mismatch: ").append(i1).append(" parameters; ").append(aannotation.length).append(" sets of annotations").toString());
            }
        } else
        {
            axp1 = a(aannotation);
        }
        return new xi(constructor, a(constructor.getDeclaredAnnotations()), axp1);
    }

    protected xj a(Field field)
    {
        if (c == null)
        {
            return new xj(field, o());
        } else
        {
            return new xj(field, a(field.getDeclaredAnnotations()));
        }
    }

    public xl a(String s, Class aclass[])
    {
        return j.a(s, aclass);
    }

    protected xl a(Method method)
    {
        if (c == null)
        {
            return new xl(method, o(), null);
        } else
        {
            return new xl(method, a(method.getDeclaredAnnotations()), null);
        }
    }

    protected xp a(Annotation aannotation[])
    {
        xp xp1 = new xp();
        if (aannotation != null)
        {
            int j1 = aannotation.length;
            for (int i1 = 0; i1 < j1; i1++)
            {
                Annotation annotation = aannotation[i1];
                if (c.a(annotation))
                {
                    xp1.b(annotation);
                }
            }

        }
        return xp1;
    }

    public Annotation a(Class class1)
    {
        if (f == null)
        {
            return null;
        } else
        {
            return f.a(class1);
        }
    }

    public AnnotatedElement a()
    {
        return e();
    }

    protected void a(xp xp1, Class class1)
    {
        if (d != null)
        {
            a(xp1, class1, d.a(class1));
        }
    }

    protected void a(xp xp1, Class class1, Class class2)
    {
        if (class2 != null)
        {
            Annotation aannotation[] = class2.getDeclaredAnnotations();
            int k1 = aannotation.length;
            for (int i1 = 0; i1 < k1; i1++)
            {
                Annotation annotation1 = aannotation[i1];
                if (c.a(annotation1))
                {
                    xp1.a(annotation1);
                }
            }

            class1 = adz.a(class2, class1).iterator();
            while (class1.hasNext()) 
            {
                class2 = ((Class)class1.next()).getDeclaredAnnotations();
                int l1 = class2.length;
                int j1 = 0;
                while (j1 < l1) 
                {
                    Annotation annotation = class2[j1];
                    if (c.a(annotation))
                    {
                        xp1.a(annotation);
                    }
                    j1++;
                }
            }
        }
    }

    public void a(xz xz1)
    {
        Object obj;
        j = new xm();
        obj = new xm();
        a(a, xz1, j, e, ((xm) (obj)));
        Iterator iterator = b.iterator();
        while (iterator.hasNext()) 
        {
            Class class3 = (Class)iterator.next();
            Class class1;
            if (d == null)
            {
                class1 = null;
            } else
            {
                class1 = d.a(class3);
            }
            a(class3, xz1, j, class1, ((xm) (obj)));
        }
        if (d != null)
        {
            Class class2 = d.a(java/lang/Object);
            if (class2 != null)
            {
                a(xz1, j, class2, ((xm) (obj)));
            }
        }
        if (c == null || ((xm) (obj)).a()) goto _L2; else goto _L1
_L1:
        xz1 = ((xm) (obj)).iterator();
_L3:
        xl xl1;
        if (!xz1.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        xl1 = (xl)xz1.next();
        obj = java/lang/Object.getDeclaredMethod(xl1.b(), xl1.m());
        if (obj != null)
        {
            try
            {
                obj = a(((Method) (obj)));
                a(xl1.e(), ((xl) (obj)), false);
                j.a(((xl) (obj)));
            }
            catch (Exception exception) { }
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    protected void a(xz xz1, xm xm1, Class class1, xm xm2)
    {
        class1 = class1.getDeclaredMethods();
        int j1 = class1.length;
        int i1 = 0;
        while (i1 < j1) 
        {
            Method method = class1[i1];
            if (a(method, xz1))
            {
                xl xl1 = xm1.b(method);
                if (xl1 != null)
                {
                    a(method, xl1);
                } else
                {
                    xm2.a(a(method));
                }
            }
            i1++;
        }
    }

    protected void a(Class class1, xz xz1, xm xm1, Class class2, xm xm2)
    {
        if (class2 != null)
        {
            a(xz1, xm1, class2, xm2);
        }
        if (class1 != null)
        {
            class1 = class1.getDeclaredMethods();
            int j1 = class1.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                class2 = class1[i1];
                if (a(((Method) (class2)), xz1))
                {
                    xl xl1 = xm1.b(class2);
                    if (xl1 == null)
                    {
                        xl1 = a(((Method) (class2)));
                        xm1.a(xl1);
                        class2 = xm2.a(class2);
                        if (class2 != null)
                        {
                            a(class2.e(), xl1, false);
                        }
                    } else
                    {
                        a(((Method) (class2)), xl1);
                        if (xl1.h().isInterface() && !class2.getDeclaringClass().isInterface())
                        {
                            xm1.a(xl1.a(class2));
                        }
                    }
                }
                i1++;
            }
        }
    }

    protected void a(Class class1, Map map)
    {
        class1 = class1.getDeclaredFields();
        int k1 = class1.length;
        int i1 = 0;
        while (i1 < k1) 
        {
            Field field = class1[i1];
            xj xj1;
            if (b(field))
            {
                if ((xj1 = (xj)map.get(field.getName())) != null)
                {
                    Annotation aannotation[] = field.getDeclaredAnnotations();
                    int l1 = aannotation.length;
                    int j1 = 0;
                    while (j1 < l1) 
                    {
                        Annotation annotation = aannotation[j1];
                        if (c.a(annotation))
                        {
                            xj1.a(annotation);
                        }
                        j1++;
                    }
                }
            }
            i1++;
        }
    }

    protected void a(Constructor constructor, xi xi1, boolean flag)
    {
        Annotation aannotation[] = constructor.getDeclaredAnnotations();
        int k1 = aannotation.length;
        for (int i1 = 0; i1 < k1; i1++)
        {
            Annotation annotation = aannotation[i1];
            if (c.a(annotation))
            {
                xi1.a(annotation);
            }
        }

        if (flag)
        {
            constructor = constructor.getParameterAnnotations();
            int i2 = constructor.length;
            for (int j1 = 0; j1 < i2; j1++)
            {
                Object obj = constructor[j1];
                int j2 = obj.length;
                for (int l1 = 0; l1 < j2; l1++)
                {
                    xi1.a(j1, obj[l1]);
                }

            }

        }
    }

    protected void a(Method method, xl xl1)
    {
        method = method.getDeclaredAnnotations();
        int j1 = method.length;
        for (int i1 = 0; i1 < j1; i1++)
        {
            Annotation annotation = method[i1];
            if (c.a(annotation))
            {
                xl1.b(annotation);
            }
        }

    }

    protected void a(Method method, xl xl1, boolean flag)
    {
        Annotation aannotation[] = method.getDeclaredAnnotations();
        int k1 = aannotation.length;
        for (int i1 = 0; i1 < k1; i1++)
        {
            Annotation annotation = aannotation[i1];
            if (c.a(annotation))
            {
                xl1.a(annotation);
            }
        }

        if (flag)
        {
            method = method.getParameterAnnotations();
            int i2 = method.length;
            for (int j1 = 0; j1 < i2; j1++)
            {
                Object obj = method[j1];
                int j2 = obj.length;
                for (int l1 = 0; l1 < j2; l1++)
                {
                    xl1.a(j1, obj[l1]);
                }

            }

        }
    }

    protected void a(Map map, Class class1)
    {
        Class class2 = class1.getSuperclass();
        if (class2 != null)
        {
            a(map, class2);
            Field afield[] = class1.getDeclaredFields();
            int j1 = afield.length;
            int i1 = 0;
            while (i1 < j1) 
            {
                Field field = afield[i1];
                if (b(field))
                {
                    map.put(field.getName(), a(field));
                }
                i1++;
            }
            if (d != null)
            {
                class1 = d.a(class1);
                if (class1 != null)
                {
                    a(class1, map);
                }
            }
        }
    }

    public void a(boolean flag)
    {
label0:
        {
            h = null;
            Object aobj[] = a.getDeclaredConstructors();
            int k1 = aobj.length;
            int i1 = 0;
            while (i1 < k1) 
            {
                Constructor constructor = aobj[i1];
                if (constructor.getParameterTypes().length == 0)
                {
                    g = a(constructor, true);
                } else
                if (flag)
                {
                    if (h == null)
                    {
                        h = new ArrayList(Math.max(10, aobj.length));
                    }
                    h.add(a(constructor, false));
                }
                i1++;
            }
            if (e != null && (g != null || h != null))
            {
                c(e);
            }
            if (c != null)
            {
                if (g != null && c.a(g))
                {
                    g = null;
                }
                if (h != null)
                {
                    i1 = h.size();
                    do
                    {
                        i1--;
                        if (i1 < 0)
                        {
                            break;
                        }
                        if (c.a((xi)h.get(i1)))
                        {
                            h.remove(i1);
                        }
                    } while (true);
                }
            }
            i = null;
            if (!flag)
            {
                break label0;
            }
            aobj = a.getDeclaredMethods();
            k1 = aobj.length;
            i1 = 0;
            do
            {
                if (i1 >= k1)
                {
                    break;
                }
                Method method = aobj[i1];
                if (Modifier.isStatic(method.getModifiers()) && method.getParameterTypes().length >= 1)
                {
                    if (i == null)
                    {
                        i = new ArrayList(8);
                    }
                    i.add(b(method));
                }
                i1++;
            } while (true);
            if (e != null && i != null)
            {
                d(e);
            }
            if (c != null && i != null)
            {
                int j1 = i.size();
                do
                {
                    j1--;
                    if (j1 < 0)
                    {
                        break;
                    }
                    if (c.a((xl)i.get(j1)))
                    {
                        i.remove(j1);
                    }
                } while (true);
            }
        }
    }

    protected boolean a(Method method, xz xz1)
    {
        while (xz1 != null && !xz1.a(method) || method.isSynthetic() || method.isBridge()) 
        {
            return false;
        }
        return true;
    }

    protected xp[] a(Annotation aannotation[][])
    {
        int j1 = aannotation.length;
        xp axp[] = new xp[j1];
        for (int i1 = 0; i1 < j1; i1++)
        {
            axp[i1] = a(aannotation[i1]);
        }

        return axp;
    }

    protected xl b(Method method)
    {
        if (c == null)
        {
            return new xl(method, o(), a(method.getParameterTypes().length));
        } else
        {
            return new xl(method, a(method.getDeclaredAnnotations()), a(method.getParameterAnnotations()));
        }
    }

    public String b()
    {
        return a.getName();
    }

    public Type c()
    {
        return a;
    }

    protected void c(Class class1)
    {
        Object obj;
        Constructor constructor;
        int i1;
        Constructor aconstructor[];
        int j1;
        int i2;
        if (h == null)
        {
            i1 = 0;
        } else
        {
            i1 = h.size();
        }
        aconstructor = class1.getDeclaredConstructors();
        i2 = aconstructor.length;
        j1 = 0;
        class1 = null;
        if (j1 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        constructor = aconstructor[j1];
        if (constructor.getParameterTypes().length == 0)
        {
            obj = class1;
            if (g != null)
            {
                a(constructor, g, false);
                obj = class1;
            }
        } else
        {
            if (class1 == null)
            {
                obj = new xy[i1];
                int k1 = 0;
                do
                {
                    class1 = ((Class) (obj));
                    if (k1 >= i1)
                    {
                        break;
                    }
                    obj[k1] = new xy(((xi)h.get(k1)).e());
                    k1++;
                } while (true);
            }
            obj = new xy(constructor);
            int l1 = 0;
            do
            {
                if (l1 >= i1)
                {
                    break MISSING_BLOCK_LABEL_219;
                }
                if (((xy) (obj)).equals(class1[l1]))
                {
                    break;
                }
                l1++;
            } while (true);
            a(constructor, (xi)h.get(l1), true);
            obj = class1;
        }
_L4:
        j1++;
        class1 = ((Class) (obj));
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_24;
_L1:
        return;
        obj = class1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public Class d()
    {
        return a;
    }

    protected void d(Class class1)
    {
        Method amethod[];
        int i1;
        int l1;
        int i2;
        Object obj = null;
        l1 = i.size();
        amethod = class1.getDeclaredMethods();
        i2 = amethod.length;
        i1 = 0;
        class1 = obj;
_L2:
        Object obj1;
        if (i1 >= i2)
        {
            break; /* Loop/switch isn't completed */
        }
        Method method = amethod[i1];
        if (!Modifier.isStatic(method.getModifiers()))
        {
            obj1 = class1;
        } else
        {
            obj1 = class1;
            if (method.getParameterTypes().length != 0)
            {
                if (class1 == null)
                {
                    obj1 = new xy[l1];
                    int j1 = 0;
                    do
                    {
                        class1 = ((Class) (obj1));
                        if (j1 >= l1)
                        {
                            break;
                        }
                        obj1[j1] = new xy(((xl)i.get(j1)).e());
                        j1++;
                    } while (true);
                }
                obj1 = new xy(method);
                int k1 = 0;
                do
                {
                    if (k1 >= l1)
                    {
                        break MISSING_BLOCK_LABEL_201;
                    }
                    if (((xy) (obj1)).equals(class1[k1]))
                    {
                        break;
                    }
                    k1++;
                } while (true);
                a(method, (xl)i.get(k1), true);
                obj1 = class1;
            }
        }
_L3:
        i1++;
        class1 = ((Class) (obj1));
        if (true) goto _L2; else goto _L1
_L1:
        return;
        obj1 = class1;
          goto _L3
    }

    public Class e()
    {
        return a;
    }

    public ado f()
    {
        return f;
    }

    public boolean g()
    {
        return f.a() > 0;
    }

    public xi h()
    {
        return g;
    }

    public List i()
    {
        if (h == null)
        {
            return Collections.emptyList();
        } else
        {
            return h;
        }
    }

    public List j()
    {
        if (i == null)
        {
            return Collections.emptyList();
        } else
        {
            return i;
        }
    }

    public Iterable k()
    {
        return j;
    }

    public Iterable l()
    {
        if (k == null)
        {
            return Collections.emptyList();
        } else
        {
            return k;
        }
    }

    public void m()
    {
        f = new xp();
        if (c == null)
        {
            return;
        }
        if (e != null)
        {
            a(f, a, e);
        }
        Annotation aannotation[] = a.getDeclaredAnnotations();
        int k1 = aannotation.length;
        for (int i1 = 0; i1 < k1; i1++)
        {
            Annotation annotation = aannotation[i1];
            if (c.a(annotation))
            {
                f.a(annotation);
            }
        }

        for (Iterator iterator = b.iterator(); iterator.hasNext();)
        {
            Class class1 = (Class)iterator.next();
            a(f, class1);
            Annotation aannotation1[] = class1.getDeclaredAnnotations();
            int l1 = aannotation1.length;
            int j1 = 0;
            while (j1 < l1) 
            {
                Annotation annotation1 = aannotation1[j1];
                if (c.a(annotation1))
                {
                    f.a(annotation1);
                }
                j1++;
            }
        }

        a(f, java/lang/Object);
    }

    public void n()
    {
        LinkedHashMap linkedhashmap = new LinkedHashMap();
        a(linkedhashmap, a);
        if (linkedhashmap.isEmpty())
        {
            k = Collections.emptyList();
            return;
        } else
        {
            k = new ArrayList(linkedhashmap.size());
            k.addAll(linkedhashmap.values());
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("[AnnotedClass ").append(a.getName()).append("]").toString();
    }

}
