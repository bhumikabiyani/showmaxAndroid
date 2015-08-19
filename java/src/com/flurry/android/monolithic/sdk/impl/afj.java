// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Arrays;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afk, afv

public final class afj
{

    static final afj a = new afj();
    protected afj b;
    protected final boolean c;
    protected final boolean d;
    protected String e[];
    protected afk f[];
    protected int g;
    protected int h;
    protected int i;
    protected boolean j;

    private afj()
    {
        d = true;
        c = true;
        j = true;
        a(64);
    }

    private afj(afj afj1, boolean flag, boolean flag1, String as[], afk aafk[], int k)
    {
        b = afj1;
        d = flag;
        c = flag1;
        e = as;
        f = aafk;
        g = k;
        k = as.length;
        h = k - (k >> 2);
        i = k - 1;
        j = false;
    }

    public static int a(String s)
    {
        int l = s.charAt(0);
        int k = 1;
        for (int i1 = s.length(); k < i1; k++)
        {
            l = l * 31 + s.charAt(k);
        }

        return l;
    }

    public static int a(char ac[], int k, int l)
    {
        int i1 = ac[0];
        for (k = 1; k < l; k++)
        {
            i1 = i1 * 31 + ac[k];
        }

        return i1;
    }

    public static afj a()
    {
        return a.e();
    }

    private void a(int k)
    {
        e = new String[k];
        f = new afk[k >> 1];
        i = k - 1;
        g = 0;
        h = k - (k >> 2);
    }

    private void a(afj afj1)
    {
        this;
        JVM INSTR monitorenter ;
        if (afj1.c() <= 12000) goto _L2; else goto _L1
_L1:
        a(64);
_L5:
        j = false;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (afj1.c() <= c()) goto _L4; else goto _L3
_L3:
        e = afj1.e;
        f = afj1.f;
        g = afj1.g;
        h = afj1.h;
        i = afj1.i;
          goto _L5
        afj1;
        throw afj1;
    }

    private afj e()
    {
        return new afj(null, true, true, e, f, g);
    }

    private void f()
    {
        Object aobj[] = e;
        int k = aobj.length;
        e = new String[k];
        System.arraycopy(((Object) (aobj)), 0, e, 0, k);
        aobj = f;
        k = aobj.length;
        f = new afk[k];
        System.arraycopy(((Object) (aobj)), 0, f, 0, k);
    }

    private void g()
    {
        int l1 = e.length;
        int k = l1 + l1;
        if (k > 0x10000)
        {
            g = 0;
            Arrays.fill(e, null);
            Arrays.fill(f, null);
            j = true;
        } else
        {
            String as[] = e;
            afk aafk[] = f;
            e = new String[k];
            f = new afk[k >> 1];
            i = k - 1;
            h = h + h;
            int i1 = 0;
            k = 0;
            while (i1 < l1) 
            {
                String s = as[i1];
                int j1 = k;
                if (s != null)
                {
                    j1 = k + 1;
                    k = a(s) & i;
                    if (e[k] == null)
                    {
                        e[k] = s;
                    } else
                    {
                        k >>= 1;
                        f[k] = new afk(s, f[k]);
                    }
                }
                i1++;
                k = j1;
            }
            boolean flag = false;
            i1 = k;
            for (int l = ((flag) ? 1 : 0); l < l1 >> 1; l++)
            {
                afk afk1 = aafk[l];
                while (afk1 != null) 
                {
                    i1++;
                    String s1 = afk1.a();
                    int k1 = a(s1) & i;
                    if (e[k1] == null)
                    {
                        e[k1] = s1;
                    } else
                    {
                        k1 >>= 1;
                        f[k1] = new afk(s1, f[k1]);
                    }
                    afk1 = afk1.b();
                }
            }

            if (i1 != g)
            {
                throw new Error((new StringBuilder()).append("Internal error on SymbolTable.rehash(): had ").append(g).append(" entries; now have ").append(i1).append(".").toString());
            }
        }
    }

    public afj a(boolean flag, boolean flag1)
    {
        this;
        JVM INSTR monitorenter ;
        afj afj1 = new afj(this, flag, flag1, e, f, g);
        this;
        JVM INSTR monitorexit ;
        return afj1;
        Exception exception;
        exception;
        throw exception;
    }

    public String a(char ac[], int k, int l, int i1)
    {
        int j1;
label0:
        {
            if (l < 1)
            {
                return "";
            }
            if (!d)
            {
                return new String(ac, k, l);
            }
            j1 = i1 & i;
            Object obj = e[j1];
            if (obj == null)
            {
                break label0;
            }
            if (((String) (obj)).length() == l)
            {
                i1 = 0;
                do
                {
                    if (((String) (obj)).charAt(i1) == ac[k + i1])
                    {
                        int k1 = i1 + 1;
                        i1 = k1;
                        if (k1 < l)
                        {
                            continue;
                        }
                        i1 = k1;
                    }
                    if (i1 == l)
                    {
                        return ((String) (obj));
                    }
                    break;
                } while (true);
            }
            obj = f[j1 >> 1];
            if (obj != null)
            {
                obj = ((afk) (obj)).a(ac, k, l);
                if (obj != null)
                {
                    return ((String) (obj));
                }
            }
        }
        String s;
        if (!j)
        {
            f();
            j = true;
            i1 = j1;
        } else
        if (g >= h)
        {
            g();
            i1 = a(ac, k, l) & i;
        } else
        {
            i1 = j1;
        }
        g = g + 1;
        s = new String(ac, k, l);
        ac = s;
        if (c)
        {
            ac = afv.a.a(s);
        }
        if (e[i1] == null)
        {
            e[i1] = ac;
            return ac;
        } else
        {
            k = i1 >> 1;
            f[k] = new afk(ac, f[k]);
            return ac;
        }
    }

    public void b()
    {
        while (!d() || b == null) 
        {
            return;
        }
        b.a(this);
        j = false;
    }

    public int c()
    {
        return g;
    }

    public boolean d()
    {
        return j;
    }

}
