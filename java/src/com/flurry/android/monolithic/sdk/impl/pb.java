// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class pb extends Enum
{

    public static final pb a;
    public static final pb b;
    public static final pb c;
    public static final pb d;
    public static final pb e;
    public static final pb f;
    public static final pb g;
    public static final pb h;
    public static final pb i;
    public static final pb j;
    public static final pb k;
    public static final pb l;
    public static final pb m;
    private static final pb q[];
    final String n;
    final char o[];
    final byte p[];

    private pb(String s, int i1, String s1)
    {
        super(s, i1);
        if (s1 == null)
        {
            n = null;
            o = null;
            p = null;
        } else
        {
            n = s1;
            o = s1.toCharArray();
            int j1 = o.length;
            p = new byte[j1];
            i1 = 0;
            while (i1 < j1) 
            {
                p[i1] = (byte)o[i1];
                i1++;
            }
        }
    }

    public static pb valueOf(String s)
    {
        return (pb)Enum.valueOf(com/flurry/android/monolithic/sdk/impl/pb, s);
    }

    public static pb[] values()
    {
        return (pb[])q.clone();
    }

    public String a()
    {
        return n;
    }

    public char[] b()
    {
        return o;
    }

    public boolean c()
    {
        return this == i || this == j;
    }

    public boolean d()
    {
        return ordinal() >= g.ordinal();
    }

    static 
    {
        a = new pb("NOT_AVAILABLE", 0, null);
        b = new pb("START_OBJECT", 1, "{");
        c = new pb("END_OBJECT", 2, "}");
        d = new pb("START_ARRAY", 3, "[");
        e = new pb("END_ARRAY", 4, "]");
        f = new pb("FIELD_NAME", 5, null);
        g = new pb("VALUE_EMBEDDED_OBJECT", 6, null);
        h = new pb("VALUE_STRING", 7, null);
        i = new pb("VALUE_NUMBER_INT", 8, null);
        j = new pb("VALUE_NUMBER_FLOAT", 9, null);
        k = new pb("VALUE_TRUE", 10, "true");
        l = new pb("VALUE_FALSE", 11, "false");
        m = new pb("VALUE_NULL", 12, "null");
        q = (new pb[] {
            a, b, c, d, e, f, g, h, i, j, 
            k, l, m
        });
    }
}
