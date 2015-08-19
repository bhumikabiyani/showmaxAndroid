// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.Writer;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pg, afr, pq, os, 
//            oq, pp, pe, pu, 
//            pl, pw, pd, on, 
//            pa, pc, or

public final class po extends pg
{

    protected static final char g[] = afr.d();
    protected static final int h[] = afr.c();
    protected final pq i;
    protected final Writer j;
    protected int k[];
    protected int l;
    protected pp m;
    protected pe n;
    protected char o[];
    protected int p;
    protected int q;
    protected int r;
    protected char s[];

    public po(pq pq1, int i1, pc pc, Writer writer)
    {
        super(i1, pc);
        k = h;
        p = 0;
        q = 0;
        i = pq1;
        j = writer;
        o = pq1.e();
        r = o.length;
        if (a(os.g))
        {
            a(127);
        }
    }

    private final int a(char ac[], int i1, int j1, char c1, int k1)
        throws IOException, oq
    {
        if (k1 >= 0)
        {
            if (i1 > 1 && i1 < j1)
            {
                i1 -= 2;
                ac[i1] = '\\';
                ac[i1 + 1] = (char)k1;
                return i1;
            }
            char ac1[] = s;
            ac = ac1;
            if (ac1 == null)
            {
                ac = q();
            }
            ac[1] = (char)k1;
            j.write(ac, 0, 2);
            return i1;
        }
        if (k1 != -2)
        {
            if (i1 > 5 && i1 < j1)
            {
                i1 -= 6;
                j1 = i1 + 1;
                ac[i1] = '\\';
                i1 = j1 + 1;
                ac[j1] = 'u';
                if (c1 > '\377')
                {
                    j1 = c1 >> 8 & 0xff;
                    k1 = i1 + 1;
                    ac[i1] = g[j1 >> 4];
                    i1 = k1 + 1;
                    ac[k1] = g[j1 & 0xf];
                    c1 &= '\377';
                } else
                {
                    j1 = i1 + 1;
                    ac[i1] = '0';
                    i1 = j1 + 1;
                    ac[j1] = '0';
                }
                j1 = i1 + 1;
                ac[i1] = g[c1 >> 4];
                ac[j1] = g[c1 & 0xf];
                return j1 - 5;
            }
            char ac2[] = s;
            ac = ac2;
            if (ac2 == null)
            {
                ac = q();
            }
            p = q;
            if (c1 > '\377')
            {
                j1 = c1 >> 8 & 0xff;
                c1 &= '\377';
                ac[10] = g[j1 >> 4];
                ac[11] = g[j1 & 0xf];
                ac[12] = g[c1 >> 4];
                ac[13] = g[c1 & 0xf];
                j.write(ac, 8, 6);
                return i1;
            } else
            {
                ac[6] = g[c1 >> 4];
                ac[7] = g[c1 & 0xf];
                j.write(ac, 2, 6);
                return i1;
            }
        }
        String s1;
        if (n == null)
        {
            s1 = m.a(c1).a();
        } else
        {
            s1 = n.a();
            n = null;
        }
        c1 = s1.length();
        if (i1 >= c1 && i1 < j1)
        {
            i1 -= c1;
            s1.getChars(0, c1, ac, i1);
            return i1;
        } else
        {
            j.write(s1);
            return i1;
        }
    }

    private final void a(char c1, int i1)
        throws IOException, oq
    {
        if (i1 >= 0)
        {
            if (q >= 2)
            {
                c1 = q - 2;
                p = c1;
                o[c1] = '\\';
                o[c1 + 1] = (char)i1;
                return;
            }
            char ac3[] = s;
            char ac[] = ac3;
            if (ac3 == null)
            {
                ac = q();
            }
            p = q;
            ac[1] = (char)i1;
            j.write(ac, 0, 2);
            return;
        }
        if (i1 != -2)
        {
            if (q >= 6)
            {
                char ac1[] = o;
                i1 = q - 6;
                p = i1;
                ac1[i1] = '\\';
                i1++;
                ac1[i1] = 'u';
                if (c1 > '\377')
                {
                    int j1 = c1 >> 8 & 0xff;
                    i1++;
                    ac1[i1] = g[j1 >> 4];
                    i1++;
                    ac1[i1] = g[j1 & 0xf];
                    c1 &= '\377';
                } else
                {
                    i1++;
                    ac1[i1] = '0';
                    i1++;
                    ac1[i1] = '0';
                }
                i1++;
                ac1[i1] = g[c1 >> 4];
                ac1[i1 + 1] = g[c1 & 0xf];
                return;
            }
            char ac4[] = s;
            char ac2[] = ac4;
            if (ac4 == null)
            {
                ac2 = q();
            }
            p = q;
            if (c1 > '\377')
            {
                i1 = c1 >> 8 & 0xff;
                c1 &= '\377';
                ac2[10] = g[i1 >> 4];
                ac2[11] = g[i1 & 0xf];
                ac2[12] = g[c1 >> 4];
                ac2[13] = g[c1 & 0xf];
                j.write(ac2, 8, 6);
                return;
            } else
            {
                ac2[6] = g[c1 >> 4];
                ac2[7] = g[c1 & 0xf];
                j.write(ac2, 2, 6);
                return;
            }
        }
        String s1;
        if (n == null)
        {
            s1 = m.a(c1).a();
        } else
        {
            s1 = n.a();
            n = null;
        }
        c1 = s1.length();
        if (q >= c1)
        {
            i1 = q - c1;
            p = i1;
            s1.getChars(0, c1, o, i1);
            return;
        } else
        {
            p = q;
            j.write(s1);
            return;
        }
    }

    private void a(int i1, int j1)
        throws IOException, oq
    {
        int ai[];
        int k1;
        int l1;
        k1 = q + i1;
        ai = k;
        l1 = Math.min(ai.length, l + 1);
_L8:
        if (q >= k1) goto _L2; else goto _L1
_L1:
        char c1 = o[q];
        if (c1 >= l1) goto _L4; else goto _L3
_L3:
        i1 = ai[c1];
        if (i1 == 0) goto _L6; else goto _L5
_L5:
        int i2 = q - p;
        if (i2 > 0)
        {
            j.write(o, p, i2);
        }
        q = q + 1;
        a(c1, i1);
        continue; /* Loop/switch isn't completed */
_L4:
        if (c1 <= j1)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = -1;
        if (true) goto _L5; else goto _L6
_L6:
        i1 = q + 1;
        q = i1;
        if (i1 < k1) goto _L1; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private final void a(char ac[], int i1, int j1, int k1)
        throws IOException, oq
    {
        int ai[];
        int l2;
        int i3;
        l2 = j1 + i1;
        ai = k;
        i3 = Math.min(ai.length, k1 + 1);
        boolean flag = false;
        j1 = i1;
        i1 = ((flag) ? 1 : 0);
_L12:
        if (j1 >= l2) goto _L2; else goto _L1
_L1:
        int l1;
        int k2;
        l1 = j1;
        k2 = i1;
_L10:
        char c1 = ac[l1];
        if (c1 >= i3) goto _L4; else goto _L3
_L3:
        int i2;
        i2 = ai[c1];
        i1 = i2;
        if (i2 == 0) goto _L6; else goto _L5
_L5:
        i1 = i2;
_L8:
        int j2 = l1 - j1;
        if (j2 < 32)
        {
            if (q + j2 > r)
            {
                o();
            }
            if (j2 > 0)
            {
                System.arraycopy(ac, j1, o, q, j2);
                q = q + j2;
            }
        } else
        {
            o();
            j.write(ac, j1, j2);
        }
        if (l1 < l2)
        {
            break MISSING_BLOCK_LABEL_204;
        }
_L2:
        return;
_L4:
        i1 = k2;
        if (c1 <= k1) goto _L6; else goto _L7
_L7:
        i1 = -1;
          goto _L8
_L6:
        j2 = l1 + 1;
        k2 = i1;
        l1 = j2;
        if (j2 < l2) goto _L10; else goto _L9
_L9:
        l1 = j2;
          goto _L8
        j1 = l1 + 1;
        b(c1, i1);
        if (true) goto _L12; else goto _L11
_L11:
    }

    private final void b(char c1, int i1)
        throws IOException, oq
    {
        if (i1 >= 0)
        {
            if (q + 2 > r)
            {
                o();
            }
            char ac[] = o;
            c1 = q;
            q = c1 + 1;
            ac[c1] = '\\';
            ac = o;
            c1 = q;
            q = c1 + 1;
            ac[c1] = (char)i1;
            return;
        }
        if (i1 != -2)
        {
            if (q + 2 > r)
            {
                o();
            }
            i1 = q;
            char ac1[] = o;
            int j1 = i1 + 1;
            ac1[i1] = '\\';
            i1 = j1 + 1;
            ac1[j1] = 'u';
            if (c1 > '\377')
            {
                j1 = c1 >> 8 & 0xff;
                int l1 = i1 + 1;
                ac1[i1] = g[j1 >> 4];
                i1 = l1 + 1;
                ac1[l1] = g[j1 & 0xf];
                c1 &= '\377';
            } else
            {
                int k1 = i1 + 1;
                ac1[i1] = '0';
                i1 = k1 + 1;
                ac1[k1] = '0';
            }
            j1 = i1 + 1;
            ac1[i1] = g[c1 >> 4];
            ac1[j1] = g[c1 & 0xf];
            q = j1;
            return;
        }
        String s1;
        if (n == null)
        {
            s1 = m.a(c1).a();
        } else
        {
            s1 = n.a();
            n = null;
        }
        c1 = s1.length();
        if (q + c1 > r)
        {
            o();
            if (c1 > r)
            {
                j.write(s1);
                return;
            }
        }
        s1.getChars(0, c1, o, q);
        q = q + c1;
    }

    private final void b(int i1, int j1)
        throws IOException, oq
    {
        int ai[];
        int k1;
        int l1;
        int i2;
        int i3;
        k1 = 0;
        ai = k;
        i3 = Math.min(ai.length, l + 1);
        i2 = 0;
        l1 = 0;
_L11:
        if (l1 >= i1) goto _L2; else goto _L1
_L1:
        int l2 = k1;
_L9:
        char c1 = o[l1];
        if (c1 >= i3) goto _L4; else goto _L3
_L3:
        k1 = ai[c1];
        if (k1 == 0) goto _L6; else goto _L5
_L5:
        int j2 = l1 - i2;
        if (j2 <= 0)
        {
            break MISSING_BLOCK_LABEL_140;
        }
        j.write(o, i2, j2);
        if (l1 < i1)
        {
            break MISSING_BLOCK_LABEL_140;
        }
_L2:
        return;
_L4:
        k1 = l2;
        if (c1 > j1)
        {
            k1 = -1;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        int k2 = l1 + 1;
        l2 = k1;
        l1 = k2;
        if (k2 < i1)
        {
            break; /* Loop/switch isn't completed */
        }
        l1 = k2;
        if (true) goto _L5; else goto _L7
_L7:
        if (true) goto _L9; else goto _L8
_L8:
        l1++;
        i2 = a(o, l1, i1, c1, k1);
        if (true) goto _L11; else goto _L10
_L10:
    }

    private final void b(long l1)
        throws IOException
    {
        if (q + 23 >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        q = pu.a(l1, o, q);
        ac = o;
        i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
    }

    private final void c(int i1)
        throws IOException
    {
        if (q + 13 >= r)
        {
            o();
        }
        char ac[] = o;
        int j1 = q;
        q = j1 + 1;
        ac[j1] = '"';
        q = pu.a(i1, o, q);
        ac = o;
        i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
    }

    private final void c(Object obj)
        throws IOException
    {
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        c(obj.toString());
        if (q >= r)
        {
            o();
        }
        obj = o;
        i1 = q;
        q = i1 + 1;
        obj[i1] = '"';
    }

    private final void c(char ac[], int i1, int j1)
        throws IOException, oq
    {
        if (m == null) goto _L2; else goto _L1
_L1:
        d(ac, i1, j1);
_L4:
        return;
_L2:
        int ai[];
        int l1;
        int i2;
        if (l != 0)
        {
            a(ac, i1, j1, l);
            return;
        }
        l1 = j1 + i1;
        ai = k;
        i2 = ai.length;
_L8:
        if (i1 >= l1) goto _L4; else goto _L3
_L3:
        j1 = i1;
_L10:
        char c2 = ac[j1];
        if (c2 >= i2 || ai[c2] == 0) goto _L6; else goto _L5
_L5:
        int k1 = j1 - i1;
        char c1;
        if (k1 < 32)
        {
            if (q + k1 > r)
            {
                o();
            }
            if (k1 > 0)
            {
                System.arraycopy(ac, i1, o, q, k1);
                q = q + k1;
            }
        } else
        {
            o();
            j.write(ac, i1, k1);
        }
        if (j1 >= l1) goto _L4; else goto _L7
_L7:
        i1 = j1 + 1;
        c1 = ac[j1];
        b(c1, ai[c1]);
          goto _L8
_L6:
        k1 = j1 + 1;
        j1 = k1;
        if (k1 < l1) goto _L10; else goto _L9
_L9:
        j1 = k1;
          goto _L5
    }

    private void d(int i1)
        throws IOException, oq
    {
        i1 = q + i1;
        int ai[] = k;
        int j1 = ai.length;
label0:
        do
        {
            int k1;
            if (q < i1)
            {
                do
                {
                    k1 = o[q];
                    if (k1 < j1 && ai[k1] != 0)
                    {
                        k1 = q - p;
                        if (k1 > 0)
                        {
                            j.write(o, p, k1);
                        }
                        char ac[] = o;
                        k1 = q;
                        q = k1 + 1;
                        char c1 = ac[k1];
                        a(c1, ai[c1]);
                        continue label0;
                    }
                    k1 = q + 1;
                    q = k1;
                } while (k1 < i1);
            }
            return;
        } while (true);
    }

    private final void d(char ac[], int i1, int j1)
        throws IOException, oq
    {
        char c1;
        pp pp1;
        int k1;
        int l1;
        int k2;
        int l2;
        l2 = j1 + i1;
        int ai[] = k;
        int i2;
        int i3;
        if (l < 1)
        {
            l1 = 65535;
        } else
        {
            l1 = l;
        }
        i3 = Math.min(ai.length, l1 + 1);
        pp1 = m;
        k1 = 0;
        j1 = i1;
        i1 = k1;
_L12:
        if (j1 >= l2) goto _L2; else goto _L1
_L1:
        k1 = j1;
        k2 = i1;
_L10:
        c1 = ac[k1];
        if (c1 >= i3) goto _L4; else goto _L3
_L3:
        i2 = ai[c1];
        i1 = i2;
        if (i2 == 0) goto _L6; else goto _L5
_L5:
        i1 = i2;
_L7:
        int j2 = k1 - j1;
        pe pe1;
        if (j2 < 32)
        {
            if (q + j2 > r)
            {
                o();
            }
            if (j2 > 0)
            {
                System.arraycopy(ac, j1, o, q, j2);
                q = q + j2;
            }
        } else
        {
            o();
            j.write(ac, j1, j2);
        }
        if (k1 < l2)
        {
            break MISSING_BLOCK_LABEL_257;
        }
_L2:
        return;
_L4:
label0:
        {
            if (c1 <= l1)
            {
                break label0;
            }
            i1 = -1;
        }
          goto _L7
        pe1 = pp1.a(c1);
        n = pe1;
        i1 = k2;
        if (pe1 == null) goto _L6; else goto _L8
_L8:
        i1 = -2;
          goto _L7
_L6:
        j2 = k1 + 1;
        k2 = i1;
        k1 = j2;
        if (j2 < l2) goto _L10; else goto _L9
_L9:
        k1 = j2;
          goto _L7
        j1 = k1 + 1;
        b(c1, i1);
        if (true) goto _L12; else goto _L11
_L11:
    }

    private final void e(int i1)
        throws IOException, oq
    {
        int ai[];
        int j1;
        int k1;
        int j2;
        ai = k;
        j2 = ai.length;
        j1 = 0;
        k1 = 0;
_L8:
        if (j1 >= i1) goto _L2; else goto _L1
_L1:
        char c1 = o[j1];
        if (c1 >= j2 || ai[c1] == 0) goto _L4; else goto _L3
_L3:
        int l1 = j1 - k1;
        if (l1 <= 0)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        j.write(o, k1, l1);
        if (j1 < i1)
        {
            break MISSING_BLOCK_LABEL_98;
        }
_L2:
        return;
_L4:
        int i2 = j1 + 1;
        j1 = i2;
        if (i2 < i1)
        {
            break; /* Loop/switch isn't completed */
        }
        j1 = i2;
        if (true) goto _L3; else goto _L5
_L5:
        if (true) goto _L1; else goto _L6
_L6:
        j1++;
        k1 = a(o, j1, i1, c1, ai[c1]);
        if (true) goto _L8; else goto _L7
_L7:
    }

    private void f(int i1)
        throws IOException, oq
    {
        char c1;
        pp pp1;
        int j1;
        int k1;
        k1 = q + i1;
        int ai[] = k;
        int l1;
        int i2;
        if (l < 1)
        {
            j1 = 65535;
        } else
        {
            j1 = l;
        }
        l1 = Math.min(ai.length, j1 + 1);
        pp1 = m;
_L8:
        if (q >= k1) goto _L2; else goto _L1
_L1:
        c1 = o[q];
        if (c1 >= l1) goto _L4; else goto _L3
_L3:
        i1 = ai[c1];
        if (i1 == 0) goto _L6; else goto _L5
_L5:
        i2 = q - p;
        if (i2 > 0)
        {
            j.write(o, p, i2);
        }
        q = q + 1;
        a(c1, i1);
        continue; /* Loop/switch isn't completed */
_L4:
        if (c1 > j1)
        {
            i1 = -1;
            continue; /* Loop/switch isn't completed */
        }
        pe pe1 = pp1.a(c1);
        n = pe1;
        if (pe1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        i1 = -2;
        if (true) goto _L5; else goto _L6
_L6:
        i1 = q + 1;
        q = i1;
        if (i1 < k1) goto _L1; else goto _L2
_L2:
        return;
        if (true) goto _L8; else goto _L7
_L7:
    }

    private final void g(int i1)
        throws IOException, oq
    {
        char c1;
        pp pp1;
        int j1;
        int k1;
        int l1;
        int i2;
        int l2;
        k1 = 0;
        int ai[] = k;
        int j2;
        int i3;
        if (l < 1)
        {
            l1 = 65535;
        } else
        {
            l1 = l;
        }
        i3 = Math.min(ai.length, l + 1);
        pp1 = m;
        i2 = 0;
        j1 = 0;
_L11:
        if (k1 >= i1) goto _L2; else goto _L1
_L1:
        l2 = j1;
_L9:
        c1 = o[k1];
        if (c1 >= i3) goto _L4; else goto _L3
_L3:
        j1 = ai[c1];
        if (j1 == 0) goto _L6; else goto _L5
_L5:
        j2 = k1 - i2;
        if (j2 <= 0)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        j.write(o, i2, j2);
        if (k1 < i1)
        {
            break MISSING_BLOCK_LABEL_191;
        }
_L2:
        return;
_L4:
        if (c1 > l1)
        {
            j1 = -1;
            continue; /* Loop/switch isn't completed */
        }
        pe pe1 = pp1.a(c1);
        n = pe1;
        j1 = l2;
        if (pe1 != null)
        {
            j1 = -2;
            continue; /* Loop/switch isn't completed */
        }
_L6:
        int k2 = k1 + 1;
        l2 = j1;
        k1 = k2;
        if (k2 < i1)
        {
            break; /* Loop/switch isn't completed */
        }
        k1 = k2;
        if (true) goto _L5; else goto _L7
_L7:
        if (true) goto _L9; else goto _L8
_L8:
        k1++;
        i2 = a(o, k1, i1, c1, j1);
        if (true) goto _L11; else goto _L10
_L10:
    }

    private void j(String s1)
        throws IOException, oq
    {
        int j1 = r - q;
        s1.getChars(0, j1, o, q);
        q = q + j1;
        o();
        int i1;
        int k1;
        for (i1 = s1.length() - j1; i1 > r; i1 -= k1)
        {
            k1 = r;
            s1.getChars(j1, j1 + k1, o, 0);
            p = 0;
            q = k1;
            o();
            j1 += k1;
        }

        s1.getChars(j1, j1 + i1, o, 0);
        p = 0;
        q = i1;
    }

    private void k(String s1)
        throws IOException, oq
    {
        int i1 = s1.length();
        if (i1 > r)
        {
            l(s1);
            return;
        }
        if (q + i1 > r)
        {
            o();
        }
        s1.getChars(0, i1, o, q);
        if (m != null)
        {
            f(i1);
            return;
        }
        if (l != 0)
        {
            a(i1, l);
            return;
        } else
        {
            d(i1);
            return;
        }
    }

    private void l(String s1)
        throws IOException, oq
    {
        o();
        int l1 = s1.length();
        int i1 = 0;
        do
        {
            int k1 = r;
            int j1 = k1;
            if (i1 + k1 > l1)
            {
                j1 = l1 - i1;
            }
            s1.getChars(i1, i1 + j1, o, 0);
            if (m != null)
            {
                g(j1);
            } else
            if (l != 0)
            {
                b(j1, l);
            } else
            {
                e(j1);
            }
            j1 = i1 + j1;
            i1 = j1;
        } while (j1 < l1);
    }

    private final void p()
        throws IOException
    {
        if (q + 4 >= r)
        {
            o();
        }
        int i1 = q;
        char ac[] = o;
        ac[i1] = 'n';
        i1++;
        ac[i1] = 'u';
        i1++;
        ac[i1] = 'l';
        i1++;
        ac[i1] = 'l';
        q = i1 + 1;
    }

    private char[] q()
    {
        char ac[] = new char[14];
        ac[0] = '\\';
        ac[2] = '\\';
        ac[3] = 'u';
        ac[4] = '0';
        ac[5] = '0';
        ac[8] = '\\';
        ac[9] = 'u';
        s = ac;
        return ac;
    }

    public or a(int i1)
    {
        int j1 = i1;
        if (i1 < 0)
        {
            j1 = 0;
        }
        l = j1;
        return this;
    }

    public or a(pp pp1)
    {
        m = pp1;
        if (pp1 == null)
        {
            k = h;
            return this;
        } else
        {
            k = pp1.a();
            return this;
        }
    }

    public void a(char c1)
        throws IOException, oq
    {
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = c1;
    }

    public void a(double d1)
        throws IOException, oq
    {
        if (d || (Double.isNaN(d1) || Double.isInfinite(d1)) && a(os.d))
        {
            b(String.valueOf(d1));
            return;
        } else
        {
            h("write number");
            c(String.valueOf(d1));
            return;
        }
    }

    public void a(float f1)
        throws IOException, oq
    {
        if (d || (Float.isNaN(f1) || Float.isInfinite(f1)) && a(os.d))
        {
            b(String.valueOf(f1));
            return;
        } else
        {
            h("write number");
            c(String.valueOf(f1));
            return;
        }
    }

    public void a(long l1)
        throws IOException, oq
    {
        h("write number");
        if (d)
        {
            b(l1);
            return;
        }
        if (q + 21 >= r)
        {
            o();
        }
        q = pu.a(l1, o, q);
    }

    public void a(on on1, byte abyte0[], int i1, int j1)
        throws IOException, oq
    {
        h("write binary value");
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int k1 = q;
        q = k1 + 1;
        ac[k1] = '"';
        b(on1, abyte0, i1, i1 + j1);
        if (q >= r)
        {
            o();
        }
        on1 = o;
        i1 = q;
        q = i1 + 1;
        on1[i1] = '"';
    }

    public final void a(pe pe1)
        throws IOException, oq
    {
        boolean flag = true;
        int i1 = e.a(pe1.a());
        if (i1 == 4)
        {
            i("Can not write a field name, expecting a value");
        }
        if (i1 != 1)
        {
            flag = false;
        }
        a(pe1, flag);
    }

    public void a(pe pe1, boolean flag)
        throws IOException, oq
    {
        if (a != null)
        {
            b(pe1, flag);
            return;
        }
        if (q + 1 >= r)
        {
            o();
        }
        if (flag)
        {
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = ',';
        }
        pe1 = pe1.b();
        if (!a(os.c))
        {
            b(pe1, 0, pe1.length);
            return;
        }
        char ac1[] = o;
        int j1 = q;
        q = j1 + 1;
        ac1[j1] = '"';
        j1 = pe1.length;
        if (q + j1 + 1 >= r)
        {
            b(pe1, 0, j1);
            if (q >= r)
            {
                o();
            }
            pe1 = o;
            j1 = q;
            q = j1 + 1;
            pe1[j1] = '"';
            return;
        } else
        {
            System.arraycopy(pe1, 0, o, q, j1);
            q = q + j1;
            pe1 = o;
            j1 = q;
            q = j1 + 1;
            pe1[j1] = '"';
            return;
        }
    }

    public final void a(pw pw1)
        throws IOException, oq
    {
        boolean flag = true;
        int i1 = e.a(pw1.a());
        if (i1 == 4)
        {
            i("Can not write a field name, expecting a value");
        }
        if (i1 != 1)
        {
            flag = false;
        }
        a(((pe) (pw1)), flag);
    }

    public final void a(String s1)
        throws IOException, oq
    {
        boolean flag = true;
        int i1 = e.a(s1);
        if (i1 == 4)
        {
            i("Can not write a field name, expecting a value");
        }
        if (i1 != 1)
        {
            flag = false;
        }
        a(s1, flag);
    }

    public final void a(String s1, String s2)
        throws IOException, oq
    {
        a(s1);
        b(s2);
    }

    protected void a(String s1, boolean flag)
        throws IOException, oq
    {
        if (a != null)
        {
            b(s1, flag);
            return;
        }
        if (q + 1 >= r)
        {
            o();
        }
        if (flag)
        {
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = ',';
        }
        if (!a(os.c))
        {
            k(s1);
            return;
        }
        char ac1[] = o;
        int j1 = q;
        q = j1 + 1;
        ac1[j1] = '"';
        k(s1);
        if (q >= r)
        {
            o();
        }
        s1 = o;
        j1 = q;
        q = j1 + 1;
        s1[j1] = '"';
    }

    public void a(BigDecimal bigdecimal)
        throws IOException, oq
    {
        h("write number");
        if (bigdecimal == null)
        {
            p();
            return;
        }
        if (d)
        {
            c(bigdecimal);
            return;
        } else
        {
            c(bigdecimal.toString());
            return;
        }
    }

    public void a(BigInteger biginteger)
        throws IOException, oq
    {
        h("write number");
        if (biginteger == null)
        {
            p();
            return;
        }
        if (d)
        {
            c(biginteger);
            return;
        } else
        {
            c(biginteger.toString());
            return;
        }
    }

    public void a(boolean flag)
        throws IOException, oq
    {
        h("write boolean value");
        if (q + 5 >= r)
        {
            o();
        }
        int i1 = q;
        char ac[] = o;
        if (flag)
        {
            ac[i1] = 't';
            i1++;
            ac[i1] = 'r';
            i1++;
            ac[i1] = 'u';
            i1++;
            ac[i1] = 'e';
        } else
        {
            ac[i1] = 'f';
            i1++;
            ac[i1] = 'a';
            i1++;
            ac[i1] = 'l';
            i1++;
            ac[i1] = 's';
            i1++;
            ac[i1] = 'e';
        }
        q = i1 + 1;
    }

    public void a(char ac[], int i1, int j1)
        throws IOException, oq
    {
        h("write text value");
        if (q >= r)
        {
            o();
        }
        char ac1[] = o;
        int k1 = q;
        q = k1 + 1;
        ac1[k1] = '"';
        c(ac, i1, j1);
        if (q >= r)
        {
            o();
        }
        ac = o;
        i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
    }

    public final void b()
        throws IOException, oq
    {
        h("start an array");
        e = e.h();
        if (a != null)
        {
            a.e(this);
            return;
        }
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '[';
    }

    public void b(int i1)
        throws IOException, oq
    {
        h("write number");
        if (d)
        {
            c(i1);
            return;
        }
        if (q + 11 >= r)
        {
            o();
        }
        q = pu.a(i1, o, q);
    }

    protected void b(on on1, byte abyte0[], int i1, int j1)
        throws IOException, oq
    {
        int k2 = r - 6;
        int l1 = on1.c() >> 2;
        int k1 = i1;
        i1 = l1;
        do
        {
            if (k1 > j1 - 3)
            {
                break;
            }
            if (q > k2)
            {
                o();
            }
            l1 = k1 + 1;
            k1 = abyte0[k1];
            int i2 = l1 + 1;
            byte byte0 = abyte0[l1];
            l1 = i2 + 1;
            q = on1.a((byte0 & 0xff | k1 << 8) << 8 | abyte0[i2] & 0xff, o, q);
            i2 = i1 - 1;
            i1 = i2;
            k1 = l1;
            if (i2 <= 0)
            {
                char ac[] = o;
                i1 = q;
                q = i1 + 1;
                ac[i1] = '\\';
                ac = o;
                i1 = q;
                q = i1 + 1;
                ac[i1] = 'n';
                i1 = on1.c() >> 2;
                k1 = l1;
            }
        } while (true);
        l1 = j1 - k1;
        if (l1 > 0)
        {
            if (q > k2)
            {
                o();
            }
            int j2 = k1 + 1;
            j1 = abyte0[k1] << 16;
            i1 = j1;
            if (l1 == 2)
            {
                i1 = j1 | (abyte0[j2] & 0xff) << 8;
            }
            q = on1.a(i1, l1, o, q);
        }
    }

    public final void b(pe pe1)
        throws IOException, oq
    {
        h("write text value");
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        pe1 = pe1.b();
        i1 = pe1.length;
        if (i1 < 32)
        {
            if (i1 > r - q)
            {
                o();
            }
            System.arraycopy(pe1, 0, o, q, i1);
            q = q + i1;
        } else
        {
            o();
            j.write(pe1, 0, i1);
        }
        if (q >= r)
        {
            o();
        }
        pe1 = o;
        i1 = q;
        q = i1 + 1;
        pe1[i1] = '"';
    }

    protected final void b(pe pe1, boolean flag)
        throws IOException, oq
    {
        if (flag)
        {
            a.c(this);
        } else
        {
            a.h(this);
        }
        pe1 = pe1.b();
        if (a(os.c))
        {
            if (q >= r)
            {
                o();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = '"';
            b(((char []) (pe1)), 0, pe1.length);
            if (q >= r)
            {
                o();
            }
            pe1 = o;
            i1 = q;
            q = i1 + 1;
            pe1[i1] = '"';
            return;
        } else
        {
            b(((char []) (pe1)), 0, pe1.length);
            return;
        }
    }

    public void b(String s1)
        throws IOException, oq
    {
        h("write text value");
        if (s1 == null)
        {
            p();
            return;
        }
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '"';
        k(s1);
        if (q >= r)
        {
            o();
        }
        s1 = o;
        i1 = q;
        q = i1 + 1;
        s1[i1] = '"';
    }

    protected final void b(String s1, int i1)
        throws IOException, oq
    {
        i1;
        JVM INSTR tableswitch 0 3: default 32
    //                   0 70
    //                   1 37
    //                   2 48
    //                   3 59;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        m();
_L7:
        return;
_L3:
        a.f(this);
        return;
_L4:
        a.d(this);
        return;
_L5:
        a.a(this);
        return;
_L2:
        if (e.a())
        {
            a.g(this);
            return;
        }
        if (e.c())
        {
            a.h(this);
            return;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    protected final void b(String s1, boolean flag)
        throws IOException, oq
    {
        if (flag)
        {
            a.c(this);
        } else
        {
            a.h(this);
        }
        if (a(os.c))
        {
            if (q >= r)
            {
                o();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = '"';
            k(s1);
            if (q >= r)
            {
                o();
            }
            s1 = o;
            i1 = q;
            q = i1 + 1;
            s1[i1] = '"';
            return;
        } else
        {
            k(s1);
            return;
        }
    }

    public void b(char ac[], int i1, int j1)
        throws IOException, oq
    {
        if (j1 < 32)
        {
            if (j1 > r - q)
            {
                o();
            }
            System.arraycopy(ac, i1, o, q, j1);
            q = q + j1;
            return;
        } else
        {
            o();
            j.write(ac, i1, j1);
            return;
        }
    }

    public final void c()
        throws IOException, oq
    {
        if (!e.a())
        {
            i((new StringBuilder()).append("Current context not an ARRAY but ").append(e.d()).toString());
        }
        if (a != null)
        {
            a.b(this, e.e());
        } else
        {
            if (q >= r)
            {
                o();
            }
            char ac[] = o;
            int i1 = q;
            q = i1 + 1;
            ac[i1] = ']';
        }
        e = e.j();
    }

    public void c(String s1)
        throws IOException, oq
    {
        int k1 = s1.length();
        int j1 = r - q;
        int i1 = j1;
        if (j1 == 0)
        {
            o();
            i1 = r - q;
        }
        if (i1 >= k1)
        {
            s1.getChars(0, k1, o, q);
            q = q + k1;
            return;
        } else
        {
            j(s1);
            return;
        }
    }

    public void close()
        throws IOException
    {
        super.close();
        if (o != null && a(os.b))
        {
            do
            {
                pl pl1 = h();
                if (pl1.a())
                {
                    c();
                    continue;
                }
                if (!pl1.c())
                {
                    break;
                }
                e();
            } while (true);
        }
        o();
        if (j == null) goto _L2; else goto _L1
_L1:
        if (!i.b() && !a(os.a)) goto _L4; else goto _L3
_L3:
        j.close();
_L2:
        n();
        return;
_L4:
        if (a(os.f))
        {
            j.flush();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    public final void d()
        throws IOException, oq
    {
        h("start an object");
        e = e.i();
        if (a != null)
        {
            a.b(this);
            return;
        }
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '{';
    }

    public final void e()
        throws IOException, oq
    {
        if (!e.c())
        {
            i((new StringBuilder()).append("Current context not an object but ").append(e.d()).toString());
        }
        e = e.j();
        if (a != null)
        {
            a.a(this, e.e());
            return;
        }
        if (q >= r)
        {
            o();
        }
        char ac[] = o;
        int i1 = q;
        q = i1 + 1;
        ac[i1] = '}';
    }

    public void e(String s1)
        throws IOException, oq
    {
        h("write number");
        if (d)
        {
            c(s1);
            return;
        } else
        {
            c(s1);
            return;
        }
    }

    public void f()
        throws IOException, oq
    {
        h("write null value");
        p();
    }

    public final void g()
        throws IOException
    {
        o();
        if (j != null && a(os.f))
        {
            j.flush();
        }
    }

    protected final void h(String s1)
        throws IOException, oq
    {
        int i1;
        i1 = e.k();
        if (i1 == 5)
        {
            i((new StringBuilder()).append("Can not ").append(s1).append(", expecting field name").toString());
        }
        if (a != null) goto _L2; else goto _L1
_L1:
        i1;
        JVM INSTR tableswitch 1 3: default 76
    //                   1 77
    //                   2 116
    //                   3 122;
           goto _L3 _L4 _L5 _L6
_L3:
        return;
_L4:
        char c1 = ',';
_L7:
        if (q >= r)
        {
            o();
        }
        o[q] = c1;
        q = q + 1;
        return;
_L5:
        c1 = ':';
        continue; /* Loop/switch isn't completed */
_L6:
        c1 = ' ';
        if (true) goto _L7; else goto _L2
_L2:
        b(s1, i1);
        return;
    }

    protected void n()
    {
        char ac[] = o;
        if (ac != null)
        {
            o = null;
            i.b(ac);
        }
    }

    protected final void o()
        throws IOException
    {
        int i1 = q - p;
        if (i1 > 0)
        {
            int j1 = p;
            p = 0;
            q = 0;
            j.write(o, j1, i1);
        }
    }

}
