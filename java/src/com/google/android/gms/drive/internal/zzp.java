// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.query.Query;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, zzv, zzt, zzq, 
//            zzc, OnDriveIdResponse, zzm, OnMetadataResponse, 
//            zzs, OnContentsResponse, OnListEntriesResponse, QueryRequest, 
//            zzag, CreateContentsRequest, GetMetadataRequest, zzbl

public class zzp
    implements DriveApi
{
    static class zza
        implements com.google.android.gms.drive.DriveApi.DriveContentsResult
    {

        private final Status zzHb;
        private final DriveContents zzSa;

        public DriveContents getDriveContents()
        {
            return zzSa;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zza(Status status, DriveContents drivecontents)
        {
            zzHb = status;
            zzSa = drivecontents;
        }
    }

    static abstract class zzb extends zzq
    {

        public Result createFailedResult(Status status)
        {
            return zzn(status);
        }

        public com.google.android.gms.drive.DriveApi.DriveContentsResult zzn(Status status)
        {
            return new zza(status, null);
        }

        zzb(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static class zzc extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnDriveIdResponse ondriveidresponse)
            throws RemoteException
        {
            zzHa.zzd(new zzd(Status.zzNo, ondriveidresponse.getDriveId()));
        }

        public void zza(OnMetadataResponse onmetadataresponse)
            throws RemoteException
        {
            zzHa.zzd(new zzd(Status.zzNo, (new zzm(onmetadataresponse.zzkU())).getDriveId()));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zzd(status, null));
        }

        public zzc(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzd
        implements com.google.android.gms.drive.DriveApi.DriveIdResult
    {

        private final Status zzHb;
        private final DriveId zzRX;

        public DriveId getDriveId()
        {
            return zzRX;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzd(Status status, DriveId driveid)
        {
            zzHb = status;
            zzRX = driveid;
        }
    }

    static abstract class zze extends zzq
    {

        public Result createFailedResult(Status status)
        {
            return zzo(status);
        }

        public com.google.android.gms.drive.DriveApi.DriveIdResult zzo(Status status)
        {
            return new zzd(status, null);
        }

        zze(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    static class zzf
        implements com.google.android.gms.drive.DriveApi.MetadataBufferResult
    {

        private final Status zzHb;
        private final MetadataBuffer zzTA;
        private final boolean zzTB;

        public MetadataBuffer getMetadataBuffer()
        {
            return zzTA;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzf(Status status, MetadataBuffer metadatabuffer, boolean flag)
        {
            zzHb = status;
            zzTA = metadatabuffer;
            zzTB = flag;
        }
    }

    static abstract class zzg extends zzq
    {

        public Result createFailedResult(Status status)
        {
            return zzp(status);
        }

        public com.google.android.gms.drive.DriveApi.MetadataBufferResult zzp(Status status)
        {
            return new zzf(status, null, false);
        }

        zzg(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    private static class zzh extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnContentsResponse oncontentsresponse)
            throws RemoteException
        {
            zzHa.zzd(new zza(Status.zzNo, new zzs(oncontentsresponse.zzkL())));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zza(status, null));
        }

        public zzh(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzi extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnListEntriesResponse onlistentriesresponse)
            throws RemoteException
        {
            MetadataBuffer metadatabuffer = new MetadataBuffer(onlistentriesresponse.zzkR());
            zzHa.zzd(new zzf(Status.zzNo, metadatabuffer, onlistentriesresponse.zzkS()));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zzf(status, null, false));
        }

        public zzi(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    static class zzj extends zzq.zza
    {

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((zzr)zza1);
        }

        protected void zza(zzr zzr1)
        {
        }

        zzj(GoogleApiClient googleapiclient, Status status)
        {
            super(googleapiclient);
            setResult(status);
        }
    }


    public zzp()
    {
    }

    public PendingResult cancelPendingActions(GoogleApiClient googleapiclient, List list)
    {
        return ((zzr)googleapiclient.zza(Drive.zzGR)).cancelPendingActions(googleapiclient, list);
    }

    public PendingResult fetchDriveId(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.zza(new zze(googleapiclient, s) {

            final zzp zzTx;
            final String zzTz;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new GetMetadataRequest(DriveId.zzbu(zzTz), false), new zzc(this));
            }

            
            {
                zzTx = zzp.this;
                zzTz = s;
                super(googleapiclient);
            }
        });
    }

    public DriveFolder getAppFolder(GoogleApiClient googleapiclient)
    {
        if (!googleapiclient.isConnected())
        {
            throw new IllegalStateException("Client must be connected");
        }
        googleapiclient = ((zzr)googleapiclient.zza(Drive.zzGR)).zzkH();
        if (googleapiclient != null)
        {
            return new zzv(googleapiclient);
        } else
        {
            return null;
        }
    }

    public DriveFile getFile(GoogleApiClient googleapiclient, DriveId driveid)
    {
        if (driveid == null)
        {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (!googleapiclient.isConnected())
        {
            throw new IllegalStateException("Client must be connected");
        } else
        {
            return new zzt(driveid);
        }
    }

    public DriveFolder getFolder(GoogleApiClient googleapiclient, DriveId driveid)
    {
        if (driveid == null)
        {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (!googleapiclient.isConnected())
        {
            throw new IllegalStateException("Client must be connected");
        } else
        {
            return new zzv(driveid);
        }
    }

    public DriveFolder getRootFolder(GoogleApiClient googleapiclient)
    {
        if (!googleapiclient.isConnected())
        {
            throw new IllegalStateException("Client must be connected");
        } else
        {
            return new zzv(((zzr)googleapiclient.zza(Drive.zzGR)).zzkG());
        }
    }

    public CreateFileActivityBuilder newCreateFileActivityBuilder()
    {
        return new CreateFileActivityBuilder();
    }

    public PendingResult newDriveContents(GoogleApiClient googleapiclient)
    {
        return zza(googleapiclient, 0x20000000);
    }

    public OpenFileActivityBuilder newOpenFileActivityBuilder()
    {
        return new OpenFileActivityBuilder();
    }

    public PendingResult query(GoogleApiClient googleapiclient, Query query1)
    {
        if (query1 == null)
        {
            throw new IllegalArgumentException("Query must be provided.");
        } else
        {
            return googleapiclient.zza(new zzg(googleapiclient, query1) {

                final Query zzTw;
                final zzp zzTx;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new QueryRequest(zzTw), new zzi(this));
                }

            
            {
                zzTx = zzp.this;
                zzTw = query1;
                super(googleapiclient);
            }
            });
        }
    }

    public PendingResult requestSync(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zzb(new zzq.zza(googleapiclient) {

            final zzp zzTx;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new zzbl(this));
            }

            
            {
                zzTx = zzp.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult zza(GoogleApiClient googleapiclient, int i)
    {
        return googleapiclient.zza(new zzb(googleapiclient, i) {

            final zzp zzTx;
            final int zzTy;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new CreateContentsRequest(zzTy), new zzh(this));
            }

            
            {
                zzTx = zzp.this;
                zzTy = i;
                super(googleapiclient);
            }
        });
    }
}
