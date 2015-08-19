// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.view.ViewGroup;
import com.flurry.android.FlurryAdSize;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            bs, jf

public class br
{

    final FlurryAdModule a;
    private final String b;
    private final ViewGroup c;
    private final boolean d;
    private final FlurryAdSize e;
    private final Runnable f;
    private Future g;

    public br(FlurryAdModule flurryadmodule, String s, ViewGroup viewgroup, boolean flag, FlurryAdSize flurryadsize, jf jf)
    {
        a = flurryadmodule;
        super();
        b = s;
        c = viewgroup;
        d = flag;
        e = flurryadsize;
        f = jf;
    }

    static String a(br br1)
    {
        return br1.b;
    }

    static ViewGroup b(br br1)
    {
        return br1.c;
    }

    static boolean c(br br1)
    {
        return br1.d;
    }

    static FlurryAdSize d(br br1)
    {
        return br1.e;
    }

    static Runnable e(br br1)
    {
        return br1.f;
    }

    public br a()
    {
        g = a.b(new bs(this));
        return this;
    }

    public void a(long l, TimeUnit timeunit)
        throws InterruptedException, ExecutionException, TimeoutException
    {
        if (g != null)
        {
            g.get(l, timeunit);
        }
    }

    public void a(boolean flag)
    {
        if (g != null)
        {
            g.cancel(flag);
        }
    }
}
