// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yy, oz, ow, pb, 
//            qm, qu, afm, yi, 
//            qc

public class yr extends yy
{

    public yr(afm afm, yi yi, qc qc, Class class1)
    {
        super(afm, yi, qc, null);
    }

    private final Object e(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (ow1.e() != pb.b)
        {
            throw qm1.a(ow1, pb.b, (new StringBuilder()).append("need JSON Object to contain As.WRAPPER_OBJECT type information for class ").append(c()).toString());
        }
        if (ow1.b() != pb.f)
        {
            throw qm1.a(ow1, pb.f, (new StringBuilder()).append("need JSON String that contains type id (for subtype of ").append(c()).append(")").toString());
        }
        Object obj = a(qm1, ow1.k());
        ow1.b();
        obj = ((qu) (obj)).a(ow1, qm1);
        if (ow1.b() != pb.c)
        {
            throw qm1.a(ow1, pb.c, "expected closing END_OBJECT after type information and deserialized value");
        } else
        {
            return obj;
        }
    }

    public com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As a()
    {
        return com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.WRAPPER_OBJECT;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return e(ow1, qm1);
    }

    public Object b(ow ow1, qm qm1)
        throws IOException, oz
    {
        return e(ow1, qm1);
    }

    public Object c(ow ow1, qm qm1)
        throws IOException, oz
    {
        return e(ow1, qm1);
    }

    public Object d(ow ow1, qm qm1)
        throws IOException, oz
    {
        return e(ow1, qm1);
    }
}
