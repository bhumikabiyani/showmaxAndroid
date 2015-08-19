// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, pb, 
//            qm

public class vq extends wv
{

    public vq()
    {
        super(java/math/BigDecimal);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public BigDecimal b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.i || pb1 == pb.j)
        {
            return ow1.y();
        }
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            if (ow1.length() == 0)
            {
                return null;
            }
            try
            {
                ow1 = new BigDecimal(ow1);
            }
            // Misplaced declaration of an exception variable
            catch (ow ow1)
            {
                throw qm1.b(q, "not a valid representation");
            }
            return ow1;
        } else
        {
            throw qm1.a(q, pb1);
        }
    }
}
