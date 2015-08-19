// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.ref.SoftReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afr, afy

public final class ps
{

    protected static final ThreadLocal a = new ThreadLocal();
    private static final char d[] = afr.d();
    private static final byte e[] = afr.e();
    protected afy b;
    protected final char c[] = new char[6];

    public ps()
    {
        c[0] = '\\';
        c[2] = '0';
        c[3] = '0';
    }

    private int a(int i, char ac[])
    {
        if (i < 0)
        {
            i = -(i + 1);
            ac[1] = 'u';
            ac[4] = d[i >> 4];
            ac[5] = d[i & 0xf];
            return 6;
        } else
        {
            ac[1] = (char)i;
            return 2;
        }
    }

    public static ps a()
    {
        Object obj = (SoftReference)a.get();
        Object obj1;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = (ps)((SoftReference) (obj)).get();
        }
        obj1 = obj;
        if (obj == null)
        {
            obj1 = new ps();
            a.set(new SoftReference(obj1));
        }
        return ((ps) (obj1));
    }

    public char[] a(String s)
    {
        afy afy1 = b;
        afy afy2 = afy1;
        if (afy1 == null)
        {
            afy2 = new afy(null);
            b = afy2;
        }
        char ac[] = afy2.k();
        int ai[] = afr.c();
        int i1 = ai.length;
        int j1 = s.length();
        int i = 0;
        int j = 0;
label0:
        do
        {
            int k = i;
            if (j < j1)
            {
                do
                {
                    char c1 = s.charAt(j);
                    if (c1 < i1 && ai[c1] != 0)
                    {
                        int l = a(ai[s.charAt(j)], c);
                        if (i + l > ac.length)
                        {
                            k = ac.length - i;
                            if (k > 0)
                            {
                                System.arraycopy(c, 0, ac, i, k);
                            }
                            ac = afy2.m();
                            l -= k;
                            System.arraycopy(c, k, ac, i, l);
                            i += l;
                        } else
                        {
                            System.arraycopy(c, 0, ac, i, l);
                            i += l;
                        }
                        j++;
                        continue label0;
                    }
                    if (i >= ac.length)
                    {
                        ac = afy2.m();
                        i = 0;
                    }
                    k = i + 1;
                    ac[i] = c1;
                    l = j + 1;
                    i = k;
                    j = l;
                } while (l < j1);
            }
            afy2.a(k);
            return afy2.g();
        } while (true);
    }

}
