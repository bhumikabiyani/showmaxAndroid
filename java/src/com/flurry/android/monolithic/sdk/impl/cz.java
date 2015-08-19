// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            cx, ja, db, il

public final class cz
    implements cx
{

    private static final String a = com/flurry/android/monolithic/sdk/impl/cz.getSimpleName();

    public cz()
    {
    }

    private boolean a(String s, String s1, Bundle bundle, String s2)
    {
        if (TextUtils.isEmpty(s) || TextUtils.isEmpty(s1) || bundle == null || TextUtils.isEmpty(s2))
        {
            return false;
        }
        bundle = bundle.getString(s2);
        if (TextUtils.isEmpty(bundle))
        {
            ja.b(a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml should include meta-data node with android:name=\"").append(s2).append("\" and not empty value for android:value").toString());
            return false;
        } else
        {
            ja.a(3, a, (new StringBuilder()).append(s).append(": package=\"").append(s1).append("\": AndroidManifest.xml has meta-data node with android:name=\"").append(s2).append("\" and android:value=\"").append(bundle).append("\"").toString());
            return true;
        }
    }

    public boolean a(Context context, db db1)
    {
        String s;
        Object obj;
        if (db1 != null)
        {
            if (!TextUtils.isEmpty(s = db1.a()) && (obj = db1.c()) != null)
            {
                db1 = il.e(context);
                context = context.getPackageName();
                obj = ((List) (obj)).iterator();
                boolean flag = true;
                do
                {
                    if (!((Iterator) (obj)).hasNext())
                    {
                        break;
                    }
                    if (!a(s, ((String) (context)), ((Bundle) (db1)), (String)((Iterator) (obj)).next()))
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
