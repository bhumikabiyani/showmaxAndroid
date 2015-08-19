// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.OutputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mf, ls, mb, lr

public class md
{

    private static final md c = new mf(null);
    protected int a;
    protected int b;

    public md()
    {
        a = 2048;
        b = 0x10000;
    }

    public static md a()
    {
        return c;
    }

    public lr a(OutputStream outputstream, lr lr)
    {
        if (lr == null || !lr.getClass().equals(com/flurry/android/monolithic/sdk/impl/ls))
        {
            return new ls(outputstream, a);
        } else
        {
            return ((ls)lr).a(outputstream, a);
        }
    }

    public md a(int i)
    {
        int j = 0x1000000;
        byte byte0 = 32;
        if (i < 32)
        {
            i = byte0;
        }
        if (i > 0x1000000)
        {
            i = j;
        }
        a = i;
        return this;
    }

    public lr b(OutputStream outputstream, lr lr)
    {
        if (lr == null || !lr.getClass().equals(com/flurry/android/monolithic/sdk/impl/mb))
        {
            return new mb(outputstream);
        } else
        {
            return ((mb)lr).a(outputstream);
        }
    }

}
