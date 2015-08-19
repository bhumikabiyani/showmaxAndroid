// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.text.TextUtils;
import com.flurry.android.impl.appcloud.AppCloudModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            gp, gq, ja, ia, 
//            gj, hi, gn, fy, 
//            gr, fl, eg, gl, 
//            gm

public class go
{

    static int a = 0;
    static int b = 5;
    private static String c = "appcloud.flurry.com";
    private static String d = "appcloud-node-stage.corp.flurry.com";
    private static final String e = com/flurry/android/monolithic/sdk/impl/go.getSimpleName();
    private static hi f = null;
    private static gn g = null;
    private static gj h = null;
    private static gl i = null;
    private static gm j = null;
    private static boolean k = true;
    private static String l;
    private static boolean m = false;
    private static AppCloudModule n = AppCloudModule.getInstance();

    public go()
    {
    }

    public static hi a()
    {
        return f;
    }

    public static Object a(gq gq1)
    {
        switch (gp.a[gq1.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return i;

        case 2: // '\002'
            return j;
        }
    }

    public static void a(Context context)
    {
        if (context != null)
        {
            break MISSING_BLOCK_LABEL_12;
        }
        ja.b(e, "Context passed to AppCLoudModule was null.");
        ia.a(context);
        b(context);
        h = new gj();
        f = new hi();
        g = new gn();
        fy.a();
        String s = fy.d();
        if (!TextUtils.isEmpty(s))
        {
            a(context, s);
        }
        return;
        context;
        ja.a(6, e, "", context);
        return;
    }

    public static void a(Context context, String s)
    {
        b(context, s);
        g.a();
    }

    public static void a(String s)
    {
        gr.a(s);
    }

    public static gn b()
    {
        return g;
    }

    private static void b(Context context)
    {
        if (!m)
        {
            if (!n.a())
            {
                ja.a(3, e, "Initializing Flurry AppCloud");
                fl fl1 = new fl();
                fl1.a = eg.a().f();
                AppCloudModule.getInstance().a(context, fl1);
                ja.a(3, e, "Flurry AppCloud initialized");
            }
            m = true;
        }
    }

    private static void b(Context context, String s)
    {
        i = new gl(context, s);
        j = new gm(context, s);
    }

    public static void b(String s)
    {
        l = s;
    }

    public static gj c()
    {
        return h;
    }

    public static String d()
    {
        if (!TextUtils.isEmpty(l))
        {
            return l;
        }
        if (k)
        {
            return c;
        } else
        {
            return d;
        }
    }

}
