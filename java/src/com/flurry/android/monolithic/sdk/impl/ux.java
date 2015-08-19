// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ub, ou, afd, va, 
//            aeo, uz, oz, uy, 
//            ow, pb, qm, qu, 
//            rw

public class ux extends ub
{

    private static final ux a = new ux();

    protected ux()
    {
        super(com/flurry/android/monolithic/sdk/impl/ou);
    }

    public static qu a(Class class1)
    {
        if (class1 == com/flurry/android/monolithic/sdk/impl/afd)
        {
            return va.d();
        }
        if (class1 == com/flurry/android/monolithic/sdk/impl/aeo)
        {
            return uz.d();
        } else
        {
            return a;
        }
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public volatile Object a(ow ow1, qm qm1, rw rw)
        throws IOException, oz
    {
        return super.a(ow1, qm1, rw);
    }

    public ou b(ow ow1, qm qm1)
        throws IOException, oz
    {
        switch (uy.a[ow1.e().ordinal()])
        {
        default:
            return c(ow1, qm1, qm1.e());

        case 1: // '\001'
            return a(ow1, qm1, qm1.e());

        case 2: // '\002'
            return b(ow1, qm1, qm1.e());
        }
    }

}
