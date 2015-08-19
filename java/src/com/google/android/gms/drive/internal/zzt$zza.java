// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.zze;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzt

private static class zzTW
    implements com.google.android.gms.drive.e.DownloadProgressListener
{

    private final zze zzTW;

    public void onProgress(long l, long l1)
    {
        zzTW.zza(new com.google.android.gms.common.api.zze.zzb(l, l1) {

            final long zzTX;
            final long zzTY;
            final zzt.zza zzTZ;

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
                zzTZ = zzt.zza.this;
                zzTX = l;
                zzTY = l1;
                super();
            }
        });
    }

    public _cls1.zzTY(zze zze1)
    {
        zzTW = zze1;
    }
}
