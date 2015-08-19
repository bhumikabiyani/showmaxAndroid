// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, qw, rr, ru, 
//            or, oq, rx

public class aav extends abt
{

    public aav()
    {
        super(java/lang/Object);
    }

    protected void a(Object obj)
        throws qw
    {
        throw new qw((new StringBuilder()).append("No serializer found for class ").append(obj.getClass().getName()).append(" and no properties discovered to create BeanSerializer (to avoid exception, disable SerializationConfig.Feature.FAIL_ON_EMPTY_BEANS) )").toString());
    }

    public void a(Object obj, or or1, ru ru1)
        throws IOException, qw
    {
        if (ru1.a(rr.m))
        {
            a(obj);
        }
        or1.d();
        or1.e();
    }

    public final void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        if (ru1.a(rr.m))
        {
            a(obj);
        }
        rx1.b(obj, or1);
        rx1.e(obj, or1);
    }
}
