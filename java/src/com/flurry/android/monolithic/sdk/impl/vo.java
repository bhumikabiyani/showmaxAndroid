// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.Date;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qu, afm, oz, ow, 
//            pb, qm, qw, qq, 
//            rw, ql, rz, oy, 
//            pt, qk, qc

public abstract class vo extends qu
{

    protected final Class q;

    protected vo(afm afm1)
    {
        if (afm1 == null)
        {
            afm1 = null;
        } else
        {
            afm1 = afm1.p();
        }
        q = afm1;
    }

    protected vo(Class class1)
    {
        q = class1;
    }

    protected static final double b(String s1)
        throws NumberFormatException
    {
        if ("2.2250738585072012e-308".equals(s1))
        {
            return 2.2250738585072014E-308D;
        } else
        {
            return Double.parseDouble(s1);
        }
    }

    protected final double A(ow ow1, qm qm1)
        throws IOException, oz
    {
        double d;
        pb pb1;
        d = 0.0D;
        pb1 = ow1.e();
        if (pb1 != pb.i && pb1 != pb.j) goto _L2; else goto _L1
_L1:
        d = ow1.x();
_L4:
        return d;
_L2:
        if (pb1 != pb.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        ow1 = ow1.k().trim();
        if (ow1.length() == 0) goto _L4; else goto _L3
_L3:
        ow1.charAt(0);
        JVM INSTR lookupswitch 3: default 92
    //                   45: 134
    //                   73: 99
    //                   78: 121;
           goto _L5 _L6 _L7 _L8
_L5:
        double d1;
        try
        {
            d1 = b(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid double value");
        }
        return d1;
_L7:
        if (!"Infinity".equals(ow1) && !"INF".equals(ow1)) goto _L5; else goto _L9
_L9:
        return (1.0D / 0.0D);
_L8:
        if (!"NaN".equals(ow1)) goto _L5; else goto _L10
_L10:
        return (0.0D / 0.0D);
_L6:
        if (!"-Infinity".equals(ow1) && !"-INF".equals(ow1)) goto _L5; else goto _L11
_L11:
        return (-1.0D / 0.0D);
        if (pb1 == pb.m) goto _L4; else goto _L12
_L12:
        throw qm1.a(q, pb1);
    }

    protected Date B(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i)
        {
            return new Date(ow1.u());
        }
        if (pb1 == pb.m)
        {
            return (Date)b();
        }
        if (pb1 == pb.h)
        {
            try
            {
                ow1 = ow1.k().trim();
                if (ow1.length() == 0)
                {
                    return (Date)c();
                }
                ow1 = qm1.a(ow1);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, (new StringBuilder()).append("not a valid representation (error: ").append(ow1.getMessage()).append(")").toString());
            }
            return ow1;
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected qu a(qk qk, qq qq1, afm afm1, qc qc)
        throws qw
    {
        return qq1.a(qk, afm1, qc);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.d(ow1, qm1);
    }

    protected void a(ow ow1, qm qm1, Object obj, String s1)
        throws IOException, oz
    {
        Object obj1 = obj;
        if (obj == null)
        {
            obj1 = f();
        }
        if (qm1.a(ow1, this, obj1, s1))
        {
            return;
        } else
        {
            a(qm1, obj1, s1);
            ow1.d();
            return;
        }
    }

    protected void a(qm qm1, Object obj, String s1)
        throws IOException, oz
    {
        if (qm1.a(ql.k))
        {
            throw qm1.a(obj, s1);
        } else
        {
            return;
        }
    }

    protected boolean a(qu qu1)
    {
        return qu1 != null && qu1.getClass().getAnnotation(com/flurry/android/monolithic/sdk/impl/rz) != null;
    }

    public Class f()
    {
        return q;
    }

    protected final boolean n(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 != pb.k) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        if (pb1 == pb.l)
        {
            return false;
        }
        if (pb1 == pb.m)
        {
            return false;
        }
        if (pb1 != pb.i)
        {
            break; /* Loop/switch isn't completed */
        }
        if (ow1.q() == oy.a)
        {
            if (ow1.t() == 0)
            {
                return false;
            }
        } else
        {
            return p(ow1, qm1);
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            if (!"true".equals(ow1))
            {
                if ("false".equals(ow1) || ow1.length() == 0)
                {
                    return Boolean.FALSE.booleanValue();
                } else
                {
                    throw qm1.b(q, "only \"true\" or \"false\" recognized");
                }
            }
        } else
        {
            throw qm1.a(q, pb1);
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    protected final Boolean o(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.k)
        {
            return Boolean.TRUE;
        }
        if (pb1 == pb.l)
        {
            return Boolean.FALSE;
        }
        if (pb1 == pb.i)
        {
            if (ow1.q() == oy.a)
            {
                if (ow1.t() == 0)
                {
                    return Boolean.FALSE;
                } else
                {
                    return Boolean.TRUE;
                }
            } else
            {
                return Boolean.valueOf(p(ow1, qm1));
            }
        }
        if (pb1 == pb.m)
        {
            return (Boolean)b();
        }
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            if ("true".equals(ow1))
            {
                return Boolean.TRUE;
            }
            if ("false".equals(ow1))
            {
                return Boolean.FALSE;
            }
            if (ow1.length() == 0)
            {
                return (Boolean)c();
            } else
            {
                throw qm1.b(q, "only \"true\" or \"false\" recognized");
            }
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected final boolean p(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.q() == oy.b)
        {
            if (ow1.u() == 0L)
            {
                ow1 = Boolean.FALSE;
            } else
            {
                ow1 = Boolean.TRUE;
            }
            return ow1.booleanValue();
        }
        ow1 = ow1.k();
        if ("0.0".equals(ow1) || "0".equals(ow1))
        {
            return Boolean.FALSE.booleanValue();
        } else
        {
            return Boolean.TRUE.booleanValue();
        }
    }

    protected Byte q(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Byte.valueOf(ow1.r());
        }
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            int i;
            try
            {
                if (ow1.length() == 0)
                {
                    return (Byte)c();
                }
                i = pt.a(ow1);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, "not a valid Byte value");
            }
            if (i < -128 || i > 127)
            {
                throw qm1.b(q, "overflow, value can not be represented as 8-bit value");
            } else
            {
                return Byte.valueOf((byte)i);
            }
        }
        if (pb1 == pb.m)
        {
            return (Byte)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected Short r(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Short.valueOf(ow1.s());
        }
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            int i;
            try
            {
                if (ow1.length() == 0)
                {
                    return (Short)c();
                }
                i = pt.a(ow1);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, "not a valid Short value");
            }
            if (i < -32768 || i > 32767)
            {
                throw qm1.b(q, "overflow, value can not be represented as 16-bit value");
            } else
            {
                return Short.valueOf((short)i);
            }
        }
        if (pb1 == pb.m)
        {
            return (Short)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected final short s(ow ow1, qm qm1)
        throws IOException, oz
    {
        int i = t(ow1, qm1);
        if (i < -32768 || i > 32767)
        {
            throw qm1.b(q, "overflow, value can not be represented as 16-bit value");
        } else
        {
            return (short)i;
        }
    }

    protected final int t(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        int i;
        i = 0;
        pb1 = ow1.e();
        if (pb1 != pb.i && pb1 != pb.j) goto _L2; else goto _L1
_L1:
        i = ow1.t();
_L4:
        return i;
_L2:
        int j;
        long l;
        if (pb1 != pb.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        ow1 = ow1.k().trim();
        try
        {
            j = ow1.length();
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid int value");
        }
        if (j <= 9)
        {
            continue; /* Loop/switch isn't completed */
        }
        l = Long.parseLong(ow1);
        if (l >= 0xffffffff80000000L && l <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_154;
        }
        throw qm1.b(q, (new StringBuilder()).append("Overflow: numeric value (").append(ow1).append(") out of range of int (").append(0x80000000).append(" - ").append(0x7fffffff).append(")").toString());
        return (int)l;
        if (j == 0) goto _L4; else goto _L3
_L3:
        i = pt.a(ow1);
        return i;
        if (pb1 == pb.m) goto _L4; else goto _L5
_L5:
        throw qm1.a(q, pb1);
    }

    protected final Integer u(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        int i;
        long l;
        pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Integer.valueOf(ow1.t());
        }
        if (pb1 != pb.h)
        {
            break MISSING_BLOCK_LABEL_186;
        }
        ow1 = ow1.k().trim();
        try
        {
            i = ow1.length();
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid Integer value");
        }
        if (i <= 9)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        l = Long.parseLong(ow1);
        if (l >= 0xffffffff80000000L && l <= 0x7fffffffL)
        {
            break MISSING_BLOCK_LABEL_150;
        }
        throw qm1.b(q, (new StringBuilder()).append("Overflow: numeric value (").append(ow1).append(") out of range of Integer (").append(0x80000000).append(" - ").append(0x7fffffff).append(")").toString());
        i = (int)l;
        return Integer.valueOf(i);
        if (i != 0)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        return (Integer)c();
        i = pt.a(ow1);
        return Integer.valueOf(i);
        if (pb1 == pb.m)
        {
            return (Integer)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected final Long v(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Long.valueOf(ow1.u());
        }
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            if (ow1.length() == 0)
            {
                return (Long)c();
            }
            long l;
            try
            {
                l = pt.b(ow1);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, "not a valid Long value");
            }
            return Long.valueOf(l);
        }
        if (pb1 == pb.m)
        {
            return (Long)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected final long w(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        long l;
        l = 0L;
        pb1 = ow1.e();
        if (pb1 != pb.i && pb1 != pb.j) goto _L2; else goto _L1
_L1:
        l = ow1.u();
_L4:
        return l;
_L2:
        if (pb1 != pb.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        ow1 = ow1.k().trim();
        if (ow1.length() == 0) goto _L4; else goto _L3
_L3:
        long l1;
        try
        {
            l1 = pt.b(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid long value");
        }
        return l1;
        if (pb1 == pb.m) goto _L4; else goto _L5
_L5:
        throw qm1.a(q, pb1);
    }

    protected final Float x(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Float.valueOf(ow1.w());
        }
        if (pb1 != pb.h) goto _L2; else goto _L1
_L1:
        ow1 = ow1.k().trim();
        if (ow1.length() == 0)
        {
            return (Float)c();
        }
        ow1.charAt(0);
        JVM INSTR lookupswitch 3: default 100
    //                   45: 151
    //                   73: 110
    //                   78: 135;
           goto _L3 _L4 _L5 _L6
_L3:
        float f1;
        try
        {
            f1 = Float.parseFloat(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid Float value");
        }
        return Float.valueOf(f1);
_L5:
        if (!"Infinity".equals(ow1) && !"INF".equals(ow1)) goto _L3; else goto _L7
_L7:
        return Float.valueOf((1.0F / 0.0F));
_L6:
        if (!"NaN".equals(ow1)) goto _L3; else goto _L8
_L8:
        return Float.valueOf((0.0F / 0.0F));
_L4:
        if (!"-Infinity".equals(ow1) && !"-INF".equals(ow1)) goto _L3; else goto _L9
_L9:
        return Float.valueOf((-1.0F / 0.0F));
_L2:
        if (pb1 == pb.m)
        {
            return (Float)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    protected final float y(ow ow1, qm qm1)
        throws IOException, oz
    {
        float f1;
        pb pb1;
        f1 = 0.0F;
        pb1 = ow1.e();
        if (pb1 != pb.i && pb1 != pb.j) goto _L2; else goto _L1
_L1:
        f1 = ow1.w();
_L4:
        return f1;
_L2:
        if (pb1 != pb.h)
        {
            continue; /* Loop/switch isn't completed */
        }
        ow1 = ow1.k().trim();
        if (ow1.length() == 0) goto _L4; else goto _L3
_L3:
        ow1.charAt(0);
        JVM INSTR lookupswitch 3: default 92
    //                   45: 134
    //                   73: 99
    //                   78: 121;
           goto _L5 _L6 _L7 _L8
_L5:
        float f2;
        try
        {
            f2 = Float.parseFloat(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid float value");
        }
        return f2;
_L7:
        if (!"Infinity".equals(ow1) && !"INF".equals(ow1)) goto _L5; else goto _L9
_L9:
        return (1.0F / 0.0F);
_L8:
        if (!"NaN".equals(ow1)) goto _L5; else goto _L10
_L10:
        return (0.0F / 0.0F);
_L6:
        if (!"-Infinity".equals(ow1) && !"-INF".equals(ow1)) goto _L5; else goto _L11
_L11:
        return (-1.0F / 0.0F);
        if (pb1 == pb.m) goto _L4; else goto _L12
_L12:
        throw qm1.a(q, pb1);
    }

    protected final Double z(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return Double.valueOf(ow1.x());
        }
        if (pb1 != pb.h) goto _L2; else goto _L1
_L1:
        ow1 = ow1.k().trim();
        if (ow1.length() == 0)
        {
            return (Double)c();
        }
        ow1.charAt(0);
        JVM INSTR lookupswitch 3: default 100
    //                   45: 151
    //                   73: 110
    //                   78: 135;
           goto _L3 _L4 _L5 _L6
_L3:
        double d;
        try
        {
            d = b(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid Double value");
        }
        return Double.valueOf(d);
_L5:
        if (!"Infinity".equals(ow1) && !"INF".equals(ow1)) goto _L3; else goto _L7
_L7:
        return Double.valueOf((1.0D / 0.0D));
_L6:
        if (!"NaN".equals(ow1)) goto _L3; else goto _L8
_L8:
        return Double.valueOf((0.0D / 0.0D));
_L4:
        if (!"-Infinity".equals(ow1) && !"-INF".equals(ow1)) goto _L3; else goto _L9
_L9:
        return Double.valueOf((-1.0D / 0.0D));
_L2:
        if (pb1 == pb.m)
        {
            return (Double)b();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }
}
