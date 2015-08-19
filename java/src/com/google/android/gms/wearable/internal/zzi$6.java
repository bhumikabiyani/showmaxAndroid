// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Asset;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzi, zzbd

class nt extends zzg
{

    final zzi zzaFW;
    final Asset zzaFX;

    protected Result createFailedResult(Status status)
    {
        return zzaS(status);
    }

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzbd)a);
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zza(this, zzaFX);
    }

    protected com.google.android.gms.wearable.i.GetFdForAssetResult zzaS(Status status)
    {
        return new d(status, null);
    }

    nt(zzi zzi1, GoogleApiClient googleapiclient, Asset asset)
    {
        zzaFW = zzi1;
        zzaFX = asset;
        super(googleapiclient);
    }
}
