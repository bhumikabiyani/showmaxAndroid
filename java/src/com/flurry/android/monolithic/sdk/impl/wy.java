// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, pb, 
//            oo, on, qm, rw

public class wy extends wv
{

    public wy()
    {
        super(java/lang/String);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw)
        throws IOException, oz
    {
        return b(ow1, qm1, rw);
    }

    public String b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.h)
        {
            return ow1.k();
        }
        if (pb1 == pb.g)
        {
            ow1 = ((ow) (ow1.z()));
            if (ow1 == null)
            {
                return null;
            }
            if (ow1 instanceof byte[])
            {
                return oo.a().a((byte[])(byte[])ow1, false);
            } else
            {
                return ow1.toString();
            }
        }
        if (pb1.d())
        {
            return ow1.k();
        } else
        {
            throw qm1.a(q, pb1);
        }
    }

    public String b(ow ow1, qm qm1, rw rw)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }
}
