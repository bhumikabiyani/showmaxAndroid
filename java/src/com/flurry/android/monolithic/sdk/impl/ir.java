// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, ja

public class ir
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ir.getSimpleName();
    private static String b;
    private static String c;

    public ir()
    {
    }

    public static String a()
    {
        if (!TextUtils.isEmpty(b))
        {
            return b;
        }
        if (!TextUtils.isEmpty(c))
        {
            return c;
        } else
        {
            c = b();
            return c;
        }
    }

    public static void a(String s)
    {
        b = s;
    }

    private static String b()
    {
        Object obj;
        obj = ia.a().b();
        obj = ((Context) (obj)).getPackageManager().getPackageInfo(((Context) (obj)).getPackageName(), 0);
        if (((PackageInfo) (obj)).versionName != null)
        {
            return ((PackageInfo) (obj)).versionName;
        }
        if (((PackageInfo) (obj)).versionCode == 0)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        obj = Integer.toString(((PackageInfo) (obj)).versionCode);
        return ((String) (obj));
        Throwable throwable;
        throwable;
        ja.a(6, a, "", throwable);
        return "Unknown";
    }

}
