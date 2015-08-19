// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            ql, qm, adp, adt

final class vi extends ve
{

    public vi()
    {
        super([D);
    }

    private final double[] c(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() == pb.h && qm1.a(ql.q) && ow1.k().length() == 0)
        {
            return null;
        }
        if (!qm1.a(ql.o))
        {
            throw qm1.b(q);
        } else
        {
            return (new double[] {
                A(ow1, qm1)
            });
        }
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public double[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        adt adt1 = qm1.h().g();
        double ad[] = (double[])adt1.a();
        int i;
        int j;
        for (i = 0; ow1.b() != pb.e; i = j)
        {
            double d = A(ow1, qm1);
            if (i >= ad.length)
            {
                ad = (double[])adt1.a(ad, i);
                i = 0;
            }
            j = i + 1;
            ad[i] = d;
        }

        return (double[])adt1.b(ad, i);
    }
}
