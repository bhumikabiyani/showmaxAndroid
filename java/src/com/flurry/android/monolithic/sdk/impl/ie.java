// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class ie extends Enum
{

    public static final ie a;
    public static final ie b;
    private static final ie e[];
    public final int c;
    public final boolean d;

    private ie(String s, int i, int j, boolean flag)
    {
        super(s, i);
        c = j;
        d = flag;
    }

    public static ie valueOf(String s)
    {
        return (ie)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/ie, s);
    }

    public static ie[] values()
    {
        return (ie[])e.clone();
    }

    static 
    {
        a = new ie("PhoneId", 0, 1, true);
        b = new ie("Sha1Imei", 1, 5, false);
        e = (new ie[] {
            a, b
        });
    }
}
