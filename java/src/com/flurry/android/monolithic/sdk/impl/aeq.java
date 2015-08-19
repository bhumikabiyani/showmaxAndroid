// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afc, oz, or, ru

public final class aeq extends afc
{

    protected final BigInteger c;

    public aeq(BigInteger biginteger)
    {
        c = biginteger;
    }

    public static aeq a(BigInteger biginteger)
    {
        return new aeq(biginteger);
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
            if (((aeq)obj).c != c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return c.hashCode();
    }

    public int j()
    {
        return c.intValue();
    }

    public long k()
    {
        return c.longValue();
    }

    public double l()
    {
        return c.doubleValue();
    }

    public String m()
    {
        return c.toString();
    }
}
