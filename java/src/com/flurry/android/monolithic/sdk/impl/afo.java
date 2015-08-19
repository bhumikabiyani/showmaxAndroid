// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class afo extends Enum
{

    public static final afo a;
    public static final afo b;
    public static final afo c;
    private static final afo e[];
    private final int d;

    private afo(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    static int a(afo afo1)
    {
        return afo1.d;
    }

    public static afo valueOf(String s)
    {
        return (afo)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/afo, s);
    }

    public static afo[] values()
    {
        return (afo[])e.clone();
    }

    static 
    {
        a = new afo("READ_IO_BUFFER", 0, 4000);
        b = new afo("WRITE_ENCODING_BUFFER", 1, 4000);
        c = new afo("WRITE_CONCAT_BUFFER", 2, 2000);
        e = (new afo[] {
            a, b, c
        });
    }
}
