// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, vp, ow, 
//            pb, rw, ql, qm

public final class vz extends wv
{

    public vz()
    {
        super(java/lang/Number);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        switch (vp.a[ow1.e().ordinal()])
        {
        default:
            return rw1.c(ow1, qm1);

        case 1: // '\001'
        case 2: // '\002'
        case 3: // '\003'
            return b(ow1, qm1);
        }
    }

    public Number b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1;
        pb1 = ow1.e();
        if (pb1 == pb.i)
        {
            if (qm1.a(ql.h))
            {
                return ow1.v();
            } else
            {
                return ow1.p();
            }
        }
        if (pb1 == pb.j)
        {
            if (qm1.a(ql.g))
            {
                return ow1.y();
            } else
            {
                return Double.valueOf(ow1.x());
            }
        }
        if (pb1 != pb.h)
        {
            break MISSING_BLOCK_LABEL_184;
        }
        ow1 = ow1.k().trim();
        if (ow1.indexOf('.') < 0)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        if (!qm1.a(ql.g))
        {
            break MISSING_BLOCK_LABEL_119;
        }
        ow1 = new BigDecimal(ow1);
        return ow1;
        return new Double(ow1);
        long l;
        if (qm1.a(ql.h))
        {
            return new BigInteger(ow1);
        }
        l = Long.parseLong(ow1);
        if (l <= 0x7fffffffL && l >= 0xffffffff80000000L)
        {
            try
            {
                return Integer.valueOf((int)l);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, "not a valid number");
            }
        } else
        {
            return Long.valueOf(l);
        }
        throw qm1.a(q, pb1);
    }
}
