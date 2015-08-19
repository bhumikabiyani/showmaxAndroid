// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Arrays;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afg, oz, or, oo, 
//            on, ru

public final class aer extends afg
{

    static final aer c = new aer(new byte[0]);
    final byte d[];

    public aer(byte abyte0[])
    {
        d = abyte0;
    }

    public static aer a(byte abyte0[])
    {
        if (abyte0 == null)
        {
            return null;
        }
        if (abyte0.length == 0)
        {
            return c;
        } else
        {
            return new aer(abyte0);
        }
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        or1.a(d);
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
                    return Arrays.equals(((aer)obj).d, d);
                }
            }
        }
        return flag;
    }

    public int hashCode()
    {
        if (d == null)
        {
            return -1;
        } else
        {
            return d.length;
        }
    }

    public String m()
    {
        return oo.a().a(d, false);
    }

    public String toString()
    {
        return oo.a().a(d, true);
    }

}
