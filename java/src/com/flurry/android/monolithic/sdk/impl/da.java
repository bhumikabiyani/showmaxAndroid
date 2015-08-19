// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cx, ja, db

public final class da
    implements cx
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/da.getSimpleName();

    public da()
    {
    }

    private boolean a(String s, PackageManager packagemanager, String s1, String s2)
    {
        if (TextUtils.isEmpty(s) || packagemanager == null || TextUtils.isEmpty(s1) || TextUtils.isEmpty(s2))
        {
            return false;
        }
        if (-1 == packagemanager.checkPermission(s2, s1))
        {
            ja.b(a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml should include uses-permission node with ").append("android:name=\"").append(s2).append("\"").toString());
            return false;
        } else
        {
            ja.a(3, a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml has uses-permission node with ").append("android:name=\"").append(s2).append("\"").toString());
            return true;
        }
    }

    public boolean a(Context context, db db1)
    {
        String s;
        Object obj;
        if (db1 != null)
        {
            if (!TextUtils.isEmpty(s = db1.a()) && (obj = db1.d()) != null)
            {
                db1 = context.getPackageManager();
                context = context.getPackageName();
                obj = ((List) (obj)).iterator();
                boolean flag = true;
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    if (!a(s, ((PackageManager) (db1)), ((String) (context)), (String)((Iterator) (obj)).next()))
                    {
                        flag = false;
                    }
                } while (true);
                return flag;
            }
        }
        return false;
    }

}
