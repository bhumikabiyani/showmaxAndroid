// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, pb, 
//            vp, oy, qm

public class vr extends wv
{

    public vr()
    {
        super(java/math/BigInteger);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public BigInteger b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 != pb.i) goto _L2; else goto _L1
_L1:
        vp.b[ow1.q().ordinal()];
        JVM INSTR tableswitch 1 2: default 44
    //                   1 61
    //                   2 61;
           goto _L3 _L4 _L4
_L3:
        ow1 = ow1.k().trim();
        if (ow1.length() == 0)
        {
            return null;
        }
        break; /* Loop/switch isn't completed */
_L4:
        return BigInteger.valueOf(ow1.u());
_L2:
        if (pb1 == pb.j)
        {
            return ow1.y().toBigInteger();
        }
        if (pb1 != pb.h)
        {
            throw qm1.a(q, pb1);
        }
        if (true) goto _L3; else goto _L5
_L5:
        try
        {
            ow1 = new BigInteger(ow1);
        }
        // Misplaced declaration of an exception variable
        catch (ow ow1)
        {
            throw qm1.b(q, "not a valid representation");
        }
        return ow1;
    }
}
