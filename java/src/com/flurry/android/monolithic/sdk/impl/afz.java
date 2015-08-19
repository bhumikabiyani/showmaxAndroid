// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            or, ox, pl, agc, 
//            agb, ow, oq, pb, 
//            aga, pe, oz, pw, 
//            oy, pc, on, ou

public class afz extends or
{

    protected static final int b = ox.a();
    protected pc c;
    protected int d;
    protected boolean e;
    protected agc f;
    protected agc g;
    protected int h;
    protected pl i;

    public afz(pc pc)
    {
        c = pc;
        d = b;
        i = pl.g();
        pc = new agc();
        g = pc;
        f = pc;
        h = 0;
    }

    public or a()
    {
        return this;
    }

    public ow a(ow ow1)
    {
        agb agb1 = new agb(f, ow1.a());
        agb1.a(ow1.h());
        return agb1;
    }

    public ow a(pc pc)
    {
        return new agb(f, pc);
    }

    public void a(char c1)
        throws IOException, oq
    {
        i();
    }

    public void a(double d1)
        throws IOException, oq
    {
        a(pb.j, Double.valueOf(d1));
    }

    public void a(float f1)
        throws IOException, oq
    {
        a(pb.j, Float.valueOf(f1));
    }

    public void a(long l)
        throws IOException, oq
    {
        a(pb.i, Long.valueOf(l));
    }

    public void a(on on, byte abyte0[], int j, int k)
        throws IOException, oq
    {
        on = new byte[k];
        System.arraycopy(abyte0, j, on, 0, k);
        a(on);
    }

    public void a(or or1)
        throws IOException, oq
    {
        agc agc1;
        int j;
        agc1 = f;
        j = -1;
_L7:
        j++;
        if (j < 16) goto _L2; else goto _L1
_L1:
        agc1 = agc1.a();
        if (agc1 != null) goto _L4; else goto _L3
_L3:
        return;
_L4:
        j = 0;
_L2:
        pb pb1 = agc1.a(j);
        if (pb1 == null) goto _L3; else goto _L5
_L5:
        switch (aga.a[pb1.ordinal()])
        {
        default:
            throw new RuntimeException("Internal error: should never end up through this code path");

        case 1: // '\001'
            or1.d();
            break;

        case 2: // '\002'
            or1.e();
            break;

        case 3: // '\003'
            or1.b();
            break;

        case 4: // '\004'
            or1.c();
            break;

        case 5: // '\005'
            Object obj = agc1.b(j);
            if (obj instanceof pe)
            {
                or1.a((pe)obj);
            } else
            {
                or1.a((String)obj);
            }
            break;

        case 6: // '\006'
            Object obj1 = agc1.b(j);
            if (obj1 instanceof pe)
            {
                or1.b((pe)obj1);
            } else
            {
                or1.b((String)obj1);
            }
            break;

        case 7: // '\007'
            Number number = (Number)agc1.b(j);
            if (number instanceof BigInteger)
            {
                or1.a((BigInteger)number);
            } else
            if (number instanceof Long)
            {
                or1.a(number.longValue());
            } else
            {
                or1.b(number.intValue());
            }
            break;

        case 8: // '\b'
            Object obj2 = agc1.b(j);
            if (obj2 instanceof BigDecimal)
            {
                or1.a((BigDecimal)obj2);
            } else
            if (obj2 instanceof Float)
            {
                or1.a(((Float)obj2).floatValue());
            } else
            if (obj2 instanceof Double)
            {
                or1.a(((Double)obj2).doubleValue());
            } else
            if (obj2 == null)
            {
                or1.f();
            } else
            if (obj2 instanceof String)
            {
                or1.e((String)obj2);
            } else
            {
                throw new oq((new StringBuilder()).append("Unrecognized value type for VALUE_NUMBER_FLOAT: ").append(obj2.getClass().getName()).append(", can not serialize").toString());
            }
            break;

        case 9: // '\t'
            or1.a(true);
            break;

        case 10: // '\n'
            or1.a(false);
            break;

        case 11: // '\013'
            or1.f();
            break;

        case 12: // '\f'
            or1.a(agc1.b(j));
            break;
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a(ou ou)
        throws IOException, oz
    {
        a(pb.g, ou);
    }

    protected final void a(pb pb1)
    {
        pb1 = g.a(h, pb1);
        if (pb1 == null)
        {
            h = h + 1;
            return;
        } else
        {
            g = pb1;
            h = 1;
            return;
        }
    }

    protected final void a(pb pb1, Object obj)
    {
        pb1 = g.a(h, pb1, obj);
        if (pb1 == null)
        {
            h = h + 1;
            return;
        } else
        {
            g = pb1;
            h = 1;
            return;
        }
    }

    public void a(pe pe1)
        throws IOException, oq
    {
        a(pb.f, pe1);
        i.a(pe1.a());
    }

    public void a(pw pw1)
        throws IOException, oq
    {
        a(pb.f, pw1);
        i.a(pw1.a());
    }

    public void a(Object obj)
        throws IOException, oz
    {
        a(pb.g, obj);
    }

    public final void a(String s)
        throws IOException, oq
    {
        a(pb.f, s);
        i.a(s);
    }

    public void a(BigDecimal bigdecimal)
        throws IOException, oq
    {
        if (bigdecimal == null)
        {
            f();
            return;
        } else
        {
            a(pb.j, bigdecimal);
            return;
        }
    }

    public void a(BigInteger biginteger)
        throws IOException, oq
    {
        if (biginteger == null)
        {
            f();
            return;
        } else
        {
            a(pb.i, biginteger);
            return;
        }
    }

    public void a(boolean flag)
        throws IOException, oq
    {
        pb pb1;
        if (flag)
        {
            pb1 = pb.k;
        } else
        {
            pb1 = pb.l;
        }
        a(pb1);
    }

    public void a(char ac[], int j, int k)
        throws IOException, oq
    {
        b(new String(ac, j, k));
    }

    public final void b()
        throws IOException, oq
    {
        a(pb.d);
        i = i.h();
    }

    public void b(int j)
        throws IOException, oq
    {
        a(pb.i, Integer.valueOf(j));
    }

    public void b(ow ow1)
        throws IOException, oz
    {
        switch (aga.a[ow1.e().ordinal()])
        {
        default:
            throw new RuntimeException("Internal error: should never end up through this code path");

        case 1: // '\001'
            d();
            return;

        case 2: // '\002'
            e();
            return;

        case 3: // '\003'
            b();
            return;

        case 4: // '\004'
            c();
            return;

        case 5: // '\005'
            a(ow1.g());
            return;

        case 6: // '\006'
            if (ow1.o())
            {
                a(ow1.l(), ow1.n(), ow1.m());
                return;
            } else
            {
                b(ow1.k());
                return;
            }

        case 7: // '\007'
            switch (aga.b[ow1.q().ordinal()])
            {
            default:
                a(ow1.u());
                return;

            case 1: // '\001'
                b(ow1.t());
                return;

            case 2: // '\002'
                a(ow1.v());
                break;
            }
            return;

        case 8: // '\b'
            switch (aga.b[ow1.q().ordinal()])
            {
            default:
                a(ow1.x());
                return;

            case 3: // '\003'
                a(ow1.y());
                return;

            case 4: // '\004'
                a(ow1.w());
                break;
            }
            return;

        case 9: // '\t'
            a(true);
            return;

        case 10: // '\n'
            a(false);
            return;

        case 11: // '\013'
            f();
            return;

        case 12: // '\f'
            a(ow1.z());
            return;
        }
    }

    public void b(pe pe1)
        throws IOException, oq
    {
        if (pe1 == null)
        {
            f();
            return;
        } else
        {
            a(pb.h, pe1);
            return;
        }
    }

    public void b(String s)
        throws IOException, oq
    {
        if (s == null)
        {
            f();
            return;
        } else
        {
            a(pb.h, s);
            return;
        }
    }

    public void b(char ac[], int j, int k)
        throws IOException, oq
    {
        i();
    }

    public final void c()
        throws IOException, oq
    {
        a(pb.e);
        pl pl1 = i.j();
        if (pl1 != null)
        {
            i = pl1;
        }
    }

    public void c(ow ow1)
        throws IOException, oz
    {
        pb pb2 = ow1.e();
        pb pb1 = pb2;
        if (pb2 == pb.f)
        {
            a(ow1.g());
            pb1 = ow1.b();
        }
        switch (aga.a[pb1.ordinal()])
        {
        case 2: // '\002'
        default:
            b(ow1);
            return;

        case 3: // '\003'
            b();
            for (; ow1.b() != pb.e; c(ow1)) { }
            c();
            return;

        case 1: // '\001'
            d();
            break;
        }
        for (; ow1.b() != pb.c; c(ow1)) { }
        e();
    }

    public void c(String s)
        throws IOException, oq
    {
        i();
    }

    public void close()
        throws IOException
    {
        e = true;
    }

    public final void d()
        throws IOException, oq
    {
        a(pb.b);
        i = i.i();
    }

    public void d(String s)
        throws IOException, oq
    {
        i();
    }

    public final void e()
        throws IOException, oq
    {
        a(pb.c);
        pl pl1 = i.j();
        if (pl1 != null)
        {
            i = pl1;
        }
    }

    public void e(String s)
        throws IOException, oq
    {
        a(pb.j, s);
    }

    public void f()
        throws IOException, oq
    {
        a(pb.m);
    }

    public void g()
        throws IOException
    {
    }

    public ow h()
    {
        return a(c);
    }

    protected void i()
    {
        throw new UnsupportedOperationException("Called operation not supported for TokenBuffer");
    }

    public String toString()
    {
        Object obj = new StringBuilder();
        ((StringBuilder) (obj)).append("[TokenBuffer: ");
        ow ow1 = h();
        int j = 0;
        do
        {
            pb pb1;
            try
            {
                pb1 = ow1.b();
            }
            // Misplaced declaration of an exception variable
            catch (Object obj)
            {
                throw new IllegalStateException(((Throwable) (obj)));
            }
            if (pb1 == null)
            {
                if (j >= 100)
                {
                    ((StringBuilder) (obj)).append(" ... (truncated ").append(j - 100).append(" entries)");
                }
                ((StringBuilder) (obj)).append(']');
                return ((StringBuilder) (obj)).toString();
            }
            if (j < 100)
            {
                if (j > 0)
                {
                    ((StringBuilder) (obj)).append(", ");
                }
                ((StringBuilder) (obj)).append(pb1.toString());
            }
            j++;
        } while (true);
    }

}
