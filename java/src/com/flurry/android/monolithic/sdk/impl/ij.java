// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ik, ii

public final class ij
    implements ik
{

    private static ij a;
    private final ik b = b();

    public ij()
    {
    }

    public static ij a()
    {
        com/flurry/android/monolithic/sdk/impl/ij;
        JVM INSTR monitorenter ;
        ij ij1;
        if (a == null)
        {
            a = new ij();
        }
        ij1 = a;
        com/flurry/android/monolithic/sdk/impl/ij;
        JVM INSTR monitorexit ;
        return ij1;
        Exception exception;
        exception;
        throw exception;
    }

    private static ik b()
    {
        ik ik1 = null;
        if (c())
        {
            ik1 = ii.a();
        }
        return ik1;
    }

    private static boolean c()
    {
        return android.os.Build.VERSION.SDK_INT >= 8;
    }

    public void a(Context context)
    {
        if (b != null)
        {
            b.a(context);
        }
    }

    public void b(Context context)
    {
        if (b != null)
        {
            b.b(context);
        }
    }
}
