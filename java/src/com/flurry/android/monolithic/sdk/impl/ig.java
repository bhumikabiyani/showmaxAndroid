// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ih, if

public final class ig
    implements ih
{

    private static ig a;
    private final ih b = b();

    public ig()
    {
    }

    public static ig a()
    {
        com/flurry/android/monolithic/sdk/impl/ig;
        JVM INSTR monitorenter ;
        ig ig1;
        if (a == null)
        {
            a = new ig();
        }
        ig1 = a;
        com/flurry/android/monolithic/sdk/impl/ig;
        JVM INSTR monitorexit ;
        return ig1;
        Exception exception;
        exception;
        throw exception;
    }

    private static ih b()
    {
        ih ih1 = null;
        if (c())
        {
            ih1 = com.flurry.android.monolithic.sdk.impl.if.a();
        }
        return ih1;
    }

    private static boolean c()
    {
        return android.os.Build.VERSION.SDK_INT >= 8;
    }

    public void f(Context context)
    {
        if (b != null)
        {
            b.f(context);
        }
    }

    public void g(Context context)
    {
        if (b != null)
        {
            b.g(context);
        }
    }
}
