// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zf, ru, ra, or

final class zn extends zf
{

    protected final zf p;
    protected final Class q[];

    protected zn(zf zf1, Class aclass[])
    {
        super(zf1);
        p = zf1;
        q = aclass;
    }

    public zf a(ra ra)
    {
        return new zn(p.a(ra), q);
    }

    public void a(Object obj, or or, ru ru1)
        throws Exception
    {
        Class class1 = ru1.a();
        if (class1 != null)
        {
            int i = 0;
            int j = q.length;
            do
            {
                if (i >= j || q[i].isAssignableFrom(class1))
                {
                    if (i == j)
                    {
                        return;
                    }
                    break;
                }
                i++;
            } while (true);
        }
        p.a(obj, or, ru1);
    }
}
