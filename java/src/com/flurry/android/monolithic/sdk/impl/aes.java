// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afg, oz, or, ru

public final class aes extends afg
{

    public static final aes c = new aes();
    public static final aes d = new aes();

    private aes()
    {
    }

    public static aes r()
    {
        return c;
    }

    public static aes s()
    {
        return d;
    }

    public double a(double d1)
    {
        return this != c ? 0.0D : 1.0D;
    }

    public final void a(or or1, ru ru)
        throws IOException, oz
    {
        boolean flag;
        if (this == c)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        or1.a(flag);
    }

    public boolean equals(Object obj)
    {
        return obj == this;
    }

    public boolean f()
    {
        return true;
    }

    public boolean i()
    {
        return this == c;
    }

    public String m()
    {
        if (this == c)
        {
            return "true";
        } else
        {
            return "false";
        }
    }

}
