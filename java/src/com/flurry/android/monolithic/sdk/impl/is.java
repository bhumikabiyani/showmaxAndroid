// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            iu

public final class is
{

    private static is a;
    private final Thread.UncaughtExceptionHandler b = Thread.getDefaultUncaughtExceptionHandler();
    private final Map c = new WeakHashMap();

    private is()
    {
        Thread.setDefaultUncaughtExceptionHandler(new iu(this, null));
    }

    public static is a()
    {
        com/flurry/android/monolithic/sdk/impl/is;
        JVM INSTR monitorenter ;
        is is1;
        if (a == null)
        {
            a = new is();
        }
        is1 = a;
        com/flurry/android/monolithic/sdk/impl/is;
        JVM INSTR monitorexit ;
        return is1;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(is is1, Thread thread, Throwable throwable)
    {
        is1.a(thread, throwable);
    }

    private void a(Thread thread, Throwable throwable)
    {
        for (Iterator iterator = b().iterator(); iterator.hasNext();)
        {
            Thread.UncaughtExceptionHandler uncaughtexceptionhandler = (Thread.UncaughtExceptionHandler)iterator.next();
            try
            {
                uncaughtexceptionhandler.uncaughtException(thread, throwable);
            }
            catch (Throwable throwable1) { }
        }

    }

    private Set b()
    {
        Set set;
        synchronized (c)
        {
            set = c.keySet();
        }
        return set;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void b(is is1, Thread thread, Throwable throwable)
    {
        is1.b(thread, throwable);
    }

    private void b(Thread thread, Throwable throwable)
    {
        if (b != null)
        {
            b.uncaughtException(thread, throwable);
        }
    }

    public void a(Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        synchronized (c)
        {
            c.put(uncaughtexceptionhandler, null);
        }
        return;
        uncaughtexceptionhandler;
        map;
        JVM INSTR monitorexit ;
        throw uncaughtexceptionhandler;
    }
}
