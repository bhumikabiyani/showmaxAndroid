// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ve, oz, ow, pb, 
//            ql, qm, adp, ads

final class vg extends ve
{

    public vg()
    {
        super([B);
    }

    private final byte[] c(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() == pb.h && qm1.a(ql.q) && ow1.k().length() == 0)
        {
            return null;
        }
        if (!qm1.a(ql.o))
        {
            throw qm1.b(q);
        }
        pb pb1 = ow1.e();
        byte byte0;
        if (pb1 == pb.i || pb1 == pb.j)
        {
            byte0 = ow1.r();
        } else
        {
            if (pb1 != pb.m)
            {
                throw qm1.b(q.getComponentType());
            }
            byte0 = 0;
        }
        return (new byte[] {
            byte0
        });
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public byte[] b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.h)
        {
            return ow1.a(qm1.c());
        }
        if (pb1 == pb.g)
        {
            Object obj = ow1.z();
            if (obj == null)
            {
                return null;
            }
            if (obj instanceof byte[])
            {
                return (byte[])(byte[])obj;
            }
        }
        if (!ow1.j())
        {
            return c(ow1, qm1);
        }
        ads ads1 = qm1.h().b();
        byte abyte0[] = (byte[])ads1.a();
        int i = 0;
        do
        {
            pb pb2 = ow1.b();
            if (pb2 != pb.e)
            {
                byte byte0;
                int j;
                if (pb2 == pb.i || pb2 == pb.j)
                {
                    byte0 = ow1.r();
                } else
                {
                    if (pb2 != pb.m)
                    {
                        throw qm1.b(q.getComponentType());
                    }
                    byte0 = 0;
                }
                if (i >= abyte0.length)
                {
                    abyte0 = (byte[])ads1.a(abyte0, i);
                    i = 0;
                }
                j = i + 1;
                abyte0[i] = byte0;
                i = j;
            } else
            {
                return (byte[])ads1.b(abyte0, i);
            }
        } while (true);
    }
}
