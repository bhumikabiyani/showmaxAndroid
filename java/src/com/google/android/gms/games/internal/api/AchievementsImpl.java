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
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class AchievementsImpl
    implements Achievements
{
    private static abstract class LoadImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzH(status);
        }

        public com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult zzH(Status status)
        {
            return new com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult(this, status) {

                final Status zzGT;
                final LoadImpl zzafE;

                public AchievementBuffer getAchievements()
                {
                    return new AchievementBuffer(DataHolder.zzay(14));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzafE = loadimpl;
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

        private final String zzFA;

        static String zza(UpdateImpl updateimpl)
        {
            return updateimpl.zzFA;
        }

        public Result createFailedResult(Status status)
        {
            return zzI(status);
        }

        public com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult zzI(Status status)
        {
            return new com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult(this, status) {

                final Status zzGT;
                final UpdateImpl zzafF;

                public String getAchievementId()
                {
                    return UpdateImpl.zza(zzafF);
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzafF = updateimpl;
                zzGT = status;
                super();
            }
            };
        }

        public UpdateImpl(String s, GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
            zzFA = s;
        }
    }


    public AchievementsImpl()
    {
    }

    public Intent getAchievementsIntent(GoogleApiClient googleapiclient)
    {
        return Games.zzd(googleapiclient).zznu();
    }

    public void increment(GoogleApiClient googleapiclient, String s, int i)
    {
        googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s, i) {

            final String zzafC;
            final int zzafD;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(null, zzafC, zzafD);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                zzafD = i;
                super(s, googleapiclient);
            }
        });
    }

    public PendingResult incrementImmediate(GoogleApiClient googleapiclient, String s, int i)
    {
        return googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s, i) {

            final String zzafC;
            final int zzafD;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafC, zzafD);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                zzafD = i;
                super(s, googleapiclient);
            }
        });
    }

    public PendingResult load(GoogleApiClient googleapiclient, boolean flag)
    {
        return googleapiclient.zza(new LoadImpl(googleapiclient, flag) {

            final boolean zzafy;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzc(this, zzafy);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public void reveal(GoogleApiClient googleapiclient, String s)
    {
        googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s) {

            final String zzafC;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(null, zzafC);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                super(s, googleapiclient);
            }
        });
    }

    public PendingResult revealImmediate(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s) {

            final String zzafC;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzafC);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                super(s, googleapiclient);
            }
        });
    }

    public void setSteps(GoogleApiClient googleapiclient, String s, int i)
    {
        googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s, i) {

            final String zzafC;
            final int zzafD;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(null, zzafC, zzafD);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                zzafD = i;
                super(s, googleapiclient);
            }
        });
    }

    public PendingResult setStepsImmediate(GoogleApiClient googleapiclient, String s, int i)
    {
        return googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s, i) {

            final String zzafC;
            final int zzafD;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzafC, zzafD);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                zzafD = i;
                super(s, googleapiclient);
            }
        });
    }

    public void unlock(GoogleApiClient googleapiclient, String s)
    {
        googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s) {

            final String zzafC;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(null, zzafC);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                super(s, googleapiclient);
            }
        });
    }

    public PendingResult unlockImmediate(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.zzb(new UpdateImpl(s, googleapiclient, s) {

            final String zzafC;
            final AchievementsImpl zzafz;

            public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            public void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzafC);
            }

            
            {
                zzafz = AchievementsImpl.this;
                zzafC = s1;
                super(s, googleapiclient);
            }
        });
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/AchievementsImpl$10

/* anonymous class */
    class _cls10 extends LoadImpl
    {

        final String zzafA;
        final String zzafB;
        final boolean zzafy;

        public volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        public void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzb(this, zzafA, zzafB, zzafy);
        }
    }

}
