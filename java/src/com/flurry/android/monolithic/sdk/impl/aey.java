// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afc, oz, or, pu, 
//            ru

public final class aey extends afc
{

    private static final aey d[];
    final int c;

    public aey(int i)
    {
        c = i;
    }

    public static aey a(int i)
    {
        if (i > 10 || i < -1)
        {
            return new aey(i);
        } else
        {
            return d[i + 1];
        }
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.b(c);
    }

    public boolean d()
    {
        return true;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (obj == null)
            {
                return false;
            }
            if (obj.getClass() != getClass())
            {
                return false;
            }
            if (((aey)obj).c != c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return c;
    }

    public int j()
    {
        return c;
    }

    public long k()
    {
        return (long)c;
    }

    public double l()
    {
        return (double)c;
    }

    public String m()
    {
        return pu.a(c);
    }

    static 
    {
        d = new aey[12];
        for (int i = 0; i < 12; i++)
        {
            d[i] = new aey(i - 1);
        }

    }
}
