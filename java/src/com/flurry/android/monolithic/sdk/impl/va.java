// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ub, afd, oz, ow, 
//            pb, qm

final class va extends ub
{

    protected static final va a = new va();

    protected va()
    {
        super(com/flurry/android/monolithic/sdk/impl/afd);
    }

    public static va d()
    {
        return a;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public afd b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() == pb.b)
        {
            ow1.b();
            return a(ow1, qm1, qm1.e());
        }
        if (ow1.e() == pb.f)
        {
            return a(ow1, qm1, qm1.e());
        } else
        {
            throw qm1.b(com/flurry/android/monolithic/sdk/impl/afd);
        }
    }

}
