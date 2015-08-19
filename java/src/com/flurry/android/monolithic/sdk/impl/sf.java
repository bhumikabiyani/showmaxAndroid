// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class sf extends Enum
{

    public static final sf a;
    public static final sf b;
    public static final sf c;
    public static final sf d;
    private static final sf e[];

    private sf(String s, int i)
    {
        super(s, i);
    }

    public static sf valueOf(String s)
    {
        return (sf)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/sf, s);
    }

    public static sf[] values()
    {
        return (sf[])e.clone();
    }

    static 
    {
        a = new sf("ALWAYS", 0);
        b = new sf("NON_NULL", 1);
        c = new sf("NON_DEFAULT", 2);
        d = new sf("NON_EMPTY", 3);
        e = (new sf[] {
            a, b, c, d
        });
    }
}
