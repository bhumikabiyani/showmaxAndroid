// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class EventsImpl
    implements Events
{
    private static abstract class LoadImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzN(status);
        }

        public com.google.android.gms.games.event.Events.LoadEventsResult zzN(Status status)
        {
            return new com.google.android.gms.games.event.Events.LoadEventsResult(this, status) {

                final Status zzGT;
                final LoadImpl zzafP;

                public EventBuffer getEvents()
                {
                    return new EventBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzafP = loadimpl;
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

    private static abstract class UpdateImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return new Result(this, status) {

                final Status zzGT;
                final UpdateImpl zzafQ;

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzafQ = updateimpl;
                zzGT = status;
                super();
            }
            };
        }

        private UpdateImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public EventsImpl()
    {
    }

    public void increment(GoogleApiClient googleapiclient, String s, int i)
    {
        GamesClientImpl gamesclientimpl = Games.zzc(googleapiclient, false);
        if (gamesclientimpl == null)
        {
            return;
        }
        if (gamesclientimpl.isConnected())
        {
            gamesclientimpl.zzp(s, i);
            return;
        } else
        {
            googleapiclient.zzb(new UpdateImpl(googleapiclient, s, i) {

                final EventsImpl zzafM;
                final String zzafN;
                final int zzafO;

                public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((GamesClientImpl)zza1);
                }

                public void zza(GamesClientImpl gamesclientimpl1)
                {
                    gamesclientimpl1.zzp(zzafN, zzafO);
                }

            
            {
                zzafM = EventsImpl.this;
                zzafN = s;
                zzafO = i;
                super(googleapiclient);
            }
            });
            return;
        }
    }

    public PendingResult load(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new LoadImpl(googleapiclient, flag) {

            final EventsImpl zzafM;
            final boolean zzafy;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzd(this, zzafy);
            }

            
            {
                zzafM = EventsImpl.this;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public transient PendingResult loadByIds(GoogleApiClient googleapiclient, boolean flag, String as[])
    {
        return googleapiclient.zza(new LoadImpl(googleapiclient, flag, as) {

            final String zzafL[];
            final EventsImpl zzafM;
            final boolean zzafy;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafy, zzafL);
            }

            
            {
                zzafM = EventsImpl.this;
                zzafy = flag;
                zzafL = as;
                super(googleapiclient);
            }
        });
    }
}
