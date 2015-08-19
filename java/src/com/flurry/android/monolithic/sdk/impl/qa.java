// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class qa extends Enum
{

    public static final qa a;
    public static final qa b;
    private static final qa c[];

    private qa(String s, int i)
    {
        super(s, i);
    }

    public static qa valueOf(String s)
    {
        return (qa)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/qa, s);
    }

    public static qa[] values()
    {
        return (qa[])c.clone();
    }

    static 
    {
        a = new qa("MANAGED_REFERENCE", 0);
        b = new qa("BACK_REFERENCE", 1);
        c = (new qa[] {
            a, b
        });
    }
}
