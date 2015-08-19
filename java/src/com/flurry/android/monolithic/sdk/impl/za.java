// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yz, rf, yg, afm, 
//            xq, py

public class za extends yz
{

    protected final rf a;
    protected final HashMap b;
    protected final HashMap e;

    protected za(rf rf1, afm afm1, HashMap hashmap, HashMap hashmap1)
    {
        super(afm1, rf1.m());
        a = rf1;
        b = hashmap;
        e = hashmap1;
    }

    public static za a(rf rf1, afm afm1, Collection collection, boolean flag, boolean flag1)
    {
        if (flag == flag1)
        {
            throw new IllegalArgumentException();
        }
        HashMap hashmap;
        HashMap hashmap1;
        if (flag)
        {
            hashmap = new HashMap();
        } else
        {
            hashmap = null;
        }
        if (flag1)
        {
            hashmap1 = new HashMap();
        } else
        {
            hashmap1 = null;
        }
        if (collection != null)
        {
            Iterator iterator = collection.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                collection = (yg)iterator.next();
                Class class1 = collection.a();
                if (collection.c())
                {
                    collection = collection.b();
                } else
                {
                    collection = a(class1);
                }
                if (flag)
                {
                    hashmap.put(class1.getName(), collection);
                }
                if (flag1)
                {
                    afm afm2 = (afm)hashmap1.get(collection);
                    if (afm2 == null || !class1.isAssignableFrom(afm2.p()))
                    {
                        hashmap1.put(collection, rf1.b(class1));
                    }
                }
            } while (true);
        }
        return new za(rf1, afm1, hashmap, hashmap1);
    }

    protected static String a(Class class1)
    {
        class1 = class1.getName();
        int i = class1.lastIndexOf('.');
        if (i < 0)
        {
            return class1;
        } else
        {
            return class1.substring(i + 1);
        }
    }

    public afm a(String s)
        throws IllegalArgumentException
    {
        return (afm)e.get(s);
    }

    public String a(Object obj)
    {
        String s;
        Class class1;
        class1 = obj.getClass();
        s = class1.getName();
        HashMap hashmap = b;
        hashmap;
        JVM INSTR monitorenter ;
        obj = (String)b.get(s);
        Object obj1;
        obj1 = obj;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        if (a.b())
        {
            obj = (xq)a.c(class1);
            obj = a.a().g(((xq) (obj)).c());
        }
        obj1 = obj;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        obj1 = a(class1);
        b.put(s, obj1);
        hashmap;
        JVM INSTR monitorexit ;
        return ((String) (obj1));
        obj;
        hashmap;
        JVM INSTR monitorexit ;
        throw obj;
    }

    public String a(Object obj, Class class1)
    {
        return a(obj);
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append('[').append(getClass().getName());
        stringbuilder.append("; id-to-type=").append(e);
        stringbuilder.append(']');
        return stringbuilder.toString();
    }
}
