// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class sg extends Enum
{

    public static final sg a;
    public static final sg b;
    private static final sg c[];

    private sg(String s, int i)
    {
        super(s, i);
    }

    public static sg valueOf(String s)
    {
        return (sg)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/sg, s);
    }

    public static sg[] values()
    {
        return (sg[])c.clone();
    }

    static 
    {
        a = new sg("DYNAMIC", 0);
        b = new sg("STATIC", 1);
        c = (new sg[] {
            a, b
        });
    }
}
