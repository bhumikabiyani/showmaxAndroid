// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pi, pq, pk, ov, 
//            afy, pt, afq, on, 
//            pb, ot, oy

public abstract class ph extends pi
{

    static final BigDecimal u = new BigDecimal(0x8000000000000000L);
    static final BigDecimal v = new BigDecimal(0x7fffffffffffffffL);
    static final BigDecimal w = new BigDecimal(0x8000000000000000L);
    static final BigDecimal x = new BigDecimal(0x7fffffffffffffffL);
    protected long A;
    protected double B;
    protected BigInteger C;
    protected BigDecimal D;
    protected boolean E;
    protected int F;
    protected int G;
    protected int H;
    protected final pq d;
    protected boolean e;
    protected int f;
    protected int g;
    protected long h;
    protected int i;
    protected int j;
    protected long k;
    protected int l;
    protected int m;
    protected pk n;
    protected pb o;
    protected final afy p;
    protected char q[];
    protected boolean r;
    protected afq s;
    protected byte t[];
    protected int y;
    protected int z;

    protected ph(pq pq1, int i1)
    {
        f = 0;
        g = 0;
        h = 0L;
        i = 1;
        j = 0;
        k = 0L;
        l = 1;
        m = 0;
        q = null;
        r = false;
        s = null;
        y = 0;
        a = i1;
        d = pq1;
        p = pq1.c();
        n = pk.g();
    }

    private final void a(int i1, char ac[], int j1, int k1)
        throws IOException, ov
    {
        String s1 = p.f();
        if (pt.a(ac, j1, k1, E))
        {
            A = Long.parseLong(s1);
            y = 2;
            return;
        }
        try
        {
            C = new BigInteger(s1);
            y = 4;
            return;
        }
        // Misplaced declaration of an exception variable
        catch (char ac[])
        {
            a((new StringBuilder()).append("Malformed numeric value '").append(s1).append("'").toString(), ((Throwable) (ac)));
        }
        return;
    }

    private final void d(int i1)
        throws IOException, ov
    {
        if (i1 == 16)
        {
            try
            {
                D = p.h();
                y = 16;
                return;
            }
            catch (NumberFormatException numberformatexception)
            {
                a((new StringBuilder()).append("Malformed numeric value '").append(p.f()).append("'").toString(), numberformatexception);
            }
            break MISSING_BLOCK_LABEL_78;
        }
        B = p.i();
        y = 8;
        return;
    }

    public final long A()
    {
        return k;
    }

    public final int B()
    {
        return l;
    }

    public final int C()
    {
        int i1 = m;
        if (i1 < 0)
        {
            return i1;
        } else
        {
            return i1 + 1;
        }
    }

    protected final void D()
        throws IOException
    {
        if (!E())
        {
            S();
        }
    }

    protected abstract boolean E()
        throws IOException;

    protected abstract void F()
        throws IOException;

    protected void G()
        throws IOException
    {
        p.a();
        char ac[] = q;
        if (ac != null)
        {
            q = null;
            d.c(ac);
        }
    }

    protected void H()
        throws ov
    {
        if (!n.b())
        {
            c((new StringBuilder()).append(": expected close marker for ").append(n.d()).append(" (from ").append(n.a(d.a())).append(")").toString());
        }
    }

    public afq I()
    {
        if (s == null)
        {
            s = new afq();
        } else
        {
            s.a();
        }
        return s;
    }

    protected void J()
        throws IOException, ov
    {
        if ((y & 2) != 0)
        {
            int i1 = (int)A;
            if ((long)i1 != A)
            {
                d((new StringBuilder()).append("Numeric value (").append(k()).append(") out of range of int").toString());
            }
            z = i1;
        } else
        if ((y & 4) != 0)
        {
            z = C.intValue();
        } else
        if ((y & 8) != 0)
        {
            if (B < -2147483648D || B > 2147483647D)
            {
                O();
            }
            z = (int)B;
        } else
        if ((y & 0x10) != 0)
        {
            if (w.compareTo(D) > 0 || x.compareTo(D) < 0)
            {
                O();
            }
            z = D.intValue();
        } else
        {
            U();
        }
        y = y | 1;
    }

    protected void K()
        throws IOException, ov
    {
        if ((y & 1) != 0)
        {
            A = z;
        } else
        if ((y & 4) != 0)
        {
            A = C.longValue();
        } else
        if ((y & 8) != 0)
        {
            if (B < -9.2233720368547758E+18D || B > 9.2233720368547758E+18D)
            {
                P();
            }
            A = (long)B;
        } else
        if ((y & 0x10) != 0)
        {
            if (u.compareTo(D) > 0 || v.compareTo(D) < 0)
            {
                P();
            }
            A = D.longValue();
        } else
        {
            U();
        }
        y = y | 2;
    }

    protected void L()
        throws IOException, ov
    {
        if ((y & 0x10) != 0)
        {
            C = D.toBigInteger();
        } else
        if ((y & 2) != 0)
        {
            C = BigInteger.valueOf(A);
        } else
        if ((y & 1) != 0)
        {
            C = BigInteger.valueOf(z);
        } else
        if ((y & 8) != 0)
        {
            C = BigDecimal.valueOf(B).toBigInteger();
        } else
        {
            U();
        }
        y = y | 4;
    }

    protected void M()
        throws IOException, ov
    {
        if ((y & 0x10) != 0)
        {
            B = D.doubleValue();
        } else
        if ((y & 4) != 0)
        {
            B = C.doubleValue();
        } else
        if ((y & 2) != 0)
        {
            B = A;
        } else
        if ((y & 1) != 0)
        {
            B = z;
        } else
        {
            U();
        }
        y = y | 8;
    }

    protected void N()
        throws IOException, ov
    {
        if ((y & 8) != 0)
        {
            D = new BigDecimal(k());
        } else
        if ((y & 4) != 0)
        {
            D = new BigDecimal(C);
        } else
        if ((y & 2) != 0)
        {
            D = BigDecimal.valueOf(A);
        } else
        if ((y & 1) != 0)
        {
            D = BigDecimal.valueOf(z);
        } else
        {
            U();
        }
        y = y | 0x10;
    }

    protected void O()
        throws IOException, ov
    {
        d((new StringBuilder()).append("Numeric value (").append(k()).append(") out of range of int (").append(0x80000000).append(" - ").append(0x7fffffff).append(")").toString());
    }

    protected void P()
        throws IOException, ov
    {
        d((new StringBuilder()).append("Numeric value (").append(k()).append(") out of range of long (").append(0x8000000000000000L).append(" - ").append(0x7fffffffffffffffL).append(")").toString());
    }

    protected char Q()
        throws IOException, ov
    {
        throw new UnsupportedOperationException();
    }

    protected final int a(on on1, char c, int i1)
        throws IOException, ov
    {
        if (c != '\\')
        {
            throw a(on1, c, i1);
        }
        char c1 = Q();
        if (c1 <= ' ' && i1 == 0)
        {
            c = '\uFFFF';
        } else
        {
            int j1 = on1.b(c1);
            c = j1;
            if (j1 < 0)
            {
                throw a(on1, c1, i1);
            }
        }
        return c;
    }

    protected final pb a(String s1, double d1)
    {
        p.a(s1);
        B = d1;
        y = 8;
        return pb.j;
    }

    protected final pb a(boolean flag, int i1)
    {
        E = flag;
        F = i1;
        G = 0;
        H = 0;
        y = 0;
        return pb.i;
    }

    protected final pb a(boolean flag, int i1, int j1, int k1)
    {
        if (j1 < 1 && k1 < 1)
        {
            return a(flag, i1);
        } else
        {
            return b(flag, i1, j1, k1);
        }
    }

    protected IllegalArgumentException a(on on1, int i1, int j1)
        throws IllegalArgumentException
    {
        return a(on1, i1, j1, ((String) (null)));
    }

    protected IllegalArgumentException a(on on1, int i1, int j1, String s1)
        throws IllegalArgumentException
    {
        Object obj;
        if (i1 <= 32)
        {
            on1 = (new StringBuilder()).append("Illegal white space character (code 0x").append(Integer.toHexString(i1)).append(") as character #").append(j1 + 1).append(" of 4-char base64 unit: can only used between units").toString();
        } else
        if (on1.a(i1))
        {
            on1 = (new StringBuilder()).append("Unexpected padding character ('").append(on1.b()).append("') as character #").append(j1 + 1).append(" of 4-char base64 unit: padding only legal as 3rd or 4th character").toString();
        } else
        if (!Character.isDefined(i1) || Character.isISOControl(i1))
        {
            on1 = (new StringBuilder()).append("Illegal character (code 0x").append(Integer.toHexString(i1)).append(") in base64 content").toString();
        } else
        {
            on1 = (new StringBuilder()).append("Illegal character '").append((char)i1).append("' (code 0x").append(Integer.toHexString(i1)).append(") in base64 content").toString();
        }
        obj = on1;
        if (s1 != null)
        {
            obj = (new StringBuilder()).append(on1).append(": ").append(s1).toString();
        }
        return new IllegalArgumentException(((String) (obj)));
    }

    protected void a(int i1)
        throws IOException, ov
    {
        if (b == pb.i)
        {
            char ac[] = p.e();
            int k1 = p.d();
            int l1 = F;
            int j1 = k1;
            if (E)
            {
                j1 = k1 + 1;
            }
            if (l1 <= 9)
            {
                j1 = pt.a(ac, j1, l1);
                i1 = j1;
                if (E)
                {
                    i1 = -j1;
                }
                z = i1;
                y = 1;
                return;
            }
            if (l1 <= 18)
            {
                long l3 = pt.b(ac, j1, l1);
                long l2 = l3;
                if (E)
                {
                    l2 = -l3;
                }
                if (l1 == 10)
                {
                    if (E)
                    {
                        if (l2 >= 0xffffffff80000000L)
                        {
                            z = (int)l2;
                            y = 1;
                            return;
                        }
                    } else
                    if (l2 <= 0x7fffffffL)
                    {
                        z = (int)l2;
                        y = 1;
                        return;
                    }
                }
                A = l2;
                y = 2;
                return;
            } else
            {
                a(i1, ac, j1, l1);
                return;
            }
        }
        if (b == pb.j)
        {
            d(i1);
            return;
        } else
        {
            d((new StringBuilder()).append("Current token (").append(b).append(") not numeric, can not use numeric value accessors").toString());
            return;
        }
    }

    protected void a(int i1, char c)
        throws ov
    {
        String s1 = (new StringBuilder()).append("").append(n.a(d.a())).toString();
        d((new StringBuilder()).append("Unexpected close marker '").append((char)i1).append("': expected '").append(c).append("' (for ").append(n.d()).append(" starting at ").append(s1).append(")").toString());
    }

    protected void a(int i1, String s1)
        throws ov
    {
        String s3 = (new StringBuilder()).append("Unexpected character (").append(c(i1)).append(") in numeric value").toString();
        String s2 = s3;
        if (s1 != null)
        {
            s2 = (new StringBuilder()).append(s3).append(": ").append(s1).toString();
        }
        d(s2);
    }

    protected final pb b(boolean flag, int i1, int j1, int k1)
    {
        E = flag;
        F = i1;
        G = j1;
        H = k1;
        y = 0;
        return pb.j;
    }

    protected void b(String s1)
        throws ov
    {
        d((new StringBuilder()).append("Invalid numeric value: ").append(s1).toString());
    }

    public void close()
        throws IOException
    {
        if (e)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        e = true;
        F();
        G();
        return;
        Exception exception;
        exception;
        G();
        throw exception;
    }

    public String g()
        throws IOException, ov
    {
        if (b == pb.b || b == pb.d)
        {
            return n.i().h();
        } else
        {
            return n.h();
        }
    }

    public ot h()
    {
        return new ot(d.a(), A(), B(), C());
    }

    public ot i()
    {
        int i1 = f;
        int j1 = j;
        return new ot(d.a(), (h + (long)f) - 1L, i, (i1 - j1) + 1);
    }

    public boolean o()
    {
        if (b == pb.h)
        {
            return true;
        }
        if (b == pb.f)
        {
            return r;
        } else
        {
            return false;
        }
    }

    public Number p()
        throws IOException, ov
    {
        if (y == 0)
        {
            a(0);
        }
        if (b == pb.i)
        {
            if ((y & 1) != 0)
            {
                return Integer.valueOf(z);
            }
            if ((y & 2) != 0)
            {
                return Long.valueOf(A);
            }
            if ((y & 4) != 0)
            {
                return C;
            } else
            {
                return D;
            }
        }
        if ((y & 0x10) != 0)
        {
            return D;
        }
        if ((y & 8) == 0)
        {
            U();
        }
        return Double.valueOf(B);
    }

    public oy q()
        throws IOException, ov
    {
        if (y == 0)
        {
            a(0);
        }
        if (b == pb.i)
        {
            if ((y & 1) != 0)
            {
                return oy.a;
            }
            if ((y & 2) != 0)
            {
                return oy.b;
            } else
            {
                return oy.c;
            }
        }
        if ((y & 0x10) != 0)
        {
            return oy.f;
        } else
        {
            return oy.e;
        }
    }

    public int t()
        throws IOException, ov
    {
        if ((y & 1) == 0)
        {
            if (y == 0)
            {
                a(1);
            }
            if ((y & 1) == 0)
            {
                J();
            }
        }
        return z;
    }

    public long u()
        throws IOException, ov
    {
        if ((y & 2) == 0)
        {
            if (y == 0)
            {
                a(2);
            }
            if ((y & 2) == 0)
            {
                K();
            }
        }
        return A;
    }

    public BigInteger v()
        throws IOException, ov
    {
        if ((y & 4) == 0)
        {
            if (y == 0)
            {
                a(4);
            }
            if ((y & 4) == 0)
            {
                L();
            }
        }
        return C;
    }

    public float w()
        throws IOException, ov
    {
        return (float)x();
    }

    public double x()
        throws IOException, ov
    {
        if ((y & 8) == 0)
        {
            if (y == 0)
            {
                a(8);
            }
            if ((y & 8) == 0)
            {
                M();
            }
        }
        return B;
    }

    public BigDecimal y()
        throws IOException, ov
    {
        if ((y & 0x10) == 0)
        {
            if (y == 0)
            {
                a(16);
            }
            if ((y & 0x10) == 0)
            {
                N();
            }
        }
        return D;
    }

}
