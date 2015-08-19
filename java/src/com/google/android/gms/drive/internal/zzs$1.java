// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.Contents;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzs, zzr, OpenContentsRequest, zzbe, 
//            zzag

class lient extends b
{

    final zzs zzTR;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new OpenContentsRequest(zzTR.getDriveId(), 0x20000000, zzs.zza(zzTR).getRequestId()), new zzbe(this, null));
    }

    lient(zzs zzs1, GoogleApiClient googleapiclient)
    {
        zzTR = zzs1;
        super(googleapiclient);
    }
}
