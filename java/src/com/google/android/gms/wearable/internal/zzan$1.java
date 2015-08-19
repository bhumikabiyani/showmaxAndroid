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

    protected Result createFailedResult(Status status)
    {
        return zzaU(status);
    }

    protected volatile void zza(com.google.android.gms.common.api. )
        throws RemoteException
    {
        zza((zzbd));
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zzn(this);
    }

    protected com.google.android.gms.wearable..GetLocalNodeResult zzaU(Status status)
    {
        return new c(status, null);
    }

    t(zzan zzan1, GoogleApiClient googleapiclient)
    {
        zzaGx = zzan1;
        super(googleapiclient);
    }
}
