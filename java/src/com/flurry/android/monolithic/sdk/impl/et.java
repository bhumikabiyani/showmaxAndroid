// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            em, ja

class et
    implements Runnable
{

    final String a;
    final em b;

    et(em em1, String s)
    {
        b = em1;
        a = s;
        super();
    }

    public void run()
    {
        em.a(b);
        if (!b.e.remove(a))
        {
            ja.a(6, em.d(), (new StringBuilder()).append("Internal error. Block with id = ").append(a).append(" was not in progress state").toString());
        }
    }
}
