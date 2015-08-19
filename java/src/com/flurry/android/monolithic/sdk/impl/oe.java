// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class oe extends Enum
{

    public static final oe a;
    public static final oe b;
    private static final oe c[];

    private oe(String s, int i)
    {
        super(s, i);
    }

    public static oe valueOf(String s)
    {
        return (oe)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/oe, s);
    }

    public static final oe[] values()
    {
        return (oe[])c.clone();
    }

    static 
    {
        a = new oe("STRICT", 0);
        b = new oe("BROWSER_COMPATIBLE", 1);
        c = (new oe[] {
            a, b
        });
    }
}
