// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            yy, oz, ow, qu, 
//            pb, qm, yz, afm, 
//            yi, qc

public class yk extends yy
{

    public yk(afm afm, yi yi, qc qc, Class class1)
    {
        super(afm, yi, qc, class1);
    }

    private final Object f(ow ow1, qm qm1)
        throws IOException, oz
    {
        boolean flag = ow1.j();
        Object obj = a(qm1, e(ow1, qm1)).a(ow1, qm1);
        if (flag && ow1.b() != pb.e)
        {
            throw qm1.a(ow1, pb.e, "expected closing END_ARRAY after type information and deserialized value");
        } else
        {
            return obj;
        }
    }

    public com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As a()
    {
        return com.flurry.org.codehaus.jackson.annotate.JsonTypeInfo.As.WRAPPER_ARRAY;
    }

    public Object a(ow ow1, qm qm1)
        throws IOException, oz
    {
        return f(ow1, qm1);
    }

    public Object b(ow ow1, qm qm1)
        throws IOException, oz
    {
        return f(ow1, qm1);
    }

    public Object c(ow ow1, qm qm1)
        throws IOException, oz
    {
        return f(ow1, qm1);
    }

    public Object d(ow ow1, qm qm1)
        throws IOException, oz
    {
        return f(ow1, qm1);
    }

    protected final String e(ow ow1, qm qm1)
        throws IOException, oz
    {
        if (!ow1.j())
        {
            if ((b instanceof yz) && e != null)
            {
                return ((yz)b).a();
            } else
            {
                throw qm1.a(ow1, pb.d, (new StringBuilder()).append("need JSON Array to contain As.WRAPPER_ARRAY type information for class ").append(c()).toString());
            }
        }
        if (ow1.b() != pb.h)
        {
            if ((b instanceof yz) && e != null)
            {
                return ((yz)b).a();
            } else
            {
                throw qm1.a(ow1, pb.h, (new StringBuilder()).append("need JSON String that contains type id (for subtype of ").append(c()).append(")").toString());
            }
        } else
        {
            qm1 = ow1.k();
            ow1.b();
            return qm1;
        }
    }
}
