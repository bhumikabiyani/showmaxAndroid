// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzi, zzbd

private static final class ner extends zzg
{

    private com.google.android.gms.wearable.DataListener zzaGa;
    private IntentFilter zzaGb[];

    public Result createFailedResult(Status status)
    {
        return zzb(status);
    }

    protected volatile void zza(com.google.android.gms.common.api.zi.zza zza1)
        throws RemoteException
    {
        zza((zzbd)zza1);
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zza(this, zzaGa, zzaGb);
        zzaGa = null;
        zzaGb = null;
    }

    public Status zzb(Status status)
    {
        zzaGa = null;
        zzaGb = null;
        return status;
    }

    private (GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataListener datalistener, IntentFilter aintentfilter[])
    {
        super(googleapiclient);
        zzaGa = datalistener;
        zzaGb = aintentfilter;
    }

    ner(GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataListener datalistener, IntentFilter aintentfilter[], ner ner)
    {
        this(googleapiclient, datalistener, aintentfilter);
    }
}
