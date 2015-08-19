// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ub, aeo, oz, ow, 
//            qm

final class uz extends ub
{

    protected static final uz a = new uz();

    protected uz()
    {
        super(com/flurry/android/monolithic/sdk/impl/aeo);
    }

    public static uz d()
    {
        return a;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public aeo b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.j())
        {
            return b(ow1, qm1, qm1.e());
        } else
        {
            throw qm1.b(com/flurry/android/monolithic/sdk/impl/aeo);
        }
    }

}
