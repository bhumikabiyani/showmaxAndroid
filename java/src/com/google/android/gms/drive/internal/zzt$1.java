// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzt, zzr, OpenContentsRequest, zzbe, 
//            zzag

class lient extends b
{

    final com.google.android.gms.drive.ile.DownloadProgressListener zzTU;
    final zzt zzTV;
    final int zzTy;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new OpenContentsRequest(zzTV.getDriveId(), zzTy, 0), new zzbe(this, zzTU));
    }

    lient(zzt zzt1, GoogleApiClient googleapiclient, int i, com.google.android.gms.drive.ile.DownloadProgressListener downloadprogresslistener)
    {
        zzTV = zzt1;
        zzTy = i;
        zzTU = downloadprogresslistener;
        super(googleapiclient);
    }
}
