// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class ox extends Enum
{

    public static final ox a;
    public static final ox b;
    public static final ox c;
    public static final ox d;
    public static final ox e;
    public static final ox f;
    public static final ox g;
    public static final ox h;
    public static final ox i;
    public static final ox j;
    private static final ox l[];
    final boolean k;

    private ox(String s, int i1, boolean flag)
    {
        super(s, i1);
        k = flag;
    }

    public static int a()
    {
        int j1 = 0;
        ox aox[] = values();
        int l1 = aox.length;
        for (int i1 = 0; i1 < l1;)
        {
            ox ox1 = aox[i1];
            int k1 = j1;
            if (ox1.b())
            {
                k1 = j1 | ox1.c();
            }
            i1++;
            j1 = k1;
        }

        return j1;
    }

    public static ox valueOf(String s)
    {
        return (ox)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/ox, s);
    }

    public static ox[] values()
    {
        return (ox[])l.clone();
    }

    public boolean b()
    {
        return k;
    }

    public int c()
    {
        return 1 << ordinal();
    }

    static 
    {
        a = new ox("AUTO_CLOSE_SOURCE", 0, true);
        b = new ox("ALLOW_COMMENTS", 1, false);
        c = new ox("ALLOW_UNQUOTED_FIELD_NAMES", 2, false);
        d = new ox("ALLOW_SINGLE_QUOTES", 3, false);
        e = new ox("ALLOW_UNQUOTED_CONTROL_CHARS", 4, false);
        f = new ox("ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER", 5, false);
        g = new ox("ALLOW_NUMERIC_LEADING_ZEROS", 6, false);
        h = new ox("ALLOW_NON_NUMERIC_NUMBERS", 7, false);
        i = new ox("INTERN_FIELD_NAMES", 8, true);
        j = new ox("CANONICALIZE_FIELD_NAMES", 9, true);
        l = (new ox[] {
            a, b, c, d, e, f, g, h, i, j
        });
    }
}
