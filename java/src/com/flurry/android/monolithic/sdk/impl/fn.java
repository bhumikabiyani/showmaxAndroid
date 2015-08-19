// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, fq, fm, hw, 
//            hy

class fn
    implements fr
{

    final hw a;
    final fm b;

    fn(fm fm1, hw hw1)
    {
        b = fm1;
        a = hw1;
        super();
    }

    public void a(fq fq1)
        throws Exception
    {
        if (fq1.a())
        {
            b.a(fq1.c());
            a.a(true, fq1.b());
            return;
        } else
        {
            fq1 = new hy(fq1.d(), fq1.b());
            a.a(fq1);
            return;
        }
    }
}
