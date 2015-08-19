// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zf, ru, ra, or

final class zo extends zf
{

    protected final zf p;
    protected final Class q;

    protected zo(zf zf1, Class class1)
    {
        super(zf1);
        p = zf1;
        q = class1;
    }

    public zf a(ra ra)
    {
        return new zo(p.a(ra), q);
    }

    public void a(Object obj, or or, ru ru1)
        throws Exception
    {
        Class class1 = ru1.a();
        if (class1 == null || q.isAssignableFrom(class1))
        {
            p.a(obj, or, ru1);
        }
    }
}
