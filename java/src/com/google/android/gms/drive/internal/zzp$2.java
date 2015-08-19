// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzp, zzr, CreateContentsRequest, zzag

class lient extends b
{

    final zzp zzTx;
    final int zzTy;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new CreateContentsRequest(zzTy), new h(this));
    }

    lient(zzp zzp1, GoogleApiClient googleapiclient, int i)
    {
        zzTx = zzp1;
        zzTy = i;
        super(googleapiclient);
    }
}
