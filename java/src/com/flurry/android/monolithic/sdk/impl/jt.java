// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class jt extends Enum
{

    public static final jt a;
    public static final jt b;
    public static final jt c;
    private static final jt e[];
    private String d;

    private jt(String s, int i)
    {
        super(s, i);
        d = name().toLowerCase();
    }

    static String a(jt jt1)
    {
        return jt1.d;
    }

    public static jt valueOf(String s)
    {
        return (jt)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/jt, s);
    }

    public static jt[] values()
    {
        return (jt[])e.clone();
    }

    static 
    {
        a = new jt("ASCENDING", 0);
        b = new jt("DESCENDING", 1);
        c = new jt("IGNORE", 2);
        e = (new jt[] {
            a, b, c
        });
    }
}
