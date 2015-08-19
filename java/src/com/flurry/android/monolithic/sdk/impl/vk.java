// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            ql, qm, adp, adv

final class vk extends ve
{

    public vk()
    {
        super([I);
    }

    private final int[] c(ow ow1, qm qm1)
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
            return (new int[] {
                t(ow1, qm1)
            });
        }
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public int[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        adv adv1 = qm1.h().d();
        int ai[] = (int[])adv1.a();
        int i;
        int j;
        for (i = 0; ow1.b() != pb.e; i = j)
        {
            int k = t(ow1, qm1);
            if (i >= ai.length)
            {
                ai = (int[])adv1.a(ai, i);
                i = 0;
            }
            j = i + 1;
            ai[i] = k;
        }

        return (int[])adv1.b(ai, i);
    }
}
