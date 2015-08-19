// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class jd extends Enum
{

    public static final jd a;
    public static final jd b;
    public static final jd c;
    private static final jd e[];
    private int d;

    private jd(String s, int i, int j)
    {
        super(s, i);
        d = j;
    }

    public static jd valueOf(String s)
    {
        return (jd)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/jd, s);
    }

    public static jd[] values()
    {
        return (jd[])e.clone();
    }

    public int a()
    {
        return d;
    }

    static 
    {
        a = new jd("NONE_OR_UNKNOWN", 0, 0);
        b = new jd("WIFI", 1, 1);
        c = new jd("CELL", 2, 2);
        e = (new jd[] {
            a, b, c
        });
    }
}
