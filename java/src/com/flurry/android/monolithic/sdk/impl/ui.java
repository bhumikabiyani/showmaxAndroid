// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, xl, ql, qk, 
//            adz, uj, oz, ow, 
//            pb, aed, qm, qu

public class ui extends wv
{

    protected final aed a;

    public ui(aed aed1)
    {
        super(java/lang/Enum);
        a = aed1;
    }

    public static qu a(qk qk1, Class class1, xl xl1)
    {
        if (xl1.b(0) != java/lang/String)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Parameter #0 type for factory method (").append(xl1).append(") not suitable, must be java.lang.String").toString());
        }
        if (qk1.a(ql.f))
        {
            adz.a(xl1.i());
        }
        return new uj(class1, xl1);
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return b(ow1, qm1);
    }

    public Enum b(ow ow1, qm qm1)
        throws IOException, oz
    {
        Object obj = ow1.e();
        if (obj == pb.h || obj == pb.f)
        {
            ow1 = ow1.k();
            obj = a.a(ow1);
            ow1 = ((ow) (obj));
            if (obj == null)
            {
                throw qm1.b(a.a(), "value not one of declared Enum instance names");
            }
        } else
        if (obj == pb.i)
        {
            if (qm1.a(ql.m))
            {
                throw qm1.b("Not allowed to deserialize Enum value out of JSON number (disable DeserializationConfig.Feature.FAIL_ON_NUMBERS_FOR_ENUMS to allow)");
            }
            int i = ow1.t();
            Enum enum = a.a(i);
            ow1 = enum;
            if (enum == null)
            {
                throw qm1.c(a.a(), (new StringBuilder()).append("index value outside legal index range [0..").append(a.b()).append("]").toString());
            }
        } else
        {
            throw qm1.b(a.a());
        }
        return ow1;
    }
}
