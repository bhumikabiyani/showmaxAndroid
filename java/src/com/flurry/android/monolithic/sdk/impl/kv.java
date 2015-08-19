// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Arrays;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ld, lg, ji

public class kv
    implements ld, Comparable
{

    private ji a;
    private byte b[];

    protected kv()
    {
    }

    public kv(ji ji1)
    {
        a(ji1);
    }

    public int a(kv kv1)
    {
        return lg.a(b, 0, b.length, kv1.b, 0, kv1.b.length);
    }

    public ji a()
    {
        return a;
    }

    protected void a(ji ji1)
    {
        a = ji1;
        b = new byte[ji1.l()];
    }

    public byte[] b()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((kv)obj);
    }

    public boolean equals(Object obj)
    {
        while (obj == this || (obj instanceof ld) && Arrays.equals(b, ((ld)obj).b())) 
        {
            return true;
        }
        return false;
    }

    public int hashCode()
    {
        return Arrays.hashCode(b);
    }

    public String toString()
    {
        return Arrays.toString(b);
    }
}
