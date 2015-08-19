// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afm, oz, ql, qm

public final class tb
{

    private final Object a;
    private final boolean b;
    private final Class c;

    protected tb(afm afm1, Object obj)
    {
        a = obj;
        b = afm1.t();
        c = afm1.p();
    }

    public Object a(qm qm1)
        throws oz
    {
        if (b && qm1.a(ql.l))
        {
            throw qm1.b((new StringBuilder()).append("Can not map JSON null into type ").append(c.getName()).append(" (set DeserializationConfig.Feature.FAIL_ON_NULL_FOR_PRIMITIVES to 'false' to allow)").toString());
        } else
        {
            return a;
        }
    }
}
