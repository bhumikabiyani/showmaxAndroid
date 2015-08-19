// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ia, jd, jb

public class jc extends BroadcastReceiver
{

    private static jc d;
    boolean a;
    private List b;
    private boolean c;

    public jc()
    {
        c = false;
        b = new LinkedList();
    }

    public static jc a()
    {
        com/flurry/android/monolithic/sdk/impl/jc;
        JVM INSTR monitorenter ;
        jc jc1;
        if (d == null)
        {
            d = new jc();
        }
        jc1 = d;
        com/flurry/android/monolithic/sdk/impl/jc;
        JVM INSTR monitorexit ;
        return jc1;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean a(Context context)
    {
        if (!c || context == null)
        {
            return true;
        }
        context = ((ConnectivityManager)context.getSystemService("connectivity")).getActiveNetworkInfo();
        return context != null && context.isConnected();
    }

    public void a(jb jb1)
    {
        this;
        JVM INSTR monitorenter ;
        if (jb1 != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        b.add(new WeakReference(jb1));
        if (true) goto _L1; else goto _L3
_L3:
        jb1;
        throw jb1;
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        Context context = ia.a().b();
        boolean flag;
        if (context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        c = flag;
        a = a(context);
        if (c)
        {
            d();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean c()
    {
        return a;
    }

    void d()
    {
        Context context = ia.a().b();
        a = a(context);
        context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
    }

    public jd e()
    {
        if (!c)
        {
            return jd.a;
        }
        Object obj = (ConnectivityManager)ia.a().b().getSystemService("connectivity");
        NetworkInfo networkinfo = ((ConnectivityManager) (obj)).getNetworkInfo(1);
        if (networkinfo != null && networkinfo.isConnected())
        {
            return jd.b;
        }
        obj = ((ConnectivityManager) (obj)).getNetworkInfo(0);
        if (obj != null && ((NetworkInfo) (obj)).isConnected())
        {
            return jd.c;
        } else
        {
            return jd.a;
        }
    }

    public void onReceive(Context context, Intent intent)
    {
        boolean flag = a(context);
        if (a != flag)
        {
            a = flag;
            context = (new LinkedList(b)).iterator();
            do
            {
                if (!context.hasNext())
                {
                    break;
                }
                intent = (jb)((WeakReference)context.next()).get();
                if (intent != null)
                {
                    intent.b(a);
                }
            } while (true);
        }
    }
}
