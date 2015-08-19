// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            aek

public abstract class aej
{

    Object a;
    aek b;
    aek c;
    int d;

    protected aej()
    {
    }

    public Object a()
    {
        b();
        if (a == null)
        {
            return b(12);
        } else
        {
            return a;
        }
    }

    public final Object a(Object obj, int i)
    {
        obj = new aek(obj, i);
        if (b == null)
        {
            c = ((aek) (obj));
            b = ((aek) (obj));
        } else
        {
            c.a(((aek) (obj)));
            c = ((aek) (obj));
        }
        d = d + i;
        if (i < 16384)
        {
            i += i;
        } else
        {
            i = (i >> 2) + i;
        }
        return b(i);
    }

    protected abstract Object b(int i);

    public Object b(Object obj, int i)
    {
        int k = i + d;
        Object obj1 = b(k);
        aek aek1 = b;
        int j = 0;
        for (; aek1 != null; aek1 = aek1.b())
        {
            j = aek1.a(obj1, j);
        }

        System.arraycopy(obj, 0, obj1, j, i);
        i = j + i;
        if (i != k)
        {
            throw new IllegalStateException((new StringBuilder()).append("Should have gotten ").append(k).append(" entries, got ").append(i).toString());
        } else
        {
            return obj1;
        }
    }

    protected void b()
    {
        if (c != null)
        {
            a = c.a();
        }
        c = null;
        b = null;
        d = 0;
    }
}
