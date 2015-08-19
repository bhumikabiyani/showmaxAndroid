// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.app.Activity;
import net.hockeyapp.android.CrashManager;
import net.hockeyapp.android.Tracking;
import net.hockeyapp.android.UpdateManager;

public class MauHockeyApp
{

    public MauHockeyApp()
    {
    }

    public static void registerCrashManager(Activity activity, String s, boolean flag)
    {
        if (flag)
        {
            CrashManager.register(activity, s);
        }
    }

    public static void registerUpdateManager(Activity activity, String s, boolean flag)
    {
        if (flag)
        {
            UpdateManager.register(activity, s);
        }
    }

    public static void startUsage(Activity activity, boolean flag)
    {
        if (flag)
        {
            Tracking.startUsage(activity);
        }
    }

    public static void stopUsage(Activity activity, boolean flag)
    {
        if (flag)
        {
            Tracking.stopUsage(activity);
        }
    }
}
