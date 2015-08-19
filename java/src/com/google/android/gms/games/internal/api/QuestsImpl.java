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
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.quest.Quests;

public final class QuestsImpl
    implements Quests
{
    private static abstract class AcceptImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzag(status);
        }

        public com.google.android.gms.games.quest.Quests.AcceptQuestResult zzag(Status status)
        {
            return new com.google.android.gms.games.quest.Quests.AcceptQuestResult(this, status) {

                final Status zzGT;
                final AcceptImpl zzagS;

                public Quest getQuest()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagS = acceptimpl;
                zzGT = status;
                super();
            }
            };
        }

        private AcceptImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class ClaimImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzah(status);
        }

        public com.google.android.gms.games.quest.Quests.ClaimMilestoneResult zzah(Status status)
        {
            return new com.google.android.gms.games.quest.Quests.ClaimMilestoneResult(this, status) {

                final Status zzGT;
                final ClaimImpl zzagT;

                public Milestone getMilestone()
                {
                    return null;
                }

                public Quest getQuest()
                {
                    return null;
                }

                public Status getStatus()
                {
                    return zzGT;
                }

            
            {
                zzagT = claimimpl;
                zzGT = status;
                super();
            }
            };
        }

        private ClaimImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }

    private static abstract class LoadsImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzai(status);
        }

        public com.google.android.gms.games.quest.Quests.LoadQuestsResult zzai(Status status)
        {
            return new com.google.android.gms.games.quest.Quests.LoadQuestsResult(this, status) {

                final Status zzGT;
                final LoadsImpl zzagU;

                public QuestBuffer getQuests()
                {
                    return new QuestBuffer(DataHolder.zzay(zzGT.getStatusCode()));
                }

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzagU = loadsimpl;
                zzGT = status;
                super();
            }
            };
        }

        private LoadsImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public QuestsImpl()
    {
    }

    public PendingResult accept(GoogleApiClient googleapiclient, String s)
    {
        return googleapiclient.zzb(new AcceptImpl(googleapiclient, s) {

            final String zzagM;
            final QuestsImpl zzagN;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzh(this, zzagM);
            }

            
            {
                zzagN = QuestsImpl.this;
                zzagM = s;
                super(googleapiclient);
            }
        });
    }

    public PendingResult claim(GoogleApiClient googleapiclient, String s, String s1)
    {
        return googleapiclient.zzb(new ClaimImpl(googleapiclient, s, s1) {

            final String zzagM;
            final QuestsImpl zzagN;
            final String zzagO;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzagM, zzagO);
            }

            
            {
                zzagN = QuestsImpl.this;
                zzagM = s;
                zzagO = s1;
                super(googleapiclient);
            }
        });
    }

    public Intent getQuestIntent(GoogleApiClient googleapiclient, String s)
    {
        return Games.zzd(googleapiclient).zzbP(s);
    }

    public Intent getQuestsIntent(GoogleApiClient googleapiclient, int ai[])
    {
        return Games.zzd(googleapiclient).zzb(ai);
    }

    public PendingResult load(GoogleApiClient googleapiclient, int ai[], int i, boolean flag)
    {
        return googleapiclient.zza(new LoadsImpl(googleapiclient, ai, i, flag) {

            final boolean zzafy;
            final QuestsImpl zzagN;
            final int zzagP[];
            final int zzagc;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zza(this, zzagP, zzagc, zzafy);
            }

            
            {
                zzagN = QuestsImpl.this;
                zzagP = ai;
                zzagc = i;
                zzafy = flag;
                super(googleapiclient);
            }
        });
    }

    public transient PendingResult loadByIds(GoogleApiClient googleapiclient, boolean flag, String as[])
    {
        return googleapiclient.zza(new LoadsImpl(googleapiclient, flag, as) {

            final boolean zzafy;
            final QuestsImpl zzagN;
            final String zzagQ[];

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this, zzafy, zzagQ);
            }

            
            {
                zzagN = QuestsImpl.this;
                zzafy = flag;
                zzagQ = as;
                super(googleapiclient);
            }
        });
    }

    public void registerQuestUpdateListener(GoogleApiClient googleapiclient, QuestUpdateListener questupdatelistener)
    {
        GamesClientImpl gamesclientimpl = Games.zzb(googleapiclient, false);
        if (gamesclientimpl != null)
        {
            gamesclientimpl.zzc(googleapiclient.zzf(questupdatelistener));
        }
    }

    public void showStateChangedPopup(GoogleApiClient googleapiclient, String s)
    {
        googleapiclient = Games.zzb(googleapiclient, false);
        if (googleapiclient != null)
        {
            googleapiclient.zzbQ(s);
        }
    }

    public void unregisterQuestUpdateListener(GoogleApiClient googleapiclient)
    {
        googleapiclient = Games.zzb(googleapiclient, false);
        if (googleapiclient != null)
        {
            googleapiclient.zznz();
        }
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/QuestsImpl$5

/* anonymous class */
    class _cls5 extends LoadsImpl
    {

        final String zzafB;
        final boolean zzafy;
        final int zzagP[];
        final String zzagR;
        final int zzagc;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafB, zzagR, zzagP, zzagc, zzafy);
        }
    }


    // Unreferenced inner class com/google/android/gms/games/internal/api/QuestsImpl$6

/* anonymous class */
    class _cls6 extends LoadsImpl
    {

        final String zzafB;
        final boolean zzafy;
        final String zzagQ[];
        final String zzagR;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafB, zzagR, zzafy, zzagQ);
        }
    }

}
