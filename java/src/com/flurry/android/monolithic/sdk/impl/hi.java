// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hs, ht, hm, hj, 
//            fr

public class hi
{

    private hs a;
    private ht b;
    private ExecutorService c;

    public hi()
    {
        a = new hs();
        b = new ht();
        c = Executors.newSingleThreadExecutor();
    }

    static hs a(hi hi1)
    {
        return hi1.a;
    }

    static ht b(hi hi1)
    {
        return hi1.b;
    }

    public void a(hm hm1, fr fr)
    {
        hm1.a(1);
        a.a(hm1);
        c.submit(new hj(this, fr));
    }

    public void b(hm hm1, fr fr)
    {
        hm1.a(2);
        a.a(hm1);
        c.submit(new hj(this, fr));
    }

    public void c(hm hm1, fr fr)
    {
        hm1.a(32);
        a.a(hm1);
        c.submit(new hj(this, fr));
    }
}
