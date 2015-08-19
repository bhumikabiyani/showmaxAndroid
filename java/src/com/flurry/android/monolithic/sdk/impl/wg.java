// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qw, qm

final class wg extends we
{

    wg()
    {
        super(java/lang/Byte);
    }

    public Object b(String s, qm qm1)
        throws Exception
    {
        return c(s, qm1);
    }

    public Byte c(String s, qm qm1)
        throws qw
    {
        int i = a(s);
        if (i < -128 || i > 127)
        {
            throw qm1.a(a, s, "overflow, value can not be represented as 8-bit value");
        } else
        {
            return Byte.valueOf((byte)i);
        }
    }
}
