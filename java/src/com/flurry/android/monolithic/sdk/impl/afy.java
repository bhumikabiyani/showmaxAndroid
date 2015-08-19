// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.math.BigDecimal;
import java.util.ArrayList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afp, afn, pt

public final class afy
{

    static final char a[] = new char[0];
    private final afn b;
    private char c[];
    private int d;
    private int e;
    private ArrayList f;
    private boolean g;
    private int h;
    private char i[];
    private int j;
    private String k;
    private char l[];

    public afy(afn afn1)
    {
        g = false;
        b = afn1;
    }

    private final char[] b(int i1)
    {
        if (b != null)
        {
            return b.a(afp.c, i1);
        } else
        {
            return new char[Math.max(i1, 1000)];
        }
    }

    private void c(int i1)
    {
        int j1 = e;
        e = 0;
        char ac[] = c;
        c = null;
        int k1 = d;
        d = -1;
        i1 = j1 + i1;
        if (i == null || i1 > i.length)
        {
            i = b(i1);
        }
        if (j1 > 0)
        {
            System.arraycopy(ac, k1, i, 0, j1);
        }
        h = 0;
        j = j1;
    }

    private void d(int i1)
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        char ac[] = i;
        g = true;
        f.add(ac);
        h = h + ac.length;
        int k1 = ac.length;
        int j1 = k1 >> 1;
        if (j1 >= i1)
        {
            i1 = j1;
        }
        ac = e(Math.min(0x40000, k1 + i1));
        j = 0;
        i = ac;
    }

    private final char[] e(int i1)
    {
        return new char[i1];
    }

    private final void n()
    {
        g = false;
        f.clear();
        h = 0;
        j = 0;
    }

    private char[] o()
    {
        if (k != null)
        {
            return k.toCharArray();
        }
        if (d >= 0)
        {
            if (e < 1)
            {
                return a;
            } else
            {
                char ac[] = e(e);
                System.arraycopy(c, d, ac, 0, e);
                return ac;
            }
        }
        int i1 = c();
        if (i1 < 1)
        {
            return a;
        }
        char ac1[] = e(i1);
        if (f != null)
        {
            int k1 = f.size();
            int j1 = 0;
            i1 = 0;
            for (; j1 < k1; j1++)
            {
                char ac2[] = (char[])(char[])f.get(j1);
                int l1 = ac2.length;
                System.arraycopy(ac2, 0, ac1, i1, l1);
                i1 += l1;
            }

        } else
        {
            i1 = 0;
        }
        System.arraycopy(i, 0, ac1, i1, j);
        return ac1;
    }

    public void a()
    {
        if (b == null)
        {
            b();
        } else
        if (i != null)
        {
            b();
            char ac[] = i;
            i = null;
            b.a(afp.c, ac);
            return;
        }
    }

    public void a(int i1)
    {
        j = i1;
    }

    public void a(String s)
    {
        c = null;
        d = -1;
        e = 0;
        k = s;
        l = null;
        if (g)
        {
            n();
        }
        j = 0;
    }

    public void a(char ac[], int i1, int j1)
    {
        k = null;
        l = null;
        c = ac;
        d = i1;
        e = j1;
        if (g)
        {
            n();
        }
    }

    public void b()
    {
        d = -1;
        j = 0;
        e = 0;
        c = null;
        k = null;
        l = null;
        if (g)
        {
            n();
        }
    }

    public void b(char ac[], int i1, int j1)
    {
        c = null;
        d = -1;
        e = 0;
        k = null;
        l = null;
        if (!g) goto _L2; else goto _L1
_L1:
        n();
_L4:
        h = 0;
        j = 0;
        c(ac, i1, j1);
        return;
_L2:
        if (i == null)
        {
            i = b(j1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public int c()
    {
        if (d >= 0)
        {
            return e;
        }
        if (l != null)
        {
            return l.length;
        }
        if (k != null)
        {
            return k.length();
        } else
        {
            return h + j;
        }
    }

    public void c(char ac[], int i1, int j1)
    {
        if (d >= 0)
        {
            c(j1);
        }
        k = null;
        l = null;
        char ac1[] = i;
        int i2 = ac1.length - j;
        if (i2 >= j1)
        {
            System.arraycopy(ac, i1, ac1, j, j1);
            j = j + j1;
            return;
        }
        int l1 = i1;
        int k1 = j1;
        if (i2 > 0)
        {
            System.arraycopy(ac, i1, ac1, j, i2);
            l1 = i1 + i2;
            k1 = j1 - i2;
        }
        d(k1);
        System.arraycopy(ac, l1, i, 0, k1);
        j = k1;
    }

    public int d()
    {
        if (d >= 0)
        {
            return d;
        } else
        {
            return 0;
        }
    }

    public char[] e()
    {
        if (d >= 0)
        {
            return c;
        }
        if (l != null)
        {
            return l;
        }
        if (k != null)
        {
            char ac[] = k.toCharArray();
            l = ac;
            return ac;
        }
        if (!g)
        {
            return i;
        } else
        {
            return g();
        }
    }

    public String f()
    {
        if (k == null)
        {
            if (l != null)
            {
                k = new String(l);
            } else
            if (d >= 0)
            {
                if (e < 1)
                {
                    k = "";
                    return "";
                }
                k = new String(c, d, e);
            } else
            {
                int i1 = h;
                int k1 = j;
                if (i1 == 0)
                {
                    String s;
                    if (k1 == 0)
                    {
                        s = "";
                    } else
                    {
                        s = new String(i, 0, k1);
                    }
                    k = s;
                } else
                {
                    StringBuilder stringbuilder = new StringBuilder(i1 + k1);
                    if (f != null)
                    {
                        int l1 = f.size();
                        for (int j1 = 0; j1 < l1; j1++)
                        {
                            char ac[] = (char[])f.get(j1);
                            stringbuilder.append(ac, 0, ac.length);
                        }

                    }
                    stringbuilder.append(i, 0, j);
                    k = stringbuilder.toString();
                }
            }
        }
        return k;
    }

    public char[] g()
    {
        char ac1[] = l;
        char ac[] = ac1;
        if (ac1 == null)
        {
            ac = o();
            l = ac;
        }
        return ac;
    }

    public BigDecimal h()
        throws NumberFormatException
    {
        if (l != null)
        {
            return new BigDecimal(l);
        }
        if (d >= 0)
        {
            return new BigDecimal(c, d, e);
        }
        if (h == 0)
        {
            return new BigDecimal(i, 0, j);
        } else
        {
            return new BigDecimal(g());
        }
    }

    public double i()
        throws NumberFormatException
    {
        return pt.c(f());
    }

    public char[] j()
    {
        if (d < 0) goto _L2; else goto _L1
_L1:
        c(1);
_L4:
        return i;
_L2:
        char ac[] = i;
        if (ac == null)
        {
            i = b(0);
        } else
        if (j >= ac.length)
        {
            d(1);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public final char[] k()
    {
        d = -1;
        j = 0;
        e = 0;
        c = null;
        k = null;
        l = null;
        if (g)
        {
            n();
        }
        char ac1[] = i;
        char ac[] = ac1;
        if (ac1 == null)
        {
            ac = b(0);
            i = ac;
        }
        return ac;
    }

    public int l()
    {
        return j;
    }

    public char[] m()
    {
        if (f == null)
        {
            f = new ArrayList();
        }
        g = true;
        f.add(i);
        int i1 = i.length;
        h = h + i1;
        char ac[] = e(Math.min(i1 + (i1 >> 1), 0x40000));
        j = 0;
        i = ac;
        return ac;
    }

    public String toString()
    {
        return f();
    }

}
