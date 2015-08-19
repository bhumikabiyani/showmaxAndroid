// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Looper;
import android.util.DisplayMetrics;

public class ia
{

    private static ia a;
    private final Context b;
    private final Handler c = new Handler(Looper.getMainLooper());

    private ia(Context context)
    {
        b = context.getApplicationContext();
    }

    public static ia a()
    {
        return a;
    }

    public static void a(Context context)
    {
        com/flurry/android/monolithic/sdk/impl/ia;
        JVM INSTR monitorenter ;
        ia ia1 = a;
        if (ia1 == null) goto _L2; else goto _L1
_L1:
        com/flurry/android/monolithic/sdk/impl/ia;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        throw new IllegalArgumentException("Context cannot be null");
        context;
        com/flurry/android/monolithic/sdk/impl/ia;
        JVM INSTR monitorexit ;
        throw context;
        a = new ia(context);
          goto _L1
    }

    public void a(Runnable runnable)
    {
        if (runnable == null)
        {
            return;
        } else
        {
            c.post(runnable);
            return;
        }
    }

    public Context b()
    {
        return b;
    }

    public PackageManager c()
    {
        return b.getPackageManager();
    }

    public DisplayMetrics d()
    {
        return b.getResources().getDisplayMetrics();
    }
}
