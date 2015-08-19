// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class hl extends Enum
{

    public static final hl a;
    public static final hl b;
    public static final hl c;
    private static final hl d[];

    private hl(String s, int i)
    {
        super(s, i);
    }

    public static hl valueOf(String s)
    {
        return (hl)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/hl, s);
    }

    public static hl[] values()
    {
        return (hl[])d.clone();
    }

    static 
    {
        a = new hl("OBJECT", 0);
        b = new hl("USER", 1);
        c = new hl("NONE", 2);
        d = (new hl[] {
            a, b, c
        });
    }
}
