// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm, adh, adk

public class adj
{

    public static final afm a = new adh(java/lang/Object);
    private static final afm g[] = new afm[0];
    protected final adk b;
    protected final afm c;
    protected final Class d;
    protected Map e;
    protected HashSet f;
    private final adj h;

    private adj(adk adk1, adj adj1, Class class1, afm afm1)
    {
        b = adk1;
        h = adj1;
        d = class1;
        c = afm1;
    }

    public adj(adk adk1, afm afm1)
    {
        this(adk1, null, afm1.p(), afm1);
    }

    public adj(adk adk1, Class class1)
    {
        this(adk1, null, class1, null);
    }

    public adj a()
    {
        return new adj(b, this, d, c);
    }

    public afm a(String s)
    {
        if (e == null)
        {
            c();
        }
        Object obj = (afm)e.get(s);
        if (obj != null)
        {
            return ((afm) (obj));
        }
        if (f != null && f.contains(s))
        {
            return a;
        }
        if (h != null)
        {
            return h.a(s);
        }
        if (d != null && d.getEnclosingClass() != null && !Modifier.isStatic(d.getModifiers()))
        {
            return a;
        }
        if (d != null)
        {
            obj = d.getName();
        } else
        if (c != null)
        {
            obj = c.toString();
        } else
        {
            obj = "UNKNOWN";
        }
        throw new IllegalArgumentException((new StringBuilder()).append("Type variable '").append(s).append("' can not be resolved (with context of class ").append(((String) (obj))).append(")").toString());
    }

    public afm a(Type type)
    {
        return b.b(type, this);
    }

    public void a(String s, afm afm1)
    {
        if (e == null || e.size() == 0)
        {
            e = new LinkedHashMap();
        }
        e.put(s, afm1);
    }

    public void b(String s)
    {
        if (f == null)
        {
            f = new HashSet();
        }
        f.add(s);
    }

    protected void b(Type type)
    {
        boolean flag = false;
        if (type != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Type atype[];
        if (!(type instanceof ParameterizedType))
        {
            break; /* Loop/switch isn't completed */
        }
        type = (ParameterizedType)type;
        atype = type.getActualTypeArguments();
        if (atype == null || atype.length <= 0) goto _L4; else goto _L3
_L3:
        TypeVariable atypevariable[];
        int i;
        int j;
        Class class2 = (Class)type.getRawType();
        atypevariable = class2.getTypeParameters();
        if (atypevariable.length != atype.length)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Strange parametrized type (in class ").append(class2.getName()).append("): number of type arguments != number of type parameters (").append(atype.length).append(" vs ").append(atypevariable.length).append(")").toString());
        }
        j = atype.length;
        i = 0;
_L8:
        if (i >= j) goto _L4; else goto _L5
_L5:
        String s1 = atypevariable[i].getName();
        if (e != null) goto _L7; else goto _L6
_L6:
        e = new LinkedHashMap();
_L10:
        b(s1);
        e.put(s1, b.b(atype[i], this));
_L9:
        i++;
          goto _L8
_L7:
        if (!e.containsKey(s1)) goto _L10; else goto _L9
_L4:
        type = (Class)type.getRawType();
_L22:
        b(type.getGenericSuperclass());
        type = type.getGenericInterfaces();
        int k = type.length;
        i = ((flag) ? 1 : 0);
        while (i < k) 
        {
            b(type[i]);
            i++;
        }
        if (true) goto _L1; else goto _L11
_L11:
        if (!(type instanceof Class)) goto _L1; else goto _L12
_L12:
        Class class1;
        TypeVariable atypevariable1[];
        class1 = (Class)type;
        b(((Type) (class1.getDeclaringClass())));
        atypevariable1 = class1.getTypeParameters();
        if (atypevariable1 == null || atypevariable1.length <= 0) goto _L14; else goto _L13
_L13:
        Object obj = null;
        type = obj;
        if (c != null)
        {
            type = obj;
            if (class1.isAssignableFrom(c.p()))
            {
                type = b.b(c, class1);
            }
        }
        i = 0;
_L20:
        if (i >= atypevariable1.length) goto _L14; else goto _L15
_L15:
        String s;
        Object obj1;
        obj1 = atypevariable1[i];
        s = ((TypeVariable) (obj1)).getName();
        obj1 = ((TypeVariable) (obj1)).getBounds()[0];
        if (obj1 == null) goto _L17; else goto _L16
_L16:
        if (e != null) goto _L19; else goto _L18
_L18:
        e = new LinkedHashMap();
_L21:
        b(s);
        if (type != null)
        {
            e.put(s, type[i]);
        } else
        {
            e.put(s, b.b(((Type) (obj1)), this));
        }
_L17:
        i++;
          goto _L20
_L19:
        if (!e.containsKey(s)) goto _L21; else goto _L17
_L14:
        type = class1;
          goto _L22
    }

    public afm[] b()
    {
        if (e == null)
        {
            c();
        }
        if (e.size() == 0)
        {
            return g;
        } else
        {
            return (afm[])e.values().toArray(new afm[e.size()]);
        }
    }

    protected void c()
    {
        b(d);
        if (c != null)
        {
            int j = c.h();
            if (j > 0)
            {
                if (e == null)
                {
                    e = new LinkedHashMap();
                }
                for (int i = 0; i < j; i++)
                {
                    String s = c.a(i);
                    afm afm1 = c.b(i);
                    e.put(s, afm1);
                }

            }
        }
        if (e == null)
        {
            e = Collections.emptyMap();
        }
    }

    public String toString()
    {
        if (e == null)
        {
            c();
        }
        StringBuilder stringbuilder = new StringBuilder("[TypeBindings for ");
        if (c != null)
        {
            stringbuilder.append(c.toString());
        } else
        {
            stringbuilder.append(d.getName());
        }
        stringbuilder.append(": ").append(e).append("]");
        return stringbuilder.toString();
    }

}
