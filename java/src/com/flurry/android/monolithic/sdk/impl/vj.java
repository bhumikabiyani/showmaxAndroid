// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            ql, qm, adp, adu

final class vj extends ve
{

    public vj()
    {
        super([F);
    }

    private final float[] c(ow ow1, qm qm1)
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
            return (new float[] {
                y(ow1, qm1)
            });
        }
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public float[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        adu adu1 = qm1.h().f();
        float af[] = (float[])adu1.a();
        int i;
        int j;
        for (i = 0; ow1.b() != pb.e; i = j)
        {
            float f = y(ow1, qm1);
            if (i >= af.length)
            {
                af = (float[])adu1.a(af, i);
                i = 0;
            }
            j = i + 1;
            af[i] = f;
        }

        return (float[])adu1.b(af, i);
    }
}
