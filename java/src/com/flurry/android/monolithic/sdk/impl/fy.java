// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, go, ja, ft

public class fy
{

    public static void a()
    {
    }

    public static void a(String s)
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        Context context = ia.a().b();
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        editor.putString("flurry_last_user_id", s);
        editor.commit();
        if (!TextUtils.isEmpty(s))
        {
            go.a(context, s);
        }
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static void a(String s, String s1, String s2)
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        if (!TextUtils.isEmpty(s))
        {
            editor.putString("flurry_last_user_name", s);
        }
        if (!TextUtils.isEmpty(s))
        {
            editor.putString("flurry_last_user_email", s1);
        }
        if (!TextUtils.isEmpty(s2))
        {
            editor.putString("flurry_last_user_session", s2);
        }
        editor.commit();
        ja.a(4, "AppCloudUserHelper", (new StringBuilder()).append("saveLastLoggedInUserData, (Name, Email, Token) = ( ").append(s).append(" , ").append(s1).append(" , ").append(s2).append(" )").toString());
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static void b()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        editor.putString("flurry_last_user_session", "");
        editor.commit();
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void b(String s)
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit();
        editor.putString("flurry_last_user_pass", s);
        editor.commit();
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return;
        s;
        throw s;
    }

    public static ft c()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        ft ft1;
        String s;
        ft1 = new ft();
        s = d();
        if (TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        ft1.b(s);
        s = e();
        if (!TextUtils.isEmpty(s))
        {
            ft1.e(s);
        }
        s = f();
        if (!TextUtils.isEmpty(s))
        {
            ft1.d(s);
        }
        ft1.f = g();
_L4:
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return ft1;
_L2:
        ft1 = null;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public static String d()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        String s = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_id", "");
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String e()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        String s = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_name", "");
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String f()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        String s = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_email", "");
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String g()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        String s = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_pass", "");
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String h()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        String s;
        s = ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).getString("flurry_last_user_session", "");
        ja.a(4, "AppCloudUserHelper", (new StringBuilder()).append("User Session = ").append(s).toString());
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static void i()
    {
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorenter ;
        ia.a().b().getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0).edit().clear().commit();
        com/flurry/android/monolithic/sdk/impl/fy;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }
}
