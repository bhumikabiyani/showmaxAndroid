// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.Games;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.Players;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class PlayersImpl
    implements Players
{
    private static abstract class LoadOwnerCoverPhotoUrisImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzab(status);
        }

        public com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult zzab(Status status)
        {
            return new com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult(this, status) {

                final Status zzGT;
                final LoadOwnerCoverPhotoUrisImpl zzagH;

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagH = loadownercoverphotourisimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadPlayersImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzac(status);
        }

        public com.google.android.gms.games.Players.LoadPlayersResult zzac(Status status)
        {
            return new com.google.android.gms.games.Players.LoadPlayersResult(this, status) {

                final Status zzGT;
                final LoadPlayersImpl zzagI;

                public PlayerBuffer getPlayers()
                {
                    return new PlayerBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzagI = loadplayersimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadPlayersImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class LoadProfileSettingsResultImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        protected Result createFailedResult(Status status)
        {
            return zzad(status);
        }

        protected com.google.android.gms.games.Players.LoadProfileSettingsResult zzad(Status status)
        {
            return new com.google.android.gms.games.Players.LoadProfileSettingsResult(this, status) {

                final Status zzGT;
                final LoadProfileSettingsResultImpl zzagJ;

                public Status getStatus()
                {
                    return zzGT;
                }

                public boolean isProfileVisible()
                {
                    return true;
                }

                public boolean isVisibilityExplicitlySet()
                {
                    return false;
                }

            
            {
                zzagJ = loadprofilesettingsresultimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadXpForGameCategoriesResultImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzae(status);
        }

        public com.google.android.gms.games.Players.LoadXpForGameCategoriesResult zzae(Status status)
        {
            return new com.google.android.gms.games.Players.LoadXpForGameCategoriesResult(this, status) {

                final Status zzGT;
                final LoadXpForGameCategoriesResultImpl zzagK;

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagK = loadxpforgamecategoriesresultimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class LoadXpStreamResultImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzaf(status);
        }

        public com.google.android.gms.games.Players.LoadXpStreamResult zzaf(Status status)
        {
            return new com.google.android.gms.games.Players.LoadXpStreamResult(this, status) {

                final Status zzGT;
                final LoadXpStreamResultImpl zzagL;

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagL = loadxpstreamresultimpl;
                zzGT = status;
                super();
            }
            };
        }
    }

    private static abstract class UpdateProfileSettingsResultImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        protected Result createFailedResult(Status status)
        {
            return zzb(status);
        }

        protected Status zzb(Status status)
        {
            return status;
        }
    }


    public PlayersImpl()
    {
    }

    public Intent getCompareProfileIntent(GoogleApiClient googleapiclient, Player player)
    {
        return Games.zzd(googleapiclient).zza(new PlayerEntity(player));
    }

    public Player getCurrentPlayer(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznr();
    }

    public String getCurrentPlayerId(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznq();
    }

    public Intent getPlayerSearchIntent(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznB();
    }

    public PendingResult loadConnectedPlayers(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, flag) {

            final boolean zzafy;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafy);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadInvitablePlayers(GoogleApiClient googleapiclient, int i, boolean flag)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, i, flag) {

            final int zzafT;
            final boolean zzafy;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafT, false, zzafy);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafT = i;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadMoreInvitablePlayers(GoogleApiClient googleapiclient, int i)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, i) {

            final int zzafT;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafT, true, false);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafT = i;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadMoreRecentlyPlayedWithPlayers(GoogleApiClient googleapiclient, int i)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, i) {

            final int zzafT;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, "played_with", zzafT, true, false);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafT = i;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadPlayer(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, s) {

            final String zzafA;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafA, false);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafA = s;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadPlayer(GoogleApiClient googleapiclient, String s, boolean flag)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, s, flag) {

            final String zzafA;
            final boolean zzafy;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafA, zzafy);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafA = s;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public PendingResult loadRecentlyPlayedWithPlayers(GoogleApiClient googleapiclient, int i, boolean flag)
    {
        return googleapiclient.zza(new LoadPlayersImpl(googleapiclient, i, flag) {

            final int zzafT;
            final boolean zzafy;
            final PlayersImpl zzagB;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, "played_with", zzafT, false, zzafy);
            }

            
            {
                zzagB = PlayersImpl.this;
                zzafT = i;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$10

/* anonymous class */
    class _cls10 extends LoadPlayersImpl
    {

        final String zzafB;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, "nearby", zzafB, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$11

/* anonymous class */
    class _cls11 extends LoadPlayersImpl
    {

        final String zzafB;
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
            gamesclientimpl.zza(this, "played_with", zzafB, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$12

/* anonymous class */
    class _cls12 extends LoadPlayersImpl
    {

        final String zzafB;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, "played_with", zzafB, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$13

/* anonymous class */
    class _cls13 extends LoadPlayersImpl
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
            gamesclientimpl.zzb(this, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$14

/* anonymous class */
    class _cls14 extends LoadPlayersImpl
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
            gamesclientimpl.zzb(this, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$15

/* anonymous class */
    class _cls15 extends LoadPlayersImpl
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
            gamesclientimpl.zzc(this, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$16

/* anonymous class */
    class _cls16 extends LoadPlayersImpl
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
            gamesclientimpl.zzc(this, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$17

/* anonymous class */
    class _cls17 extends LoadPlayersImpl
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
            gamesclientimpl.zzd(this, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$18

/* anonymous class */
    class _cls18 extends LoadPlayersImpl
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
            gamesclientimpl.zzd(this, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$19

/* anonymous class */
    class _cls19 extends LoadPlayersImpl
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
            gamesclientimpl.zzf(this, zzafV, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$20

/* anonymous class */
    class _cls20 extends LoadPlayersImpl
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
            gamesclientimpl.zzf(this, zzafV, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$21

/* anonymous class */
    class _cls21 extends LoadPlayersImpl
    {

        final int zzafT;
        final boolean zzafy;
        final String zzagC;
        final String zzagt;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzagC, zzagt, zzafT, false, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$22

/* anonymous class */
    class _cls22 extends LoadPlayersImpl
    {

        final int zzafT;
        final String zzagC;
        final String zzagt;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzagC, zzagt, zzafT, true, false);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$23

/* anonymous class */
    class _cls23 extends LoadOwnerCoverPhotoUrisImpl
    {

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzg(this);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$24

/* anonymous class */
    class _cls24 extends LoadXpForGameCategoriesResultImpl
    {

        final String zzagD;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzm(this, zzagD);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$25

/* anonymous class */
    class _cls25 extends LoadXpStreamResultImpl
    {

        final String zzagD;
        final int zzagE;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzc(this, zzagD, zzagE);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$26

/* anonymous class */
    class _cls26 extends LoadXpStreamResultImpl
    {

        final String zzagD;
        final int zzagE;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzd(this, zzagD, zzagE);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$27

/* anonymous class */
    class _cls27 extends LoadProfileSettingsResultImpl
    {

        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzf(this, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$28

/* anonymous class */
    class _cls28 extends UpdateProfileSettingsResultImpl
    {

        final boolean zzagF;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzg(this, zzagF);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$3

/* anonymous class */
    class _cls3 extends LoadPlayersImpl
    {

        final String zzagG[];

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzagG);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/PlayersImpl$9

/* anonymous class */
    class _cls9 extends LoadPlayersImpl
    {

        final String zzafB;
        final int zzafT;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, "nearby", zzafB, zzafT, false, false);
        }
    }

}
