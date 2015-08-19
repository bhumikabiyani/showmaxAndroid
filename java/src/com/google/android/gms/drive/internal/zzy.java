// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.DriveResource;
import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, zzc, OnListParentsResponse, zzm, 
//            OnMetadataResponse, zzq, GetMetadataRequest, zzag, 
//            ListParentsRequest, SetResourceParentsRequest, zzbl, UpdateMetadataRequest, 
//            TrashResourceRequest, UntrashResourceRequest

public class zzy
    implements DriveResource
{
    private static class zza extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnListParentsResponse onlistparentsresponse)
            throws RemoteException
        {
            onlistparentsresponse = new MetadataBuffer(onlistparentsresponse.zzkT());
            zzHa.zzd(new zzp.zzf(Status.zzNo, onlistparentsresponse, false));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zzp.zzf(status, null, false));
        }

        public zza(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzb extends com.google.android.gms.drive.internal.zzc
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(OnMetadataResponse onmetadataresponse)
            throws RemoteException
        {
            zzHa.zzd(new zzc(Status.zzNo, new zzm(onmetadataresponse.zzkU())));
        }

        public void zzm(Status status)
            throws RemoteException
        {
            zzHa.zzd(new zzc(status, null));
        }

        public zzb(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = zzb1;
        }
    }

    private static class zzc
        implements com.google.android.gms.drive.DriveResource.MetadataResult
    {

        private final Status zzHb;
        private final Metadata zzUo;

        public Metadata getMetadata()
        {
            return zzUo;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzc(Status status, Metadata metadata)
        {
            zzHb = status;
            zzUo = metadata;
        }
    }

    private abstract class zzd extends zzq
    {

        final zzy zzUm;

        public Result createFailedResult(Status status)
        {
            return zzt(status);
        }

        public com.google.android.gms.drive.DriveResource.MetadataResult zzt(Status status)
        {
            return new zzc(status, null);
        }

        private zzd(GoogleApiClient googleapiclient)
        {
            zzUm = zzy.this;
            super(googleapiclient);
        }

    }


    protected final DriveId zzRX;

    protected zzy(DriveId driveid)
    {
        zzRX = driveid;
    }

    private PendingResult zza(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new zzd(googleapiclient, flag) {

            final boolean zzUl;
            final zzy zzUm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new GetMetadataRequest(zzUm.zzRX, zzUl), new zzb(this));
            }

            
            {
                zzUm = zzy.this;
                zzUl = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult addChangeListener(GoogleApiClient googleapiclient, ChangeListener changelistener)
    {
        return ((zzr)googleapiclient.zza(Drive.zzGR)).zza(googleapiclient, zzRX, 1, changelistener);
    }

    public PendingResult addChangeSubscription(GoogleApiClient googleapiclient)
    {
        return ((zzr)googleapiclient.zza(Drive.zzGR)).zza(googleapiclient, zzRX, 1);
    }

    public DriveId getDriveId()
    {
        return zzRX;
    }

    public PendingResult getMetadata(GoogleApiClient googleapiclient)
    {
        return zza(googleapiclient, false);
    }

    public PendingResult listParents(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new zzp.zzg(googleapiclient) {

            final zzy zzUm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new ListParentsRequest(zzUm.zzRX), new zza(this));
            }

            
            {
                zzUm = zzy.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult removeChangeListener(GoogleApiClient googleapiclient, ChangeListener changelistener)
    {
        return ((zzr)googleapiclient.zza(Drive.zzGR)).zzb(googleapiclient, zzRX, 1, changelistener);
    }

    public PendingResult removeChangeSubscription(GoogleApiClient googleapiclient)
    {
        return ((zzr)googleapiclient.zza(Drive.zzGR)).zzb(googleapiclient, zzRX, 1);
    }

    public PendingResult setParents(GoogleApiClient googleapiclient, Set set)
    {
        if (set == null)
        {
            throw new IllegalArgumentException("ParentIds must be provided.");
        }
        if (set.isEmpty())
        {
            throw new IllegalArgumentException("ParentIds must contain at least one parent.");
        } else
        {
            return googleapiclient.zzb(new zzq.zza(googleapiclient, new ArrayList(set)) {

                final zzy zzUm;
                final List zzUn;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new SetResourceParentsRequest(zzUm.zzRX, zzUn), new zzbl(this));
                }

            
            {
                zzUm = zzy.this;
                zzUn = list;
                super(googleapiclient);
            }
            });
        }
    }

    public PendingResult trash(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zzb(new zzq.zza(googleapiclient) {

            final zzy zzUm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new TrashResourceRequest(zzUm.zzRX), new zzbl(this));
            }

            
            {
                zzUm = zzy.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult untrash(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zzb(new zzq.zza(googleapiclient) {

            final zzy zzUm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new UntrashResourceRequest(zzUm.zzRX), new zzbl(this));
            }

            
            {
                zzUm = zzy.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult updateMetadata(GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset)
    {
        if (metadatachangeset == null)
        {
            throw new IllegalArgumentException("ChangeSet must be provided.");
        } else
        {
            return googleapiclient.zzb(new zzd(googleapiclient, metadatachangeset) {

                final MetadataChangeSet zzUa;
                final zzy zzUm;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzUa.zzkx().setContext(zzr1.getContext());
                    zzr1.zzkF().zza(new UpdateMetadataRequest(zzUm.zzRX, zzUa.zzkx()), new zzb(this));
                }

            
            {
                zzUm = zzy.this;
                zzUa = metadatachangeset;
                super(googleapiclient);
            }
            });
        }
    }
}
