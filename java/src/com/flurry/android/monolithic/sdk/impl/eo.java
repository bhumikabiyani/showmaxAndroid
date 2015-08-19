// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            em, eu, ja

class eo
    implements Runnable
{

    final eu a;
    final em b;

    eo(em em1, eu eu1)
    {
        b = em1;
        a = eu1;
        super();
    }

    public void run()
    {
        em.a(b);
        try
        {
            em.b(b);
            if (a != null)
            {
                a.a();
            }
            return;
        }
        catch (Exception exception)
        {
            ja.a(6, em.d(), "retransmitNotSentBlocks error", exception);
        }
    }
}
