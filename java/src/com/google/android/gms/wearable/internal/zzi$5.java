// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzi, zzbd

class nt extends zzg
{

    final zzi zzaFW;
    final Uri zzatx;

    protected Result createFailedResult(Status status)
    {
        return zzaR(status);
    }

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzbd)a);
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zzc(this, zzatx);
    }

    protected com.google.android.gms.wearable.i.DeleteDataItemsResult zzaR(Status status)
    {
        return new c(status, 0);
    }

    nt(zzi zzi1, GoogleApiClient googleapiclient, Uri uri)
    {
        zzaFW = zzi1;
        zzatx = uri;
        super(googleapiclient);
    }
}
