// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.EnumSet;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, oz, rw, ow, 
//            qm, pb, qu

public class ul extends vo
{

    protected final Class a;
    protected final qu b;

    public ul(Class class1, qu qu1)
    {
        super(java/util/EnumSet);
        a = class1;
        b = qu1;
    }

    private EnumSet d()
    {
        return EnumSet.noneOf(a);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.b(ow1, qm1);
    }

    public EnumSet b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            throw qm1.b(java/util/EnumSet);
        }
        EnumSet enumset = d();
        do
        {
            pb pb1 = ow1.b();
            if (pb1 != pb.e)
            {
                if (pb1 == pb.m)
                {
                    throw qm1.b(a);
                }
                enumset.add((Enum)b.a(ow1, qm1));
            } else
            {
                return enumset;
            }
        } while (true);
    }
}
