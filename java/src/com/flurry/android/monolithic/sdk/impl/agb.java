// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            pi, pk, agc, ov, 
//            pb, afq, ot, aga, 
//            oy, pc, on

public final class agb extends pi
{

    protected pc d;
    protected agc e;
    protected int f;
    protected pk g;
    protected boolean h;
    protected transient afq i;
    protected ot j;

    public agb(agc agc1, pc pc)
    {
        super(0);
        j = null;
        e = agc1;
        f = -1;
        d = pc;
        g = pk.a(-1, -1);
    }

    protected final Object A()
    {
        return e.b(f);
    }

    protected final void B()
        throws ov
    {
        if (b == null || !b.c())
        {
            throw a((new StringBuilder()).append("Current token (").append(b).append(") not numeric, can not use numeric value accessors").toString());
        } else
        {
            return;
        }
    }

    protected void H()
        throws ov
    {
        U();
    }

    public pc a()
    {
        return d;
    }

    public void a(ot ot1)
    {
        j = ot1;
    }

    public byte[] a(on on)
        throws IOException, ov
    {
        if (b == pb.g)
        {
            Object obj = A();
            if (obj instanceof byte[])
            {
                return (byte[])(byte[])obj;
            }
        }
        if (b != pb.h)
        {
            throw a((new StringBuilder()).append("Current token (").append(b).append(") not VALUE_STRING (or VALUE_EMBEDDED_OBJECT with byte[]), can not access as binary").toString());
        }
        String s = k();
        if (s == null)
        {
            return null;
        }
        afq afq1 = i;
        if (afq1 == null)
        {
            afq1 = new afq(100);
            i = afq1;
        } else
        {
            i.a();
        }
        a(s, afq1, on);
        return afq1.b();
    }

    public pb b()
        throws IOException, ov
    {
        if (!h && e != null) goto _L2; else goto _L1
_L1:
        return null;
_L2:
        int i1 = f + 1;
        f = i1;
        if (i1 < 16)
        {
            break; /* Loop/switch isn't completed */
        }
        f = 0;
        e = e.a();
        if (e == null) goto _L1; else goto _L3
_L3:
        b = e.a(f);
        if (b != pb.f) goto _L5; else goto _L4
_L4:
        Object obj = A();
        if (obj instanceof String)
        {
            obj = (String)obj;
        } else
        {
            obj = obj.toString();
        }
        g.a(((String) (obj)));
_L7:
        return b;
_L5:
        if (b == pb.b)
        {
            g = g.c(-1, -1);
        } else
        if (b == pb.d)
        {
            g = g.b(-1, -1);
        } else
        if (b == pb.c || b == pb.e)
        {
            g = g.i();
            if (g == null)
            {
                g = pk.a(-1, -1);
            }
        }
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void close()
        throws IOException
    {
        if (!h)
        {
            h = true;
        }
    }

    public String g()
    {
        return g.h();
    }

    public ot h()
    {
        return i();
    }

    public ot i()
    {
        if (j == null)
        {
            return ot.a;
        } else
        {
            return j;
        }
    }

    public String k()
    {
        Object obj1 = null;
        if (b != pb.h && b != pb.f) goto _L2; else goto _L1
_L1:
        Object obj = A();
        if (!(obj instanceof String)) goto _L4; else goto _L3
_L3:
        obj = (String)obj;
_L6:
        return ((String) (obj));
_L4:
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = obj.toString();
        }
        return ((String) (obj));
_L2:
        obj = obj1;
        if (b != null)
        {
            Object obj2;
            switch (aga.a[b.ordinal()])
            {
            default:
                return b.a();

            case 7: // '\007'
            case 8: // '\b'
                obj2 = A();
                break;
            }
            obj = obj1;
            if (obj2 != null)
            {
                return obj2.toString();
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public char[] l()
    {
        String s = k();
        if (s == null)
        {
            return null;
        } else
        {
            return s.toCharArray();
        }
    }

    public int m()
    {
        String s = k();
        if (s == null)
        {
            return 0;
        } else
        {
            return s.length();
        }
    }

    public int n()
    {
        return 0;
    }

    public boolean o()
    {
        return false;
    }

    public final Number p()
        throws IOException, ov
    {
        B();
        return (Number)A();
    }

    public oy q()
        throws IOException, ov
    {
        Number number = p();
        if (number instanceof Integer)
        {
            return oy.a;
        }
        if (number instanceof Long)
        {
            return oy.b;
        }
        if (number instanceof Double)
        {
            return oy.e;
        }
        if (number instanceof BigDecimal)
        {
            return oy.f;
        }
        if (number instanceof Float)
        {
            return oy.d;
        }
        if (number instanceof BigInteger)
        {
            return oy.c;
        } else
        {
            return null;
        }
    }

    public int t()
        throws IOException, ov
    {
        if (b == pb.i)
        {
            return ((Number)A()).intValue();
        } else
        {
            return p().intValue();
        }
    }

    public long u()
        throws IOException, ov
    {
        return p().longValue();
    }

    public BigInteger v()
        throws IOException, ov
    {
        Number number = p();
        if (number instanceof BigInteger)
        {
            return (BigInteger)number;
        }
        switch (aga.b[q().ordinal()])
        {
        default:
            return BigInteger.valueOf(number.longValue());

        case 3: // '\003'
            return ((BigDecimal)number).toBigInteger();
        }
    }

    public float w()
        throws IOException, ov
    {
        return p().floatValue();
    }

    public double x()
        throws IOException, ov
    {
        return p().doubleValue();
    }

    public BigDecimal y()
        throws IOException, ov
    {
        Number number = p();
        if (number instanceof BigDecimal)
        {
            return (BigDecimal)number;
        }
        switch (aga.b[q().ordinal()])
        {
        case 3: // '\003'
        case 4: // '\004'
        default:
            return BigDecimal.valueOf(number.doubleValue());

        case 1: // '\001'
        case 5: // '\005'
            return BigDecimal.valueOf(number.longValue());

        case 2: // '\002'
            return new BigDecimal((BigInteger)number);
        }
    }

    public Object z()
    {
        if (b == pb.g)
        {
            return A();
        } else
        {
            return null;
        }
    }
}
