// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            tk, sw, tl

public final class tj
{

    private final tk a[];
    private final int b;
    private final int c;

    public tj(Collection collection)
    {
        c = collection.size();
        int i = a(c);
        b = i - 1;
        tk atk[] = new tk[i];
        for (collection = collection.iterator(); collection.hasNext();)
        {
            sw sw1 = (sw)collection.next();
            String s = sw1.c();
            int j = s.hashCode() & b;
            atk[j] = new tk(atk[j], s, sw1);
        }

        a = atk;
    }

    private static final int a(int i)
    {
        int j;
        if (i <= 32)
        {
            i += i;
        } else
        {
            i = (i >> 2) + i;
        }
        for (j = 2; j < i; j += j) { }
        return j;
    }

    private sw a(String s, int i)
    {
        for (tk tk1 = a[i]; tk1 != null; tk1 = tk1.a)
        {
            if (s.equals(tk1.b))
            {
                return tk1.c;
            }
        }

        return null;
    }

    public sw a(String s)
    {
        int i = s.hashCode();
        i = b & i;
        tk tk2 = a[i];
        if (tk2 == null)
        {
            return null;
        }
        tk tk1 = tk2;
        if (tk2.b == s)
        {
            return tk2.c;
        }
        do
        {
            tk tk3 = tk1.a;
            if (tk3 != null)
            {
                tk1 = tk3;
                if (tk3.b == s)
                {
                    return tk3.c;
                }
            } else
            {
                return a(s, i);
            }
        } while (true);
    }

    public void a()
    {
        tk atk[] = a;
        int k = atk.length;
        int i = 0;
        int j = 0;
        for (; i < k; i++)
        {
            for (tk tk1 = atk[i]; tk1 != null;)
            {
                tk1.c.a(j);
                tk1 = tk1.a;
                j++;
            }

        }

    }

    public void a(sw sw1)
    {
        String s = sw1.c();
        int i = s.hashCode() & a.length - 1;
        tk tk1 = a[i];
        boolean flag = false;
        tk tk2 = null;
        while (tk1 != null) 
        {
            if (!flag && tk1.b.equals(s))
            {
                flag = true;
            } else
            {
                tk2 = new tk(tk2, tk1.b, tk1.c);
            }
            tk1 = tk1.a;
        }
        if (!flag)
        {
            throw new NoSuchElementException((new StringBuilder()).append("No entry '").append(sw1).append("' found, can't replace").toString());
        } else
        {
            a[i] = new tk(tk2, s, sw1);
            return;
        }
    }

    public int b()
    {
        return c;
    }

    public void b(sw sw1)
    {
        String s = sw1.c();
        int i = s.hashCode() & a.length - 1;
        tk tk1 = a[i];
        boolean flag = false;
        tk tk2 = null;
        while (tk1 != null) 
        {
            if (!flag && tk1.b.equals(s))
            {
                flag = true;
            } else
            {
                tk2 = new tk(tk2, tk1.b, tk1.c);
            }
            tk1 = tk1.a;
        }
        if (!flag)
        {
            throw new NoSuchElementException((new StringBuilder()).append("No entry '").append(sw1).append("' found, can't remove").toString());
        } else
        {
            a[i] = tk2;
            return;
        }
    }

    public Iterator c()
    {
        return new tl(a);
    }
}
