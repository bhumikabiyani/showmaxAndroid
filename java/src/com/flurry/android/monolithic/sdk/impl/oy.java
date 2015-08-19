// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class oy extends Enum
{

    public static final oy a;
    public static final oy b;
    public static final oy c;
    public static final oy d;
    public static final oy e;
    public static final oy f;
    private static final oy g[];

    private oy(String s, int i)
    {
        super(s, i);
    }

    public static oy valueOf(String s)
    {
        return (oy)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/oy, s);
    }

    public static oy[] values()
    {
        return (oy[])g.clone();
    }

    static 
    {
        a = new oy("INT", 0);
        b = new oy("LONG", 1);
        c = new oy("BIG_INTEGER", 2);
        d = new oy("FLOAT", 3);
        e = new oy("DOUBLE", 4);
        f = new oy("BIG_DECIMAL", 5);
        g = (new oy[] {
            a, b, c, d, e, f
        });
    }
}
