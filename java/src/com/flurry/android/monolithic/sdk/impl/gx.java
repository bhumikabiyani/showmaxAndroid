// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class gx extends Enum
{

    public static final gx a;
    public static final gx b;
    public static final gx c;
    private static final gx d[];

    private gx(String s, int i)
    {
        super(s, i);
    }

    public static gx valueOf(String s)
    {
        return (gx)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/gx, s);
    }

    public static gx[] values()
    {
        return (gx[])d.clone();
    }

    static 
    {
        a = new gx("METHOD_POST", 0);
        b = new gx("METHOD_PUT", 1);
        c = new gx("METHOD_GET", 2);
        d = (new gx[] {
            a, b, c
        });
    }
}
