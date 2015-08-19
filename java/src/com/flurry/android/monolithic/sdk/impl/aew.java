// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afc, oz, or, ru

public final class aew extends afc
{

    protected final BigDecimal c;

    public aew(BigDecimal bigdecimal)
    {
        c = bigdecimal;
    }

    public static aew a(BigDecimal bigdecimal)
    {
        return new aew(bigdecimal);
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.a(c);
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = false;
        boolean flag;
        if (obj == this)
        {
            flag = true;
        } else
        {
            flag = flag1;
            if (obj != null)
            {
                flag = flag1;
                if (obj.getClass() == getClass())
                {
                    return ((aew)obj).c.equals(c);
                }
            }
        }
        return flag;
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
