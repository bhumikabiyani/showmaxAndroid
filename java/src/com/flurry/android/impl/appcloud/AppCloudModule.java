// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.impl.appcloud;

import android.content.Context;
import com.flurry.android.monolithic.sdk.impl.fl;
import com.flurry.android.monolithic.sdk.impl.go;
import com.flurry.android.monolithic.sdk.impl.hd;
import com.flurry.android.monolithic.sdk.impl.ik;
import com.flurry.android.monolithic.sdk.impl.jb;
import com.flurry.android.monolithic.sdk.impl.jc;

public class AppCloudModule
    implements ik, jb
{

    static int a = 0;
    static int b = 5;
    private static final String e = com/flurry/android/impl/appcloud/AppCloudModule.getSimpleName();
    private static AppCloudModule f;
    String c;
    volatile boolean d;
    private final hd g = new hd();

    private AppCloudModule()
    {
        jc.a().a(this);
    }

    public static boolean c()
    {
        return go.d().contains("localhost");
    }

    public static AppCloudModule getInstance()
    {
        com/flurry/android/impl/appcloud/AppCloudModule;
        JVM INSTR monitorenter ;
        AppCloudModule appcloudmodule;
        if (f == null)
        {
            f = new AppCloudModule();
        }
        appcloudmodule = f;
        com/flurry/android/impl/appcloud/AppCloudModule;
        JVM INSTR monitorexit ;
        return appcloudmodule;
        Exception exception;
        exception;
        throw exception;
    }

    public void a(Context context)
    {
        if (g != null)
        {
            g.b();
        }
    }

    public void a(Context context, fl fl1)
    {
        jc.a().b();
        if (!d)
        {
            c = fl1.a;
            d = true;
        }
        go.a(c);
    }

    public boolean a()
    {
        return d;
    }

    public hd b()
    {
        return g;
    }

    public void b(Context context)
    {
        if (g != null)
        {
            g.c();
        }
    }

    public void b(boolean flag)
    {
    }

    public boolean d()
    {
        if (c())
        {
            return true;
        } else
        {
            return e();
        }
    }

    public boolean e()
    {
        return jc.a().c();
    }

}
