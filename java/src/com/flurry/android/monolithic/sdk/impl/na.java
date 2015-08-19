// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class na extends Enum
{

    public static final na a;
    public static final na b;
    public static final na c;
    public static final na d;
    public static final na e;
    public static final na f;
    public static final na g;
    private static final na h[];

    private na(String s, int i)
    {
        super(s, i);
    }

    public static na valueOf(String s)
    {
        return (na)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/na, s);
    }

    public static na[] values()
    {
        return (na[])h.clone();
    }

    static 
    {
        a = new na("TERMINAL", 0);
        b = new na("ROOT", 1);
        c = new na("SEQUENCE", 2);
        d = new na("REPEATER", 3);
        e = new na("ALTERNATIVE", 4);
        f = new na("IMPLICIT_ACTION", 5);
        g = new na("EXPLICIT_ACTION", 6);
        h = (new na[] {
            a, b, c, d, e, f, g
        });
    }
}
