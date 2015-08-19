// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afc, oz, or, pu, 
//            ru

public final class aex extends afc
{

    protected final double c;

    public aex(double d)
    {
        c = d;
    }

    public static aex b(double d)
    {
        return new aex(d);
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.a(c);
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
            if (((aex)obj).c != c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        long l1 = Double.doubleToLongBits(c);
        int i = (int)l1;
        return (int)(l1 >> 32) ^ i;
    }

    public int j()
    {
        return (int)c;
    }

    public long k()
    {
        return (long)c;
    }

    public double l()
    {
        return c;
    }

    public String m()
    {
        return pu.a(c);
    }
}
