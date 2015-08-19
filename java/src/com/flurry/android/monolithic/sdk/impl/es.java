// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Set;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            eg, fb, em, ey, 
//            ja

class es
    implements Runnable
{

    final int a;
    final String b;
    final String c;
    final em d;

    es(em em1, int i, String s, String s1)
    {
        d = em1;
        a = i;
        b = s;
        c = s1;
        super();
    }

    public void run()
    {
        if (a == 200)
        {
            fb fb1 = eg.a().d();
            if (fb1 != null)
            {
                fb1.b();
            }
        }
        em.a(d);
        if (!d.d.a(b, c))
        {
            ja.a(6, em.d(), (new StringBuilder()).append("Internal error. Block wasn't deleted with id = ").append(b).toString());
        }
        if (!d.e.remove(b))
        {
            ja.a(6, em.d(), (new StringBuilder()).append("Internal error. Block with id = ").append(b).append(" was not in progress state").toString());
        }
    }
}
