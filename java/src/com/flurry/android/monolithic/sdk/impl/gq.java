// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class gq extends Enum
{

    public static final gq a;
    public static final gq b;
    public static final gq c;
    public static final gq d;
    public static final gq e;
    private static final gq f[];

    private gq(String s, int i)
    {
        super(s, i);
    }

    public static gq valueOf(String s)
    {
        return (gq)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/gq, s);
    }

    public static gq[] values()
    {
        return (gq[])f.clone();
    }

    static 
    {
        a = new gq("PENDING_DB", 0);
        b = new gq("SERVER_DB", 1);
        c = new gq("REGISTERED_DB", 2);
        d = new gq("SEARCH_DATA_DB", 3);
        e = new gq("SEARCH_ITEMS_DATA_DB", 4);
        f = (new gq[] {
            a, b, c, d, e
        });
    }
}
