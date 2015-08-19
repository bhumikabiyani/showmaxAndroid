// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.SearchableField;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy, zzs, zzp, zzc, 
//            zzt, OnDriveIdResponse, zzq, zzr, 
//            CreateFileRequest, zzag, CreateFolderRequest

public class zzv extends zzy
    implements DriveFolder
{
    private static class zza extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnDriveIdResponse ondriveidresponse)
            throws RemoteException
        {
            zzHa.zzd(new zzc(Status.zzNo, new zzt(ondriveidresponse.getDriveId())));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zzc(status, null));
        }

        public zza(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzb extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnDriveIdResponse ondriveidresponse)
            throws RemoteException
        {
            zzHa.zzd(new zze(Status.zzNo, new zzv(ondriveidresponse.getDriveId())));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zze(status, null));
        }

        public zzb(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzc
        implements com.google.android.gms.drive.DriveFolder.DriveFileResult
    {

        private final Status zzHb;
        private final DriveFile zzUf;

        public DriveFile getDriveFile()
        {
            return zzUf;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzc(Status status, DriveFile drivefile)
        {
            zzHb = status;
            zzUf = drivefile;
        }
    }

    static abstract class zzd extends zzq
    {

        public Result createFailedResult(Status status)
        {
            return zzq(status);
        }

        public com.google.android.gms.drive.DriveFolder.DriveFileResult zzq(Status status)
        {
            return new zzc(status, null);
        }

        zzd(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }

    private static class zze
        implements com.google.android.gms.drive.DriveFolder.DriveFolderResult
    {

        private final Status zzHb;
        private final DriveFolder zzUg;

        public DriveFolder getDriveFolder()
        {
            return zzUg;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zze(Status status, DriveFolder drivefolder)
        {
            zzHb = status;
            zzUg = drivefolder;
        }
    }

    static abstract class zzf extends zzq
    {

        public Result createFailedResult(Status status)
        {
            return zzr(status);
        }

        public com.google.android.gms.drive.DriveFolder.DriveFolderResult zzr(Status status)
        {
            return new zze(status, null);
        }

        zzf(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }
    }


    public zzv(DriveId driveid)
    {
        super(driveid);
    }

    private PendingResult zza(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, int i, int j, ExecutionOptions executionoptions)
    {
        ExecutionOptions.zza(googleapiclient, executionoptions);
        return googleapiclient.zzb(new zzd(googleapiclient, metadatachangeset, i, j, executionoptions) {

            final MetadataChangeSet zzUa;
            final int zzUb;
            final int zzUc;
            final ExecutionOptions zzUd;
            final zzv zzUe;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzUa.zzkx().setContext(zzr1.getContext());
                CreateFileRequest createfilerequest = new CreateFileRequest(zzUe.getDriveId(), zzUa.zzkx(), zzUb, zzUc, zzUd);
                zzr1.zzkF().zza(createfilerequest, new zza(this));
            }

            
            {
                zzUe = zzv.this;
                zzUa = metadatachangeset;
                zzUb = i;
                zzUc = j;
                zzUd = executionoptions;
                super(googleapiclient);
            }
        });
    }

    private PendingResult zza(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, DriveContents drivecontents, ExecutionOptions executionoptions)
    {
        int i;
        if (drivecontents != null)
        {
            if (!(drivecontents instanceof zzs))
            {
                throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
            }
            if (drivecontents.getDriveId() != null)
            {
                throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
            }
            if (drivecontents.zzks())
            {
                throw new IllegalArgumentException("DriveContents are already closed.");
            }
            i = drivecontents.zzkq().getRequestId();
            drivecontents.zzkr();
        } else
        {
            i = 1;
        }
        if (metadatachangeset == null)
        {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        if ("application/vnd.google-apps.folder".equals(metadatachangeset.getMimeType()))
        {
            throw new IllegalArgumentException("May not create folders (mimetype: application/vnd.google-apps.folder) using this method. Use DriveFolder.createFolder() instead.");
        } else
        {
            return zza(googleapiclient, metadatachangeset, i, 0, executionoptions);
        }
    }

    private Query zza(Query query)
    {
        com.google.android.gms.drive.query.Query.Builder builder = (new com.google.android.gms.drive.query.Query.Builder()).addFilter(Filters.in(SearchableField.PARENTS, getDriveId()));
        if (query != null)
        {
            if (query.getFilter() != null)
            {
                builder.addFilter(query.getFilter());
            }
            builder.setPageToken(query.getPageToken());
            builder.setSortOrder(query.getSortOrder());
        }
        return builder.build();
    }

    public PendingResult createFile(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, DriveContents drivecontents)
    {
        return createFile(googleapiclient, metadatachangeset, drivecontents, null);
    }

    public PendingResult createFile(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, DriveContents drivecontents, ExecutionOptions executionoptions)
    {
        ExecutionOptions executionoptions1 = executionoptions;
        if (executionoptions == null)
        {
            executionoptions1 = (new com.google.android.gms.drive.ExecutionOptions.Builder()).build();
        }
        if (executionoptions1.zzkv() != 0)
        {
            throw new IllegalStateException("May not set a conflict strategy for calls to createFile.");
        } else
        {
            return zza(googleapiclient, metadatachangeset, drivecontents, executionoptions1);
        }
    }

    public PendingResult createFolder(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset)
    {
        if (metadatachangeset == null)
        {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        if (metadatachangeset.getMimeType() != null && !metadatachangeset.getMimeType().equals("application/vnd.google-apps.folder"))
        {
            throw new IllegalArgumentException("The mimetype must be of type application/vnd.google-apps.folder");
        } else
        {
            return googleapiclient.zzb(new zzf(googleapiclient, metadatachangeset) {

                final MetadataChangeSet zzUa;
                final zzv zzUe;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzUa.zzkx().setContext(zzr1.getContext());
                    zzr1.zzkF().zza(new CreateFolderRequest(zzUe.getDriveId(), zzUa.zzkx()), new zzb(this));
                }

            
            {
                zzUe = zzv.this;
                zzUa = metadatachangeset;
                super(googleapiclient);
            }
            });
        }
    }

    public PendingResult listChildren(GoogleApiClient googleapiclient)
    {
        return queryChildren(googleapiclient, null);
    }

    public PendingResult queryChildren(GoogleApiClient googleapiclient, Query query)
    {
        return (new zzp()).query(googleapiclient, zza(query));
    }
}
