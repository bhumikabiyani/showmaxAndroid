// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            em, ey, ja

class en
    implements Runnable
{

    final em a;

    en(em em1)
    {
        a = em1;
        super();
    }

    public void run()
    {
        em.a(a);
        try
        {
            a.d = new ey();
            return;
        }
        catch (Exception exception)
        {
            ja.a(6, em.d(), "initialization of FlurryDataSenderIndex error", exception);
        }
    }
}
