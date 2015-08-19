// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cx, j, ja, db

public final class ct
    implements cx
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/ct.getSimpleName();
    private static final SparseArray b = a();

    public ct()
    {
    }

    private static SparseArray a()
    {
        SparseArray sparsearray = new SparseArray();
        sparsearray.append(1, "mcc");
        sparsearray.append(2, "mnc");
        sparsearray.append(4, "locale");
        sparsearray.append(8, "touchscreen");
        sparsearray.append(16, "keyboard");
        sparsearray.append(32, "keyboardHidden");
        sparsearray.append(64, "navigation");
        sparsearray.append(128, "orientation");
        sparsearray.append(256, "screenLayout");
        sparsearray.append(512, "uiMode");
        sparsearray.append(1024, "screenSize");
        sparsearray.append(2048, "smallestScreenSize");
        return sparsearray;
    }

    private boolean a(String s, PackageManager packagemanager, String s1, ActivityInfo activityinfo)
    {
        if (TextUtils.isEmpty(s) || packagemanager == null || TextUtils.isEmpty(s1) || activityinfo == null || TextUtils.isEmpty(activityinfo.name))
        {
            return false;
        }
        packagemanager = j.a(packagemanager, new ComponentName(s1, activityinfo.name));
        if (packagemanager == null)
        {
            ja.b(a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml should include activity node with android:name=\"").append(activityinfo.name).append("\"").toString());
            return false;
        }
        ja.a(3, a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml has activity node with android:name=\"").append(activityinfo.name).append("\"").toString());
        int k = activityinfo.configChanges;
        boolean flag1;
        if (k != 0)
        {
            int l = j.a(packagemanager);
            packagemanager = b();
            int i = 0;
            boolean flag = true;
            do
            {
                flag1 = flag;
                if (i >= packagemanager.size())
                {
                    break;
                }
                int i1 = packagemanager.keyAt(i);
                flag1 = flag;
                if ((i1 & k) != 0)
                {
                    if ((i1 & l) == 0)
                    {
                        ja.b(a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml activity node with android:name=\"").append(activityinfo.name).append("\" should include android:configChanges value=\"").append((String)packagemanager.valueAt(i)).append("\"").toString());
                        flag1 = false;
                    } else
                    {
                        ja.a(3, a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml activity node with ").append("android:name=\"").append(activityinfo.name).append("\" has android:configChanges value=\"").append((String)packagemanager.valueAt(i)).append("\"").toString());
                        flag1 = flag;
                    }
                }
                i++;
                flag = flag1;
            } while (true);
        } else
        {
            flag1 = true;
        }
        return flag1;
    }

    private static SparseArray b()
    {
        return b;
    }

    public boolean a(Context context, db db1)
    {
        String s;
        Object obj;
        if (db1 != null)
        {
            if (!TextUtils.isEmpty(s = db1.a()) && (obj = db1.e()) != null)
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
                    if (!a(s, ((PackageManager) (db1)), ((String) (context)), (ActivityInfo)((Iterator) (obj)).next()))
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
