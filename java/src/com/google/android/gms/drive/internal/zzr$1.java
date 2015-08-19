// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, AddEventListenerRequest, zzbl, zzag, 
//            zzaa

class lient extends a
{

    final DriveId zzTI;
    final int zzTJ;
    final zzaa zzTK;
    final zzr zzTL;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new AddEventListenerRequest(zzTI, zzTJ), zzTK, null, new zzbl(this));
    }

    lient(zzr zzr1, GoogleApiClient googleapiclient, DriveId driveid, int i, zzaa zzaa)
    {
        zzTL = zzr1;
        zzTI = driveid;
        zzTJ = i;
        zzTK = zzaa;
        super(googleapiclient);
    }
}
