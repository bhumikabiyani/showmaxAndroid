// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy, zzr, TrashResourceRequest, zzbl, 
//            zzag

class lient extends a
{

    final zzy zzUm;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new TrashResourceRequest(zzUm.zzRX), new zzbl(this));
    }

    lient(zzy zzy1, GoogleApiClient googleapiclient)
    {
        zzUm = zzy1;
        super(googleapiclient);
    }
}
