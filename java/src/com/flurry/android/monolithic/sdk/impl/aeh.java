// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Array;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aei

public final class aeh
{

    private aei a;
    private aei b;
    private int c;
    private Object d[];

    public aeh()
    {
    }

    protected final void a(Object obj, int i, Object aobj[], int j)
    {
        aei aei1 = a;
        int k = 0;
        for (; aei1 != null; aei1 = aei1.b())
        {
            Object aobj1[] = aei1.a();
            int l = aobj1.length;
            System.arraycopy(((Object) (aobj1)), 0, obj, k, l);
            k += l;
        }

        System.arraycopy(((Object) (aobj)), 0, obj, k, j);
        j = k + j;
        if (j != i)
        {
            throw new IllegalStateException((new StringBuilder()).append("Should have gotten ").append(i).append(" entries, got ").append(j).toString());
        } else
        {
            return;
        }
    }

    public void a(Object aobj[], int i, List list)
    {
        boolean flag = false;
        aei aei1 = a;
        int j;
        do
        {
            j = ((flag) ? 1 : 0);
            if (aei1 == null)
            {
                break;
            }
            Object aobj1[] = aei1.a();
            int k = aobj1.length;
            for (j = 0; j < k; j++)
            {
                list.add(aobj1[j]);
            }

            aei1 = aei1.b();
        } while (true);
        for (; j < i; j++)
        {
            list.add(aobj[j]);
        }

    }

    public Object[] a()
    {
        c();
        if (d == null)
        {
            return new Object[12];
        } else
        {
            return d;
        }
    }

    public Object[] a(Object aobj[])
    {
        aei aei1 = new aei(aobj);
        int i;
        if (a == null)
        {
            b = aei1;
            a = aei1;
        } else
        {
            b.a(aei1);
            b = aei1;
        }
        i = aobj.length;
        c = c + i;
        if (i < 16384)
        {
            i += i;
        } else
        {
            i += i >> 2;
        }
        return new Object[i];
    }

    public Object[] a(Object aobj[], int i)
    {
        int j = c + i;
        Object aobj1[] = new Object[j];
        a(((Object) (aobj1)), j, aobj, i);
        return aobj1;
    }

    public Object[] a(Object aobj[], int i, Class class1)
    {
        int j = i + c;
        class1 = ((Class) ((Object[])(Object[])Array.newInstance(class1, j)));
        a(class1, j, aobj, i);
        c();
        return class1;
    }

    public int b()
    {
        if (d == null)
        {
            return 0;
        } else
        {
            return d.length;
        }
    }

    protected void c()
    {
        if (b != null)
        {
            d = b.a();
        }
        b = null;
        a = null;
        c = 0;
    }
}
