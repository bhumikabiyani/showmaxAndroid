// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class ay extends Enum
{

    public static final ay a;
    public static final ay b;
    public static final ay c;
    private static final ay d[];

    private ay(String s, int i)
    {
        super(s, i);
    }

    public static ay valueOf(String s)
    {
        return (ay)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/ay, s);
    }

    public static ay[] values()
    {
        return (ay[])d.clone();
    }

    static 
    {
        a = new ay("WEB_RESULT_UNKNOWN", 0);
        b = new ay("WEB_RESULT_BACK", 1);
        c = new ay("WEB_RESULT_CLOSE", 2);
        d = (new ay[] {
            a, b, c
        });
    }
}
