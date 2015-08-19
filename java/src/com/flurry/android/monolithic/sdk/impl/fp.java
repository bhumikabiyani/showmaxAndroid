// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, fq, fm, hx, 
//            hy

class fp
    implements fr
{

    final hx a;
    final fm b;

    fp(fm fm1, hx hx1)
    {
        b = fm1;
        a = hx1;
        super();
    }

    public void a(fq fq1)
        throws Exception
    {
        if (fq1 != null)
        {
            if (fq1.a())
            {
                b.a(null);
                a.a();
                return;
            } else
            {
                a.a(new hy(fq1.d(), fq1.b()));
                return;
            }
        } else
        {
            a.a(new hy(400, "Bad response"));
            return;
        }
    }
}
