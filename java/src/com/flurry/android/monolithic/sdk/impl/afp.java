// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class afp extends Enum
{

    public static final afp a;
    public static final afp b;
    public static final afp c;
    public static final afp d;
    private static final afp f[];
    private final int e;

    private afp(String s, int i, int j)
    {
        super(s, i);
        e = j;
    }

    static int a(afp afp1)
    {
        return afp1.e;
    }

    public static afp valueOf(String s)
    {
        return (afp)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/afp, s);
    }

    public static afp[] values()
    {
        return (afp[])f.clone();
    }

    static 
    {
        a = new afp("TOKEN_BUFFER", 0, 2000);
        b = new afp("CONCAT_BUFFER", 1, 2000);
        c = new afp("TEXT_BUFFER", 2, 200);
        d = new afp("NAME_COPY_BUFFER", 3, 200);
        f = (new afp[] {
            a, b, c, d
        });
    }
}
