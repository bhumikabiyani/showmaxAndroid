// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class kj extends Enum
{

    public static final kj a;
    public static final kj b;
    public static final kj c;
    public static final kj d;
    public static final kj e;
    public static final kj f;
    public static final kj g;
    public static final kj h;
    public static final kj i;
    public static final kj j;
    public static final kj k;
    public static final kj l;
    public static final kj m;
    public static final kj n;
    private static final kj p[];
    private String o;

    private kj(String s, int i1)
    {
        super(s, i1);
        o = name().toLowerCase();
    }

    static String a(kj kj1)
    {
        return kj1.o;
    }

    public static kj valueOf(String s)
    {
        return (kj)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/kj, s);
    }

    public static kj[] values()
    {
        return (kj[])p.clone();
    }

    public String a()
    {
        return o;
    }

    static 
    {
        a = new kj("RECORD", 0);
        b = new kj("ENUM", 1);
        c = new kj("ARRAY", 2);
        d = new kj("MAP", 3);
        e = new kj("UNION", 4);
        f = new kj("FIXED", 5);
        g = new kj("STRING", 6);
        h = new kj("BYTES", 7);
        i = new kj("INT", 8);
        j = new kj("LONG", 9);
        k = new kj("FLOAT", 10);
        l = new kj("DOUBLE", 11);
        m = new kj("BOOLEAN", 12);
        n = new kj("NULL", 13);
        p = (new kj[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m, n
        });
    }
}
