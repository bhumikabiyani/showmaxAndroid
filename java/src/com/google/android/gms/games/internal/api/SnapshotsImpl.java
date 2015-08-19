// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.Snapshots;

public final class SnapshotsImpl
    implements Snapshots
{
    private static abstract class CommitImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzan(status);
        }

        public com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult zzan(Status status)
        {
            return new com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult(this, status) {

                final Status zzGT;
                final CommitImpl zzahr;

                public SnapshotMetadata getSnapshotMetadata()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzahr = commitimpl;
                zzGT = status;
                super();
            }
            };
        }

        private CommitImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class DeleteImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzao(status);
        }

        public com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult zzao(Status status)
        {
            return new com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult(this, status) {

                final Status zzGT;
                final DeleteImpl zzahs;

                public String getSnapshotId()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzahs = deleteimpl;
                zzGT = status;
                super();
            }
            };
        }

        private DeleteImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class LoadImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzap(status);
        }

        public com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult zzap(Status status)
        {
            return new com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult(this, status) {

                final Status zzGT;
                final LoadImpl zzaht;

                public SnapshotMetadataBuffer getSnapshots()
                {
                    return new SnapshotMetadataBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzaht = loadimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class OpenImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzaq(status);
        }

        public com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult zzaq(Status status)
        {
            return new com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult(this, status) {

                final Status zzGT;
                final OpenImpl zzahu;

                public String getConflictId()
                {
                    return null;
                }

                public Snapshot getConflictingSnapshot()
                {
                    return null;
                }

                public SnapshotContents getResolutionSnapshotContents()
                {
                    return null;
                }

                public Snapshot getSnapshot()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzahu = openimpl;
                zzGT = status;
                super();
            }
            };
        }

        private OpenImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public SnapshotsImpl()
    {
    }

    public PendingResult commitAndClose(GoogleApiClient googleapiclient, Snapshot snapshot, SnapshotMetadataChange snapshotmetadatachange)
    {
        return googleapiclient.zzb(new CommitImpl(googleapiclient, snapshot, snapshotmetadatachange) {

            final SnapshotsImpl zzahh;
            final Snapshot zzahl;
            final SnapshotMetadataChange zzahm;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzahl, zzahm);
            }

            
            {
                zzahh = SnapshotsImpl.this;
                zzahl = snapshot;
                zzahm = snapshotmetadatachange;
                super(googleapiclient);
            }
        });
    }

    public PendingResult delete(GoogleApiClient googleapiclient, SnapshotMetadata snapshotmetadata)
    {
        return googleapiclient.zzb(new DeleteImpl(googleapiclient, snapshotmetadata) {

            final SnapshotsImpl zzahh;
            final SnapshotMetadata zzahn;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzi(this, zzahn.getSnapshotId());
            }

            
            {
                zzahh = SnapshotsImpl.this;
                zzahn = snapshotmetadata;
                super(googleapiclient);
            }
        });
    }

    public void discardAndClose(GoogleApiClient googleapiclient, Snapshot snapshot)
    {
        Games.zzd(googleapiclient).zza(snapshot);
    }

    public int getMaxCoverImageSize(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznK();
    }

    public int getMaxDataSize(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznJ();
    }

    public Intent getSelectSnapshotIntent(GoogleApiClient googleapiclient, String s, boolean flag, boolean flag1, int i)
    {
        return Games.zzd(googleapiclient).zza(s, flag, flag1, i);
    }

    public SnapshotMetadata getSnapshotFromBundle(Bundle bundle)
    {
        if (bundle == null || !bundle.containsKey("com.google.android.gms.games.SNAPSHOT_METADATA"))
        {
            return null;
        } else
        {
            return (SnapshotMetadata)bundle.getParcelable("com.google.android.gms.games.SNAPSHOT_METADATA");
        }
    }

    public PendingResult load(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new LoadImpl(googleapiclient, flag) {

            final boolean zzafy;
            final SnapshotsImpl zzahh;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zze(this, zzafy);
            }

            
            {
                zzahh = SnapshotsImpl.this;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult open(GoogleApiClient googleapiclient, SnapshotMetadata snapshotmetadata)
    {
        return open(googleapiclient, snapshotmetadata.getUniqueName(), false);
    }

    public PendingResult open(GoogleApiClient googleapiclient, SnapshotMetadata snapshotmetadata, int i)
    {
        return open(googleapiclient, snapshotmetadata.getUniqueName(), false, i);
    }

    public PendingResult open(GoogleApiClient googleapiclient, String s, boolean flag)
    {
        return open(googleapiclient, s, flag, -1);
    }

    public PendingResult open(GoogleApiClient googleapiclient, String s, boolean flag, int i)
    {
        return googleapiclient.zzb(new OpenImpl(googleapiclient, s, flag, i) {

            final SnapshotsImpl zzahh;
            final String zzahi;
            final boolean zzahj;
            final int zzahk;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzahi, zzahj, zzahk);
            }

            
            {
                zzahh = SnapshotsImpl.this;
                zzahi = s;
                zzahj = flag;
                zzahk = i;
                super(googleapiclient);
            }
        });
    }

    public PendingResult resolveConflict(GoogleApiClient googleapiclient, String s, Snapshot snapshot)
    {
        SnapshotMetadata snapshotmetadata = snapshot.getMetadata();
        SnapshotMetadataChange snapshotmetadatachange = (new com.google.android.gms.games.snapshot.SnapshotMetadataChange.Builder()).fromMetadata(snapshotmetadata).build();
        return resolveConflict(googleapiclient, s, snapshotmetadata.getSnapshotId(), snapshotmetadatachange, snapshot.getSnapshotContents());
    }

    public PendingResult resolveConflict(GoogleApiClient googleapiclient, String s, String s1, SnapshotMetadataChange snapshotmetadatachange, SnapshotContents snapshotcontents)
    {
        return googleapiclient.zzb(new OpenImpl(googleapiclient, s, s1, snapshotmetadatachange, snapshotcontents) {

            final SnapshotsImpl zzahh;
            final SnapshotMetadataChange zzahm;
            final String zzaho;
            final String zzahp;
            final SnapshotContents zzahq;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzaho, zzahp, zzahm, zzahq);
            }

            
            {
                zzahh = SnapshotsImpl.this;
                zzaho = s;
                zzahp = s1;
                zzahm = snapshotmetadatachange;
                zzahq = snapshotcontents;
                super(googleapiclient);
            }
        });
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/SnapshotsImpl$6

/* anonymous class */
    class _cls6 extends LoadImpl
    {

        final String zzafA;
        final String zzafB;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzc(this, zzafA, zzafB, zzafy);
        }
    }

}
