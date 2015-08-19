// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            ql, qm, adp, adx

final class vm extends ve
{

    public vm()
    {
        super([S);
    }

    private final short[] c(ow ow1, qm qm1)
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
            return (new short[] {
                s(ow1, qm1)
            });
        }
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public short[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        adx adx1 = qm1.h().c();
        short aword0[] = (short[])adx1.a();
        int i;
        int j;
        for (i = 0; ow1.b() != pb.e; i = j)
        {
            short word0 = s(ow1, qm1);
            if (i >= aword0.length)
            {
                aword0 = (short[])adx1.a(aword0, i);
                i = 0;
            }
            j = i + 1;
            aword0[i] = word0;
        }

        return (short[])adx1.b(aword0, i);
    }
}
