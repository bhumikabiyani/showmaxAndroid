// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.android.FlurryAdSize;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ap, ja, ao, ac, 
//            bw

public final class an extends RelativeLayout
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/an.getSimpleName();
    private final FlurryAdModule b;
    private final String c;
    private final ViewGroup d;
    private long e;
    private final ScheduledExecutorService f;
    private final Runnable g = new ap(this, null);
    private ScheduledFuture h;

    public an(FlurryAdModule flurryadmodule, Context context, String s, ViewGroup viewgroup, ScheduledExecutorService scheduledexecutorservice)
    {
        super(context);
        b = flurryadmodule;
        c = s;
        d = viewgroup;
        f = scheduledexecutorservice;
    }

    static boolean a(an an1)
    {
        return an1.e();
    }

    static Runnable b(an an1)
    {
        return an1.g;
    }

    static void c(an an1)
    {
        an1.f();
    }

    private boolean c()
    {
        if (f != null && h == null && 0L != getRotationRateInMilliseconds())
        {
            ja.a(3, a, (new StringBuilder()).append("schedule banner rotation for adSpace = ").append(getAdSpace()).append(" with fixed rate in milliseconds = ").append(getRotationRateInMilliseconds()).toString());
            h = f.scheduleAtFixedRate(new ao(this), getRotationRateInMilliseconds(), getRotationRateInMilliseconds(), TimeUnit.MILLISECONDS);
        }
        return h != null;
    }

    private void d()
    {
        if (h != null)
        {
            ja.a(3, a, (new StringBuilder()).append("cancel banner rotation for adSpace = ").append(getAdSpace()).append(" with fixed rate in milliseconds = ").append(getRotationRateInMilliseconds()).toString());
            h.cancel(true);
            h = null;
        }
    }

    private boolean e()
    {
        if (FlurryAdModule.e())
        {
            ja.a(3, a, (new StringBuilder()).append("Device is locked: banner will NOT rotate for adSpace: ").append(getAdSpace()).toString());
        } else
        {
            if (b.c())
            {
                ja.a(3, a, (new StringBuilder()).append("Ad fullscreen panel is opened: banner will NOT rotate for adSpace: ").append(getAdSpace()).toString());
                return false;
            }
            ac ac1 = getCurrentBannerView();
            if (ac1 != null && ac1.e())
            {
                return true;
            }
        }
        return false;
    }

    private void f()
    {
        ja.a(3, a, (new StringBuilder()).append("Rotating banner for adSpace: ").append(getAdSpace()).toString());
        b.b().a(getContext(), c, FlurryAdSize.BANNER_BOTTOM, d, 1L);
    }

    private ac getCurrentBannerView()
    {
        if (getChildCount() < 1)
        {
            return null;
        }
        Object obj = getChildAt(0);
        try
        {
            obj = (ac)obj;
        }
        catch (ClassCastException classcastexception)
        {
            return null;
        }
        return ((ac) (obj));
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        d();
        e = 0L;
        removeCallbacks(g);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(long l)
    {
        this;
        JVM INSTR monitorenter ;
        if (e != l)
        {
            d();
            e = l;
            c();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void b()
    {
        a();
        ac ac1 = getCurrentBannerView();
        if (ac1 != null)
        {
            ac1.stop();
        }
    }

    public String getAdSpace()
    {
        return c;
    }

    public long getRotationRateInMilliseconds()
    {
        return e;
    }

    public ViewGroup getViewGroup()
    {
        return d;
    }

}
