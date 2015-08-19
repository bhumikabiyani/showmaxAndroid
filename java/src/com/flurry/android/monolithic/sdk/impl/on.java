// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Arrays;

public final class on
{

    final String a;
    final boolean b;
    final char c;
    final int d;
    private final int e[];
    private final char f[];
    private final byte g[];

    public on(on on1, String s, int i)
    {
        this(on1, s, on1.b, on1.c, i);
    }

    public on(on on1, String s, boolean flag, char c1, int i)
    {
        e = new int[128];
        f = new char[64];
        g = new byte[64];
        a = s;
        s = on1.g;
        System.arraycopy(s, 0, g, 0, s.length);
        s = on1.f;
        System.arraycopy(s, 0, f, 0, s.length);
        on1 = on1.e;
        System.arraycopy(on1, 0, e, 0, on1.length);
        b = flag;
        c = c1;
        d = i;
    }

    public on(String s, String s1, boolean flag, char c1, int i)
    {
        boolean flag1 = false;
        super();
        e = new int[128];
        f = new char[64];
        g = new byte[64];
        a = s;
        b = flag;
        c = c1;
        d = i;
        int j = s1.length();
        if (j != 64)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Base64Alphabet length must be exactly 64 (was ").append(j).append(")").toString());
        }
        s1.getChars(0, j, f, 0);
        Arrays.fill(e, -1);
        for (i = ((flag1) ? 1 : 0); i < j; i++)
        {
            char c2 = f[i];
            g[i] = (byte)c2;
            e[c2] = i;
        }

        if (flag)
        {
            e[c1] = -2;
        }
    }

    public int a(int i, int j, char ac[], int k)
    {
        int l = k + 1;
        ac[k] = f[i >> 18 & 0x3f];
        k = l + 1;
        ac[l] = f[i >> 12 & 0x3f];
        if (b)
        {
            int i1 = k + 1;
            char c1;
            if (j == 2)
            {
                c1 = f[i >> 6 & 0x3f];
            } else
            {
                c1 = c;
            }
            ac[k] = c1;
            ac[i1] = c;
            return i1 + 1;
        }
        if (j == 2)
        {
            ac[k] = f[i >> 6 & 0x3f];
            return k + 1;
        } else
        {
            return k;
        }
    }

    public int a(int i, char ac[], int j)
    {
        int k = j + 1;
        ac[j] = f[i >> 18 & 0x3f];
        j = k + 1;
        ac[k] = f[i >> 12 & 0x3f];
        k = j + 1;
        ac[j] = f[i >> 6 & 0x3f];
        ac[k] = f[i & 0x3f];
        return k + 1;
    }

    public String a(byte abyte0[], boolean flag)
    {
        int l = abyte0.length;
        StringBuilder stringbuilder = new StringBuilder((l >> 2) + l + (l >> 3));
        if (flag)
        {
            stringbuilder.append('"');
        }
        int j = c();
        int i = 0;
        j >>= 2;
        int i1;
        for (; i <= l - 3; i = i1 + 1)
        {
            int k1 = i + 1;
            i = abyte0[i];
            i1 = k1 + 1;
            a(stringbuilder, (i << 8 | abyte0[k1] & 0xff) << 8 | abyte0[i1] & 0xff);
            j--;
            i = j;
            if (j <= 0)
            {
                stringbuilder.append('\\');
                stringbuilder.append('n');
                i = c() >> 2;
            }
            j = i;
        }

        l -= i;
        if (l > 0)
        {
            int j1 = i + 1;
            int k = abyte0[i] << 16;
            i = k;
            if (l == 2)
            {
                i = k | (abyte0[j1] & 0xff) << 8;
            }
            a(stringbuilder, i, l);
        }
        if (flag)
        {
            stringbuilder.append('"');
        }
        return stringbuilder.toString();
    }

    public void a(StringBuilder stringbuilder, int i)
    {
        stringbuilder.append(f[i >> 18 & 0x3f]);
        stringbuilder.append(f[i >> 12 & 0x3f]);
        stringbuilder.append(f[i >> 6 & 0x3f]);
        stringbuilder.append(f[i & 0x3f]);
    }

    public void a(StringBuilder stringbuilder, int i, int j)
    {
        stringbuilder.append(f[i >> 18 & 0x3f]);
        stringbuilder.append(f[i >> 12 & 0x3f]);
        if (b)
        {
            char c1;
            if (j == 2)
            {
                c1 = f[i >> 6 & 0x3f];
            } else
            {
                c1 = c;
            }
            stringbuilder.append(c1);
            stringbuilder.append(c);
        } else
        if (j == 2)
        {
            stringbuilder.append(f[i >> 6 & 0x3f]);
            return;
        }
    }

    public boolean a()
    {
        return b;
    }

    public boolean a(char c1)
    {
        return c1 == c;
    }

    public boolean a(int i)
    {
        return i == c;
    }

    public char b()
    {
        return c;
    }

    public int b(char c1)
    {
        if (c1 <= '\177')
        {
            return e[c1];
        } else
        {
            return -1;
        }
    }

    public int c()
    {
        return d;
    }

    public String toString()
    {
        return a;
    }
}
