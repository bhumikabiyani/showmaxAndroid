// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.app.Activity;
import android.content.ComponentName;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.SparseArray;
import android.util.SparseIntArray;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ja

public final class j
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/j.getSimpleName();
    private static final SparseArray b = c();

    public j()
    {
    }

    public static int a()
    {
        byte byte0 = 1;
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            byte0 = 7;
        }
        return byte0;
    }

    public static int a(ActivityInfo activityinfo)
    {
        int i;
        if (activityinfo == null)
        {
            i = 0;
        } else
        {
            int k = activityinfo.configChanges;
            i = k;
            if (activityinfo.applicationInfo.targetSdkVersion < 13)
            {
                return k | 0xc00;
            }
        }
        return i;
    }

    public static ActivityInfo a(Activity activity)
    {
        if (activity == null)
        {
            return null;
        } else
        {
            return a(activity.getPackageManager(), activity.getComponentName());
        }
    }

    public static ActivityInfo a(PackageManager packagemanager, ComponentName componentname)
    {
        if (packagemanager == null || componentname == null)
        {
            return null;
        }
        try
        {
            packagemanager = packagemanager.getActivityInfo(componentname, 0);
        }
        // Misplaced declaration of an exception variable
        catch (PackageManager packagemanager)
        {
            ja.a(5, a, (new StringBuilder()).append("cannot find info for activity: ").append(componentname).toString());
            return null;
        }
        return packagemanager;
    }

    public static void a(Activity activity, int i)
    {
        if (activity != null)
        {
            activity.setRequestedOrientation(i);
        }
    }

    public static boolean a(Activity activity, int i, boolean flag)
    {
        boolean flag1 = true;
        if (activity == null)
        {
            flag1 = false;
        } else
        {
            int k = i;
            if (!b(activity))
            {
                k = b(activity, i);
                if (-1 == k)
                {
                    ja.a(5, a, (new StringBuilder()).append("cannot set requested orientation without restarting activity, requestedOrientation = ").append(i).toString());
                    ja.b(a, (new StringBuilder()).append("cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: ").append(activity.getComponentName().getClassName()).toString());
                    return false;
                }
                flag = true;
            }
            activity.setRequestedOrientation(k);
            if (!flag)
            {
                activity.setRequestedOrientation(-1);
                return true;
            }
        }
        return flag1;
    }

    public static int b()
    {
        byte byte0 = 0;
        if (android.os.Build.VERSION.SDK_INT >= 9)
        {
            byte0 = 6;
        }
        return byte0;
    }

    public static int b(Activity activity, int i)
    {
        if (activity == null)
        {
            return -1;
        }
        int k = activity.getResources().getConfiguration().orientation;
        activity = (SparseIntArray)b.get(k);
        if (activity != null)
        {
            i = activity.get(i, -1);
        } else
        {
            i = -1;
        }
        return i;
    }

    public static boolean b(Activity activity)
    {
        for (int i = a(a(activity)); (i & 0x80) == 0 || (i & 0x400) == 0;)
        {
            return false;
        }

        return true;
    }

    private static SparseArray c()
    {
        SparseArray sparsearray = new SparseArray();
        sparsearray.put(1, d());
        sparsearray.put(2, e());
        return sparsearray;
    }

    private static SparseIntArray d()
    {
        int i = a();
        SparseIntArray sparseintarray = new SparseIntArray();
        sparseintarray.put(-1, i);
        sparseintarray.put(2, i);
        sparseintarray.put(3, i);
        sparseintarray.put(4, i);
        sparseintarray.put(1, 1);
        sparseintarray.put(5, 5);
        sparseintarray.put(7, 7);
        sparseintarray.put(9, 9);
        sparseintarray.put(10, 7);
        return sparseintarray;
    }

    private static SparseIntArray e()
    {
        int i = b();
        SparseIntArray sparseintarray = new SparseIntArray();
        sparseintarray.put(-1, i);
        sparseintarray.put(2, i);
        sparseintarray.put(3, i);
        sparseintarray.put(4, i);
        sparseintarray.put(0, 0);
        sparseintarray.put(5, 5);
        sparseintarray.put(6, 6);
        sparseintarray.put(8, 8);
        sparseintarray.put(10, 6);
        return sparseintarray;
    }

}
