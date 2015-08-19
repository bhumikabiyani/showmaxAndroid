// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


public final class pu
{

    static final String a = String.valueOf(0x8000000000000000L);
    static final char b[];
    static final char c[];
    static final byte d[];
    static final String e[] = {
        "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", 
        "10"
    };
    static final String f[] = {
        "-1", "-2", "-3", "-4", "-5", "-6", "-7", "-8", "-9", "-10"
    };
    private static int g = 0xf4240;
    private static int h = 0x3b9aca00;
    private static long i = 0x2540be400L;
    private static long j = 1000L;
    private static long k = 0xffffffff80000000L;
    private static long l = 0x7fffffffL;

    public static int a(int i1, char ac[], int j1)
    {
        int l1 = i1;
        int k1 = j1;
        if (i1 < 0)
        {
            if (i1 == 0x80000000)
            {
                return a(i1, ac, j1);
            }
            ac[j1] = '-';
            l1 = -i1;
            k1 = j1 + 1;
        }
        if (l1 < g)
        {
            if (l1 < 1000)
            {
                if (l1 < 10)
                {
                    ac[k1] = (char)(l1 + 48);
                    return k1 + 1;
                } else
                {
                    return b(l1, ac, k1);
                }
            } else
            {
                i1 = l1 / 1000;
                return c(l1 - i1 * 1000, ac, b(i1, ac, k1));
            }
        }
        boolean flag;
        if (l1 >= h)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i1 = l1;
        j1 = k1;
        if (flag)
        {
            i1 = l1 - h;
            if (i1 >= h)
            {
                i1 -= h;
                ac[k1] = '2';
                j1 = k1 + 1;
            } else
            {
                ac[k1] = '1';
                j1 = k1 + 1;
            }
        }
        k1 = i1 / 1000;
        l1 = k1 / 1000;
        if (flag)
        {
            j1 = c(l1, ac, j1);
        } else
        {
            j1 = b(l1, ac, j1);
        }
        return c(i1 - k1 * 1000, ac, c(k1 - l1 * 1000, ac, j1));
    }

    public static int a(long l1, char ac[], int i1)
    {
        int k1;
        int k2;
        long l2;
        if (l1 < 0L)
        {
            if (l1 > k)
            {
                return a((int)l1, ac, i1);
            }
            if (l1 == 0x8000000000000000L)
            {
                int j1 = a.length();
                a.getChars(0, j1, ac, i1);
                return i1 + j1;
            }
            ac[i1] = '-';
            l2 = -l1;
            k1 = i1 + 1;
        } else
        {
            l2 = l1;
            k1 = i1;
            if (l1 <= l)
            {
                return a((int)l1, ac, i1);
            }
        }
        k2 = k1 + b(l2);
        i1 = k2;
        for (; l2 > l; l2 = l1)
        {
            i1 -= 3;
            l1 = l2 / j;
            c((int)(l2 - j * l1), ac, i1);
        }

        int i2 = (int)l2;
        int j2 = i1;
        for (i1 = i2; i1 >= 1000; i1 = i2)
        {
            j2 -= 3;
            i2 = i1 / 1000;
            c(i1 - i2 * 1000, ac, j2);
        }

        b(i1, ac, k1);
        return k2;
    }

    public static String a(double d1)
    {
        return Double.toString(d1);
    }

    public static String a(int i1)
    {
        if (i1 < e.length)
        {
            if (i1 >= 0)
            {
                return e[i1];
            }
            int j1 = -i1 - 1;
            if (j1 < f.length)
            {
                return f[j1];
            }
        }
        return Integer.toString(i1);
    }

    public static String a(long l1)
    {
        if (l1 <= 0x7fffffffL && l1 >= 0xffffffff80000000L)
        {
            return a((int)l1);
        } else
        {
            return Long.toString(l1);
        }
    }

    private static int b(int i1, char ac[], int j1)
    {
        i1 <<= 2;
        char ac1[] = b;
        int k1 = i1 + 1;
        char c1 = ac1[i1];
        i1 = j1;
        if (c1 != 0)
        {
            ac[j1] = c1;
            i1 = j1 + 1;
        }
        c1 = b[k1];
        j1 = i1;
        if (c1 != 0)
        {
            ac[i1] = c1;
            j1 = i1 + 1;
        }
        ac[j1] = b[k1 + 1];
        return j1 + 1;
    }

    private static int b(long l1)
    {
        int i1 = 10;
        long l2 = i;
        do
        {
            if (l1 < l2 || i1 == 19)
            {
                return i1;
            }
            i1++;
            l2 = (l2 << 1) + (l2 << 3);
        } while (true);
    }

    private static int c(int i1, char ac[], int j1)
    {
        int l1 = i1 << 2;
        i1 = j1 + 1;
        char ac1[] = c;
        int k1 = l1 + 1;
        ac[j1] = ac1[l1];
        j1 = i1 + 1;
        ac[i1] = c[k1];
        ac[j1] = c[k1 + 1];
        return j1 + 1;
    }

    static 
    {
        b = new char[4000];
        c = new char[4000];
        int k1 = 0;
        int i1 = 0;
        for (; k1 < 10; k1++)
        {
            char c3 = (char)(k1 + 48);
            char c1;
            char c2;
            char c4;
            int l1;
            if (k1 == 0)
            {
                c1 = '\0';
            } else
            {
                c1 = c3;
            }
            for (l1 = 0; l1 < 10; l1++)
            {
                c4 = (char)(l1 + 48);
                int i2;
                if (k1 == 0 && l1 == 0)
                {
                    c2 = '\0';
                } else
                {
                    c2 = c4;
                }
                for (i2 = 0; i2 < 10; i2++)
                {
                    char c5 = (char)(i2 + 48);
                    b[i1] = c1;
                    b[i1 + 1] = c2;
                    b[i1 + 2] = c5;
                    c[i1] = c3;
                    c[i1 + 1] = c4;
                    c[i1 + 2] = c5;
                    i1 += 4;
                }

            }

        }

        d = new byte[4000];
        for (int j1 = 0; j1 < 4000; j1++)
        {
            d[j1] = (byte)c[j1];
        }

    }
}
