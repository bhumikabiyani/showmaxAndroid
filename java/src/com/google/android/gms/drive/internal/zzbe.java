// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzc, OnContentsResponse, zzs, OnDownloadProgressResponse

class zzbe extends zzc
{

    private final com.google.android.gms.common.api.zza.zzb zzHa;
    private final com.google.android.gms.drive.DriveFile.DownloadProgressListener zzVc;

    zzbe(com.google.android.gms.common.api.zza.zzb zzb, com.google.android.gms.drive.DriveFile.DownloadProgressListener downloadprogresslistener)
    {
        zzHa = zzb;
        zzVc = downloadprogresslistener;
    }

    public void zza(OnContentsResponse oncontentsresponse)
        throws RemoteException
    {
        Status status;
        if (oncontentsresponse.zzkM())
        {
            status = new Status(-1);
        } else
        {
            status = Status.zzNo;
        }
        zzHa.zzd(new zzp.zza(status, new zzs(oncontentsresponse.zzkL())));
    }

    public void zza(OnDownloadProgressResponse ondownloadprogressresponse)
        throws RemoteException
    {
        if (zzVc != null)
        {
            zzVc.onProgress(ondownloadprogressresponse.zzkO(), ondownloadprogressresponse.zzkP());
        }
    }

    public void zzm(Status status)
        throws RemoteException
    {
        zzHa.zzd(new zzp.zza(status, null));
    }
}
