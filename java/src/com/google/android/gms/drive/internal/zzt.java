// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy, zzr, OpenContentsRequest, zzbe, 
//            zzag

public class zzt extends zzy
    implements DriveFile
{
    private static class zza
        implements com.google.android.gms.drive.DriveFile.DownloadProgressListener
    {

        private final zze zzTW;

        public void onProgress(long l, long l1)
        {
            zzTW.zza(new com.google.android.gms.common.api.zze.zzb(this, l, l1) {

                final long zzTX;
                final long zzTY;
                final zza zzTZ;

                public void zza(com.google.android.gms.drive.DriveFile.DownloadProgressListener downloadprogresslistener)
                {
                    downloadprogresslistener.onProgress(zzTX, zzTY);
                }

                public void zze(Object obj)
                {
                    zza((com.google.android.gms.drive.DriveFile.DownloadProgressListener)obj);
                }

                public void zzhX()
                {
                }

            
            {
                zzTZ = zza1;
                zzTX = l;
                zzTY = l1;
                super();
            }
            });
        }

        public zza(zze zze1)
        {
            zzTW = zze1;
        }
    }


    public zzt(DriveId driveid)
    {
        super(driveid);
    }

    private static com.google.android.gms.drive.DriveFile.DownloadProgressListener zza(GoogleApiClient googleapiclient, com.google.android.gms.drive.DriveFile.DownloadProgressListener downloadprogresslistener)
    {
        if (downloadprogresslistener == null)
        {
            return null;
        } else
        {
            return new zza(googleapiclient.zzf(downloadprogresslistener));
        }
    }

    public PendingResult open(GoogleApiClient googleapiclient, int i, com.google.android.gms.drive.DriveFile.DownloadProgressListener downloadprogresslistener)
    {
        if (i != 0x10000000 && i != 0x20000000 && i != 0x30000000)
        {
            throw new IllegalArgumentException("Invalid mode provided.");
        } else
        {
            return googleapiclient.zza(new zzp.zzb(googleapiclient, i, zza(googleapiclient, downloadprogresslistener)) {

                final com.google.android.gms.drive.DriveFile.DownloadProgressListener zzTU;
                final zzt zzTV;
                final int zzTy;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new OpenContentsRequest(zzTV.getDriveId(), zzTy, 0), new zzbe(this, zzTU));
                }

            
            {
                zzTV = zzt.this;
                zzTy = i;
                zzTU = downloadprogresslistener;
                super(googleapiclient);
            }
            });
        }
    }
}
