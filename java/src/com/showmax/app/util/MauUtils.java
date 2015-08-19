// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.util;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import android.widget.TextView;

public class MauUtils
{

    public MauUtils()
    {
    }

    public static double getDevCoefficient(Activity activity)
    {
        DisplayMetrics displaymetrics = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        double d1 = Runtime.getRuntime().maxMemory();
        double d = d1;
        if (android.os.Build.VERSION.SDK_INT < 11)
        {
            d = d1 - 12582912D;
        }
        return d / 1024D / (double)displaymetrics.densityDpi;
    }

    public static boolean isNetworkAccessible(Context context)
    {
        context = (ConnectivityManager)context.getSystemService("connectivity");
        if (context.getActiveNetworkInfo() != null)
        {
            return context.getActiveNetworkInfo().isConnected();
        } else
        {
            return false;
        }
    }

    public static boolean isTablet(Context context)
    {
        if (context != null)
        {
            return context.getResources().getBoolean(0x7f08000c);
        } else
        {
            return false;
        }
    }

    public static String logDDInfo(Activity activity)
    {
        Object obj;
        Object obj1;
        Object obj2 = activity.getResources().getConfiguration();
        obj1 = new DisplayMetrics();
        activity.getWindowManager().getDefaultDisplay().getMetrics(((DisplayMetrics) (obj1)));
        double d = Math.sqrt(Math.pow((float)((DisplayMetrics) (obj1)).widthPixels / ((DisplayMetrics) (obj1)).xdpi, 2D) + Math.pow((float)((DisplayMetrics) (obj1)).heightPixels / ((DisplayMetrics) (obj1)).ydpi, 2D));
        obj = activity.getWindowManager().getDefaultDisplay();
        int i = ((Display) (obj)).getWidth();
        int j = ((Display) (obj)).getHeight();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("OS: ").append(android.os.Build.VERSION.RELEASE);
        StringBuilder stringbuilder1 = new StringBuilder();
        stringbuilder1.append("CPU: ").append(Build.CPU_ABI);
        long l = Runtime.getRuntime().maxMemory();
        StringBuilder stringbuilder2 = new StringBuilder();
        stringbuilder2.append("Mem: ").append(Formatter.formatFileSize(activity, l));
        StringBuilder stringbuilder3 = new StringBuilder();
        stringbuilder3.append("Model: ").append(Build.MODEL).append(", ");
        stringbuilder3.append(Build.BRAND).append("/").append(Build.MANUFACTURER);
        int k = ((Configuration) (obj2)).screenLayout & 0xf;
        String s;
        StringBuilder stringbuilder4;
        if (k == 1)
        {
            obj = (new StringBuilder()).append("Size: ").append("SMALL").toString();
        } else
        if (k == 2)
        {
            obj = (new StringBuilder()).append("Size: ").append("NORMAL").toString();
        } else
        if (k == 3)
        {
            obj = (new StringBuilder()).append("Size: ").append("LARGE").toString();
        } else
        if (k == 4)
        {
            obj = (new StringBuilder()).append("Size: ").append("XLARGE").toString();
        } else
        {
            obj = (new StringBuilder()).append("Size: ").append("?").toString();
        }
        s = ((String) (obj));
        if (android.os.Build.VERSION.SDK_INT >= 13)
        {
            s = (new StringBuilder()).append(((String) (obj))).append(".").append(((Configuration) (obj2)).smallestScreenWidthDp).toString();
        }
        obj = new StringBuilder("Dst: ");
        if (((DisplayMetrics) (obj1)).densityDpi > 120) goto _L2; else goto _L1
_L1:
        ((StringBuilder) (obj)).append("L, ");
_L4:
        ((StringBuilder) (obj)).append(((DisplayMetrics) (obj1)).densityDpi).append("dpi");
        obj1 = new StringBuilder();
        ((StringBuilder) (obj1)).append("Res: ").append(j).append("x").append(i).append("px");
        obj2 = new StringBuilder();
        ((StringBuilder) (obj2)).append("Size: ").append(String.format("%.2f", new Object[] {
            Double.valueOf(d)
        })).append(" in ");
        activity = String.format("%.0f KB/dpi", new Object[] {
            Double.valueOf(getDevCoefficient(activity))
        });
        stringbuilder4 = new StringBuilder();
        stringbuilder4.append(stringbuilder).append(" | ").append(stringbuilder1).append("\n");
        stringbuilder4.append(stringbuilder3).append("\n");
        stringbuilder4.append(stringbuilder2).append(" | ").append(activity).append("\n");
        stringbuilder4.append(s).append(" | ").append(((CharSequence) (obj2))).append("\n");
        stringbuilder4.append(((CharSequence) (obj1))).append(" | ").append(((CharSequence) (obj)));
        return stringbuilder4.toString();
_L2:
        if (((DisplayMetrics) (obj1)).densityDpi <= 160)
        {
            ((StringBuilder) (obj)).append("M, ");
        } else
        if (((DisplayMetrics) (obj1)).densityDpi <= 213)
        {
            ((StringBuilder) (obj)).append("TV, ");
        } else
        if (((DisplayMetrics) (obj1)).densityDpi <= 240)
        {
            ((StringBuilder) (obj)).append("H, ");
        } else
        if (((DisplayMetrics) (obj1)).densityDpi <= 320)
        {
            ((StringBuilder) (obj)).append("xH, ");
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void openEmailClient(Context context, String s)
    {
        context.startActivity(Intent.createChooser(new Intent("android.intent.action.SENDTO", Uri.fromParts("mailto", s, null)), "Send email..."));
    }

    public static void setVersionNumber(Activity activity, TextView textview)
    {
        if (textview != null && (textview instanceof TextView))
        {
            StringBuilder stringbuilder = new StringBuilder();
            com.showmax.app.Build build = com.showmax.app.Build.getInstance();
            boolean flag = build.DEBUG;
            stringbuilder.append(com.showmax.app.Build.getInstance().VERSION_NAME);
            if (flag)
            {
                stringbuilder.append("-");
                stringbuilder.append(build.ICFLIX_API_PROTOCOL);
                stringbuilder.append("-");
                stringbuilder.append(build.ICFLIX_API_ENVIRONMENT);
                stringbuilder.append("-");
                stringbuilder.append(build.ICFLIX_API_VERSION);
                stringbuilder.append("\n");
                stringbuilder.append(logDDInfo(activity));
            }
            textview.setText(stringbuilder.toString());
        }
    }
}
