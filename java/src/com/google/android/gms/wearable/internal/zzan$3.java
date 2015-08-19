// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzan, zzbd

class t extends zzg
{

    final zzan zzaGx;
    final com.google.android.gms.wearable..NodeListener zzaGy;

    public Result createFailedResult(Status status)
    {
        return zzb(status);
    }

    protected volatile void zza(com.google.android.gms.common.api. )
        throws RemoteException
    {
        zza((zzbd));
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zzb(this, zzaGy);
    }

    public Status zzb(Status status)
    {
        return status;
    }

    t(zzan zzan1, GoogleApiClient googleapiclient, com.google.android.gms.wearable..NodeListener nodelistener)
    {
        zzaGx = zzan1;
        zzaGy = nodelistener;
        super(googleapiclient);
    }
}
