// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Process;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import com.google.android.gms.analytics.zzan;
import com.google.android.gms.common.internal.zzx;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

// Referenced classes of package com.google.android.gms.internal:
//            zzqw, zzqx, zzrc, zzrf, 
//            zzrg, zzqz, zzrb

public final class zzra
{
    private static class zza
        implements ThreadFactory
    {

        private static final AtomicInteger zzasg = new AtomicInteger();

        public Thread newThread(Runnable runnable)
        {
            return new zzb(runnable, (new StringBuilder()).append("measurement-").append(zzasg.incrementAndGet()).toString());
        }


        private zza()
        {
        }

    }

    private static class zzb extends Thread
    {

        public void run()
        {
            Process.setThreadPriority(10);
            super.run();
        }

        zzb(Runnable runnable, String s)
        {
            super(runnable, s);
        }
    }


    private static volatile zzra zzarZ;
    private final Context mContext;
    private final List zzasa = new CopyOnWriteArrayList();
    private final zzqw zzasb = new zzqw();
    private final ScheduledExecutorService zzasc = Executors.newSingleThreadScheduledExecutor(new zza());
    private volatile zzrf zzasd;

    zzra(Context context)
    {
        context = context.getApplicationContext();
        zzx.zzl(context);
        mContext = context;
    }

    static List zza(zzra zzra1)
    {
        return zzra1.zzasa;
    }

    private void zza(zzqx zzqx1)
    {
        zzx.zzbe("deliver should be called from worker thread");
        zzx.zzb(zzqx1.zzqS(), "Measurement must be submitted");
        Object obj = zzqx1.zzqR();
        if (!((List) (obj)).isEmpty())
        {
            HashSet hashset = new HashSet();
            obj = ((List) (obj)).iterator();
            while (((Iterator) (obj)).hasNext()) 
            {
                zzrc zzrc1 = (zzrc)((Iterator) (obj)).next();
                android.net.Uri uri = zzrc1.zzqP();
                if (!hashset.contains(uri))
                {
                    hashset.add(uri);
                    zzrc1.zza(zzqx1);
                }
            }
        }
    }

    static void zza(zzra zzra1, zzqx zzqx1)
    {
        zzra1.zza(zzqx1);
    }

    public static zzra zzaf(Context context)
    {
        zzx.zzl(context);
        if (zzarZ != null) goto _L2; else goto _L1
_L1:
        com/google/android/gms/internal/zzra;
        JVM INSTR monitorenter ;
        if (zzarZ == null)
        {
            zzarZ = new zzra(context);
        }
        com/google/android/gms/internal/zzra;
        JVM INSTR monitorexit ;
_L2:
        return zzarZ;
        context;
        com/google/android/gms/internal/zzra;
        JVM INSTR monitorexit ;
        throw context;
    }

    public Context getContext()
    {
        return mContext;
    }

    public Future zza(Callable callable)
    {
        zzx.zzl(callable);
        if (Thread.currentThread() instanceof zzb)
        {
            callable = new FutureTask(callable);
            callable.run();
            return callable;
        } else
        {
            return zzasc.submit(callable);
        }
    }

    public zzrf zzqU()
    {
        if (zzasd != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        if (zzasd != null) goto _L4; else goto _L3
_L3:
        String s1;
        zzrf zzrf1;
        PackageManager packagemanager;
        zzrf1 = new zzrf();
        packagemanager = mContext.getPackageManager();
        s1 = mContext.getPackageName();
        zzrf1.setAppId(s1);
        zzrf1.setAppInstallerId(packagemanager.getInstallerPackageName(s1));
        String s;
        Object obj3;
        obj3 = null;
        s = s1;
        PackageInfo packageinfo = packagemanager.getPackageInfo(mContext.getPackageName(), 0);
        Object obj;
        Object obj2;
        obj2 = obj3;
        obj = s1;
        if (packageinfo == null)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        s = s1;
        obj2 = packagemanager.getApplicationLabel(packageinfo.applicationInfo);
        obj = s1;
        s = s1;
        if (TextUtils.isEmpty(((CharSequence) (obj2))))
        {
            break MISSING_BLOCK_LABEL_126;
        }
        s = s1;
        obj = ((CharSequence) (obj2)).toString();
        s = ((String) (obj));
        obj2 = packageinfo.versionName;
_L5:
        zzrf1.setAppName(((String) (obj)));
        zzrf1.setAppVersion(((String) (obj2)));
        zzasd = zzrf1;
_L4:
        this;
        JVM INSTR monitorexit ;
_L2:
        return zzasd;
        Object obj1;
        obj1;
        Log.e("GA", (new StringBuilder()).append("Error retrieving package info: appName set to ").append(s).toString());
        obj2 = obj3;
        obj1 = s;
          goto _L5
        obj1;
        this;
        JVM INSTR monitorexit ;
        throw obj1;
    }

    public zzrg zzqV()
    {
        DisplayMetrics displaymetrics = mContext.getResources().getDisplayMetrics();
        zzrg zzrg1 = new zzrg();
        zzrg1.setLanguage(zzan.zza(Locale.getDefault()));
        zzrg1.zzgp(displaymetrics.widthPixels);
        zzrg1.zzgq(displaymetrics.heightPixels);
        return zzrg1;
    }

    // Unreferenced inner class com/google/android/gms/internal/zzra$1

/* anonymous class */
    class _cls1
        implements Runnable
    {

        final zzqx zzase;
        final zzra zzasf;

        public void run()
        {
            zzase.zzqT().zzb(zzase);
            for (Iterator iterator = zzra.zza(zzasf).iterator(); iterator.hasNext(); ((zzrb)iterator.next()).zzb(zzase)) { }
            zzra.zza(zzasf, zzase);
        }
    }

}
