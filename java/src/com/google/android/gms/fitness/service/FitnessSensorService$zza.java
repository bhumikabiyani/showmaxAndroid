// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zznh;
import com.google.android.gms.internal.zznv;
import com.google.android.gms.internal.zzok;
import com.google.android.gms.internal.zzom;

// Referenced classes of package com.google.android.gms.fitness.service:
//            FitnessSensorService, FitnessSensorServiceRequest

private static class <init> extends com.google.android.gms.internal.ce.zza
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

    private st(FitnessSensorService fitnesssensorservice)
    {
        zzabW = fitnesssensorservice;
    }

    zzabW(FitnessSensorService fitnesssensorservice, zzabW zzabw)
    {
        this(fitnesssensorservice);
    }
}
