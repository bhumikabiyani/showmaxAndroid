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
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.GamesMetadata;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class GamesMetadataImpl
    implements GamesMetadata
{
    private static abstract class LoadExtendedGamesImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzO(status);
        }

        public com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult zzO(Status status)
        {
            return new com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult(this, status) {

                final Status zzGT;
                final LoadExtendedGamesImpl zzafY;

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzafY = loadextendedgamesimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadGameInstancesImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzP(status);
        }

        public com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult zzP(Status status)
        {
            return new com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult(this, status) {

                final Status zzGT;
                final LoadGameInstancesImpl zzafZ;

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzafZ = loadgameinstancesimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadGameSearchSuggestionsImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzQ(status);
        }

        public com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult zzQ(Status status)
        {
            return new com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult(this, status) {

                final Status zzGT;
                final LoadGameSearchSuggestionsImpl zzaga;

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzaga = loadgamesearchsuggestionsimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadGamesImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzR(status);
        }

        public com.google.android.gms.games.GamesMetadata.LoadGamesResult zzR(Status status)
        {
            return new com.google.android.gms.games.GamesMetadata.LoadGamesResult(this, status) {

                final Status zzGT;
                final LoadGamesImpl zzagb;

                public GameBuffer getGames()
                {
                    return new GameBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzagb = loadgamesimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadGamesImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public GamesMetadataImpl()
    {
    }

    public Game getCurrentGame(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zzns();
    }

    public PendingResult loadGame(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new LoadGamesImpl(googleapiclient) {

            final GamesMetadataImpl zzafR;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzf(this);
            }

            
            {
                zzafR = GamesMetadataImpl.this;
                super(googleapiclient);
            }
        });
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$10

/* anonymous class */
    class _cls10 extends LoadExtendedGamesImpl
    {

        final String zzafS;
        final int zzafT;
        final boolean zzafU;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafS, zzafT, false, true, false, zzafU);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$11

/* anonymous class */
    class _cls11 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzc(this, zzafA, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$12

/* anonymous class */
    class _cls12 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzc(this, zzafA, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$13

/* anonymous class */
    class _cls13 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzd(this, zzafA, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$14

/* anonymous class */
    class _cls14 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzd(this, zzafA, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$15

/* anonymous class */
    class _cls15 extends LoadExtendedGamesImpl
    {

        final String zzafS;
        final int zzafT;
        final boolean zzafU;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafS, zzafT, true, false, zzafy, zzafU);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$16

/* anonymous class */
    class _cls16 extends LoadExtendedGamesImpl
    {

        final String zzafS;
        final int zzafT;
        final boolean zzafU;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafS, zzafT, true, true, false, zzafU);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$17

/* anonymous class */
    class _cls17 extends LoadExtendedGamesImpl
    {

        final int zzafT;
        final String zzafV;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zze(this, zzafV, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$18

/* anonymous class */
    class _cls18 extends LoadExtendedGamesImpl
    {

        final int zzafT;
        final String zzafV;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zze(this, zzafV, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$19

/* anonymous class */
    class _cls19 extends LoadGameSearchSuggestionsImpl
    {

        final String zzafV;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzl(this, zzafV);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$2

/* anonymous class */
    class _cls2 extends LoadExtendedGamesImpl
    {

        final String zzafB;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzj(this, zzafB);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$3

/* anonymous class */
    class _cls3 extends LoadGameInstancesImpl
    {

        final String zzafB;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzk(this, zzafB);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$4

/* anonymous class */
    class _cls4 extends LoadExtendedGamesImpl
    {

        final int zzafT;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, null, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$5

/* anonymous class */
    class _cls5 extends LoadExtendedGamesImpl
    {

        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, null, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$6

/* anonymous class */
    class _cls6 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzafA, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$7

/* anonymous class */
    class _cls7 extends LoadExtendedGamesImpl
    {

        final String zzafA;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzafA, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$8

/* anonymous class */
    class _cls8 extends LoadExtendedGamesImpl
    {

        final int zzafT;
        final int zzafW;
        final boolean zzafX;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafT, zzafW, zzafX, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/GamesMetadataImpl$9

/* anonymous class */
    class _cls9 extends LoadExtendedGamesImpl
    {

        final String zzafS;
        final int zzafT;
        final boolean zzafU;
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafS, zzafT, false, false, zzafy, zzafU);
        }
    }

}
