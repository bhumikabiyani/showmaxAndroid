// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ex, em, ja, ia, 
//            er

class eq
    implements ex
{

    final em a;

    eq(em em1)
    {
        a = em1;
        super();
    }

    public void a(int i, String s, String s1, String s2)
    {
        ja.a(5, em.d(), (new StringBuilder()).append("--onReport ").append(s1).append(" sent. HTTP response: ").append(i).append(" : ").append(s).toString());
        if (ja.c() <= 3)
        {
            ia.a().a(new er(this, i));
        }
        em.a(a, s1, s2, i);
        em.c(a);
    }

    public void a(String s, String s1)
    {
        ja.a(5, em.d(), (new StringBuilder()).append("--onServerError ").append(s).toString());
        em.a(a, s, s1);
    }
}
