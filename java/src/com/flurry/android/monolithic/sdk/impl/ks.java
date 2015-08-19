// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.AbstractList;
import java.util.Iterator;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ko, kj, ji, jg, 
//            kq, kt

public class ks extends AbstractList
    implements ko, Comparable
{

    private static final Object a[] = new Object[0];
    private final ji b;
    private int c;
    private Object d[];

    public ks(int i, ji ji1)
    {
        d = a;
        if (ji1 == null || !kj.c.equals(ji1.a()))
        {
            throw new jg((new StringBuilder()).append("Not an array schema: ").append(ji1).toString());
        }
        b = ji1;
        if (i != 0)
        {
            d = new Object[i];
        }
    }

    static int a(ks ks1)
    {
        return ks1.c;
    }

    static Object[] b(ks ks1)
    {
        return ks1.d;
    }

    public int a(ko ko1)
    {
        return kq.a().a(this, ko1, a());
    }

    public ji a()
    {
        return b;
    }

    public void add(int i, Object obj)
    {
        if (i > c || i < 0)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Index ").append(i).append(" out of bounds.").toString());
        }
        if (c == d.length)
        {
            Object aobj[] = new Object[(c * 3) / 2 + 1];
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, c);
            d = aobj;
        }
        System.arraycopy(((Object) (d)), i, ((Object) (d)), i + 1, c - i);
        d[i] = obj;
        c = c + 1;
    }

    public boolean add(Object obj)
    {
        if (c == d.length)
        {
            Object aobj[] = new Object[(c * 3) / 2 + 1];
            System.arraycopy(((Object) (d)), 0, ((Object) (aobj)), 0, c);
            d = aobj;
        }
        Object aobj1[] = d;
        int i = c;
        c = i + 1;
        aobj1[i] = obj;
        return true;
    }

    public Object b()
    {
        if (c < d.length)
        {
            return d[c];
        } else
        {
            return null;
        }
    }

    public void clear()
    {
        c = 0;
    }

    public int compareTo(Object obj)
    {
        return a((ko)obj);
    }

    public Object get(int i)
    {
        if (i >= c)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Index ").append(i).append(" out of bounds.").toString());
        } else
        {
            return d[i];
        }
    }

    public Iterator iterator()
    {
        return new kt(this);
    }

    public Object remove(int i)
    {
        if (i >= c)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Index ").append(i).append(" out of bounds.").toString());
        } else
        {
            Object obj = d[i];
            c = c - 1;
            System.arraycopy(((Object) (d)), i + 1, ((Object) (d)), i, c - i);
            d[c] = null;
            return obj;
        }
    }

    public Object set(int i, Object obj)
    {
        if (i >= c)
        {
            throw new IndexOutOfBoundsException((new StringBuilder()).append("Index ").append(i).append(" out of bounds.").toString());
        } else
        {
            Object obj1 = d[i];
            d[i] = obj;
            return obj1;
        }
    }

    public int size()
    {
        return c;
    }

    public String toString()
    {
        StringBuffer stringbuffer = new StringBuffer();
        stringbuffer.append("[");
        int i = 0;
        Iterator iterator1 = iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Object obj = iterator1.next();
            int j;
            if (obj == null)
            {
                obj = "null";
            } else
            {
                obj = obj.toString();
            }
            stringbuffer.append(((String) (obj)));
            j = i + 1;
            i = j;
            if (j < size())
            {
                stringbuffer.append(", ");
                i = j;
            }
        } while (true);
        stringbuffer.append("]");
        return stringbuffer.toString();
    }

}
