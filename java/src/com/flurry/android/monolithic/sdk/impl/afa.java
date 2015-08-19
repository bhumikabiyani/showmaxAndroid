// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afc, oz, or, pu, 
//            ru

public final class afa extends afc
{

    final long c;

    public afa(long l1)
    {
        c = l1;
    }

    public static afa a(long l1)
    {
        return new afa(l1);
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
            if (((afa)obj).c != c)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return (int)c ^ (int)(c >> 32);
    }

    public int j()
    {
        return (int)c;
    }

    public long k()
    {
        return c;
    }

    public double l()
    {
        return (double)c;
    }

    public String m()
    {
        return pu.a(c);
    }
}
