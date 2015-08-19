// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, afm, oz, ow, 
//            pb, qm, adk

public class uw extends wv
{

    public uw()
    {
        super(com/flurry/android/monolithic/sdk/impl/afm);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public afm b(ow ow1, qm qm1)
        throws IOException, oz
    {
        pb pb1 = ow1.e();
        if (pb1 == pb.h)
        {
            ow1 = ow1.k().trim();
            if (ow1.length() == 0)
            {
                return (afm)c();
            } else
            {
                return qm1.f().b(ow1);
            }
        }
        if (pb1 == pb.g)
        {
            return (afm)ow1.z();
        } else
        {
            throw qm1.b(q);
        }
    }
}
