// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class os extends Enum
{

    public static final os a;
    public static final os b;
    public static final os c;
    public static final os d;
    public static final os e;
    public static final os f;
    public static final os g;
    private static final os j[];
    final boolean h;
    final int i = 1 << ordinal();

    private os(String s, int k, boolean flag)
    {
        super(s, k);
        h = flag;
    }

    public static int a()
    {
        int l = 0;
        os aos[] = values();
        int j1 = aos.length;
        for (int k = 0; k < j1;)
        {
            os os1 = aos[k];
            int i1 = l;
            if (os1.b())
            {
                i1 = l | os1.c();
            }
            k++;
            l = i1;
        }

        return l;
    }

    public static os valueOf(String s)
    {
        return (os)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/os, s);
    }

    public static os[] values()
    {
        return (os[])j.clone();
    }

    public boolean b()
    {
        return h;
    }

    public int c()
    {
        return i;
    }

    static 
    {
        a = new os("AUTO_CLOSE_TARGET", 0, true);
        b = new os("AUTO_CLOSE_JSON_CONTENT", 1, true);
        c = new os("QUOTE_FIELD_NAMES", 2, true);
        d = new os("QUOTE_NON_NUMERIC_NUMBERS", 3, true);
        e = new os("WRITE_NUMBERS_AS_STRINGS", 4, false);
        f = new os("FLUSH_PASSED_TO_STREAM", 5, true);
        g = new os("ESCAPE_NON_ASCII", 6, false);
        j = (new os[] {
            a, b, c, d, e, f, g
        });
    }
}
