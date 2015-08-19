// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.os.SystemClock;
import com.flurry.android.impl.ads.FlurryAdModule;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ih, is, jc, in, 
//            ja, ib, ic, bu

public class bt
    implements ih, Thread.UncaughtExceptionHandler
{

    private static final String b = com/flurry/android/monolithic/sdk/impl/bt.getSimpleName();
    private static bt c;
    Map a;
    private long d;
    private long e;
    private long f;
    private Map g;
    private volatile boolean h;
    private volatile boolean i;
    private FlurryAdModule j;

    public bt()
    {
        a = new WeakHashMap();
        g = new HashMap();
        h = false;
        i = false;
        is.a().a(this);
        j = FlurryAdModule.getInstance();
    }

    public static bt a()
    {
        if (c == null)
        {
            c = new bt();
        }
        return c;
    }

    static Map a(bt bt1)
    {
        return bt1.g;
    }

    static boolean a(bt bt1, boolean flag)
    {
        bt1.i = flag;
        return flag;
    }

    static String b()
    {
        return b;
    }

    static boolean b(bt bt1)
    {
        return bt1.i;
    }

    static FlurryAdModule c(bt bt1)
    {
        return bt1.j;
    }

    private void c()
    {
        a.clear();
    }

    public void f(Context context)
    {
        jc.a().b();
        in.a().b();
        in.a().c();
        if ((Context)a.put(context, context) != null)
        {
            ja.a(5, b, "onStartSession called with duplicate context, use a specific Activity or Service as context instead of using a global context");
        }
        if (!h)
        {
            long l = SystemClock.elapsedRealtime();
            long l1 = ((Long)ib.a().a("ContinueSessionMillis")).longValue();
            if (l - f > l1)
            {
                e = l;
                d = System.currentTimeMillis();
                j.a(context, d, e);
                j.a(new bu(this));
            } else
            {
                j.b(context);
            }
            h = true;
        }
    }

    public void g(Context context)
    {
        in.a().d();
        if (context != null && (Context)a.remove(context) == null)
        {
            ja.a(5, b, "onEndSession called without context from corresponding onStartSession");
        }
        if (h)
        {
            j.d(context);
        }
        if (h && a.isEmpty())
        {
            f = SystemClock.elapsedRealtime();
            j.c(context);
            h = false;
        }
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        c();
    }

}
