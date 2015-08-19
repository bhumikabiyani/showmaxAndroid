// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.EnumMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            vo, oz, rw, ow, 
//            pb, qm, qu

public class uk extends vo
{

    protected final Class a;
    protected final qu b;
    protected final qu c;

    public uk(Class class1, qu qu1, qu qu2)
    {
        super(java/util/EnumMap);
        a = class1;
        b = qu1;
        c = qu2;
    }

    private EnumMap d()
    {
        return new EnumMap(a);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Object a(ow ow1, qm qm1, rw rw1)
        throws IOException, oz
    {
        return rw1.a(ow1, qm1);
    }

    public EnumMap b(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() != pb.b)
        {
            throw qm1.b(java/util/EnumMap);
        }
        EnumMap enummap = d();
        while (ow1.b() != pb.c) 
        {
            Enum enum = (Enum)b.a(ow1, qm1);
            if (enum == null)
            {
                throw qm1.b(a, "value not one of declared Enum instance names");
            }
            Object obj;
            if (ow1.b() == pb.m)
            {
                obj = null;
            } else
            {
                obj = c.a(ow1, qm1);
            }
            enummap.put(enum, obj);
        }
        return enummap;
    }
}
