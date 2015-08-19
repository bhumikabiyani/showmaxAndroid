// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.service;

import android.app.AppOpsManager;
import android.app.Service;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zznh;
import com.google.android.gms.internal.zznv;
import com.google.android.gms.internal.zzok;
import com.google.android.gms.internal.zzom;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.service:
//            FitnessSensorServiceRequest

public abstract class FitnessSensorService extends Service
{
    private static class zza extends com.google.android.gms.internal.zzoo.zza
    {

        private final FitnessSensorService zzabW;

        public void zza(FitnessSensorServiceRequest fitnesssensorservicerequest, zznv zznv1)
            throws RemoteException
        {
            zzabW.zzmv();
            if (zzabW.onRegister(fitnesssensorservicerequest))
            {
                zznv1.zzi(Status.zzNo);
                return;
            } else
            {
                zznv1.zzi(new Status(13));
                return;
            }
        }

        public void zza(zzok zzok1, zznh zznh1)
            throws RemoteException
        {
            zzabW.zzmv();
            zznh1.zza(new DataSourcesResult(zzabW.onFindDataSources(zzok1.getDataTypes()), Status.zzNo));
        }

        public void zza(zzom zzom1, zznv zznv1)
            throws RemoteException
        {
            zzabW.zzmv();
            if (zzabW.onUnregister(zzom1.getDataSource()))
            {
                zznv1.zzi(Status.zzNo);
                return;
            } else
            {
                zznv1.zzi(new Status(13));
                return;
            }
        }

        private zza(FitnessSensorService fitnesssensorservice)
        {
            zzabW = fitnesssensorservice;
        }

    }


    public static final String SERVICE_INTERFACE = "com.google.android.gms.fitness.service.FitnessSensorService";
    private zza zzabV;

    public FitnessSensorService()
    {
    }

    public final IBinder onBind(Intent intent)
    {
        if ("com.google.android.gms.fitness.service.FitnessSensorService".equals(intent.getAction()))
        {
            if (Log.isLoggable("FitnessSensorService", 3))
            {
                Log.d("FitnessSensorService", (new StringBuilder()).append("Intent ").append(intent).append(" received by ").append(getClass().getName()).toString());
            }
            return zzabV.asBinder();
        } else
        {
            return null;
        }
    }

    public void onCreate()
    {
        super.onCreate();
        zzabV = new zza(this);
    }

    public abstract List onFindDataSources(List list);

    public abstract boolean onRegister(FitnessSensorServiceRequest fitnesssensorservicerequest);

    public abstract boolean onUnregister(DataSource datasource);

    protected void zzmv()
        throws SecurityException
    {
        int i = Binder.getCallingUid();
        if (!zzme.zzkj()) goto _L2; else goto _L1
_L1:
        ((AppOpsManager)getSystemService("appops")).checkPackage(i, "com.google.android.gms");
_L4:
        return;
_L2:
label0:
        {
            String as[] = getPackageManager().getPackagesForUid(i);
            if (as == null)
            {
                break label0;
            }
            int j = as.length;
            i = 0;
            do
            {
                if (i >= j)
                {
                    break label0;
                }
                if (as[i].equals("com.google.android.gms"))
                {
                    break;
                }
                i++;
            } while (true);
        }
        if (true) goto _L4; else goto _L3
_L3:
        throw new SecurityException("Unauthorized caller");
    }
}
