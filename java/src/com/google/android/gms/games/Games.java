// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.achievement.Achievements;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.event.Events;
import com.google.android.gms.games.internal.GamesClientImpl;
import com.google.android.gms.games.internal.api.AchievementsImpl;
import com.google.android.gms.games.internal.api.AclsImpl;
import com.google.android.gms.games.internal.api.AppContentsImpl;
import com.google.android.gms.games.internal.api.EventsImpl;
import com.google.android.gms.games.internal.api.GamesMetadataImpl;
import com.google.android.gms.games.internal.api.InvitationsImpl;
import com.google.android.gms.games.internal.api.LeaderboardsImpl;
import com.google.android.gms.games.internal.api.MultiplayerImpl;
import com.google.android.gms.games.internal.api.NotificationsImpl;
import com.google.android.gms.games.internal.api.PlayersImpl;
import com.google.android.gms.games.internal.api.QuestsImpl;
import com.google.android.gms.games.internal.api.RealTimeMultiplayerImpl;
import com.google.android.gms.games.internal.api.RequestsImpl;
import com.google.android.gms.games.internal.api.SnapshotsImpl;
import com.google.android.gms.games.internal.api.TurnBasedMultiplayerImpl;
import com.google.android.gms.games.internal.game.Acls;
import com.google.android.gms.games.leaderboard.Leaderboards;
import com.google.android.gms.games.multiplayer.Invitations;
import com.google.android.gms.games.multiplayer.Multiplayer;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer;
import com.google.android.gms.games.quest.Quests;
import com.google.android.gms.games.request.Requests;
import com.google.android.gms.games.snapshot.Snapshots;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games:
//            GamesMetadata, Notifications, Players

public final class Games
{
    public static abstract class BaseGamesApiMethodImpl extends com.google.android.gms.common.api.zza.zza
    {

        public BaseGamesApiMethodImpl(GoogleApiClient googleapiclient)
        {
            super(Games.zzGR, googleapiclient);
        }
    }

    public static final class GamesOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.Optional
    {

        public final boolean zzacA;
        public final boolean zzacB;
        public final int zzacC;
        public final boolean zzacD;
        public final int zzacE;
        public final String zzacF;
        public final ArrayList zzacG;

        public static Builder builder()
        {
            return new Builder();
        }

        private GamesOptions()
        {
            zzacA = false;
            zzacB = true;
            zzacC = 17;
            zzacD = false;
            zzacE = 4368;
            zzacF = null;
            zzacG = new ArrayList();
        }


        private GamesOptions(Builder builder1)
        {
            zzacA = builder1.zzacA;
            zzacB = builder1.zzacB;
            zzacC = builder1.zzacC;
            zzacD = builder1.zzacD;
            zzacE = builder1.zzacE;
            zzacF = builder1.zzacF;
            zzacG = builder1.zzacG;
        }

    }

    public static final class GamesOptions.Builder
    {

        boolean zzacA;
        boolean zzacB;
        int zzacC;
        boolean zzacD;
        int zzacE;
        String zzacF;
        ArrayList zzacG;

        public GamesOptions build()
        {
            return new GamesOptions(this);
        }

        public GamesOptions.Builder setSdkVariant(int i)
        {
            zzacE = i;
            return this;
        }

        public GamesOptions.Builder setShowConnectingPopup(boolean flag)
        {
            zzacB = flag;
            zzacC = 17;
            return this;
        }

        public GamesOptions.Builder setShowConnectingPopup(boolean flag, int i)
        {
            zzacB = flag;
            zzacC = i;
            return this;
        }

        private GamesOptions.Builder()
        {
            zzacA = false;
            zzacB = true;
            zzacC = 17;
            zzacD = false;
            zzacE = 4368;
            zzacF = null;
            zzacG = new ArrayList();
        }

    }

    private static abstract class SignOutImpl extends BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzb(status);
        }

        public Status zzb(Status status)
        {
            return status;
        }

        private SignOutImpl(GoogleApiClient googleapiclient)
        {
            super(googleapiclient);
        }

    }


    public static final Api API;
    public static final Achievements Achievements = new AchievementsImpl();
    public static final String EXTRA_PLAYER_IDS = "players";
    public static final String EXTRA_STATUS = "status";
    public static final Events Events = new EventsImpl();
    public static final GamesMetadata GamesMetadata = new GamesMetadataImpl();
    public static final Invitations Invitations = new InvitationsImpl();
    public static final Leaderboards Leaderboards = new LeaderboardsImpl();
    public static final Notifications Notifications = new NotificationsImpl();
    public static final Players Players = new PlayersImpl();
    public static final Quests Quests = new QuestsImpl();
    public static final RealTimeMultiplayer RealTimeMultiplayer = new RealTimeMultiplayerImpl();
    public static final Requests Requests = new RequestsImpl();
    public static final Scope SCOPE_GAMES;
    public static final Snapshots Snapshots = new SnapshotsImpl();
    public static final TurnBasedMultiplayer TurnBasedMultiplayer = new TurnBasedMultiplayerImpl();
    static final com.google.android.gms.common.api.Api.zzc zzGR;
    private static final com.google.android.gms.common.api.Api.zzb zzGS;
    public static final Scope zzacv;
    public static final Api zzacw;
    public static final AppContents zzacx = new AppContentsImpl();
    public static final Multiplayer zzacy = new MultiplayerImpl();
    public static final Acls zzacz = new AclsImpl();

    private Games()
    {
    }

    public static String getAppId(GoogleApiClient googleapiclient)
    {
        return zzd(googleapiclient).zznE();
    }

    public static String getCurrentAccountName(GoogleApiClient googleapiclient)
    {
        return zzd(googleapiclient).zznp();
    }

    public static int getSdkVariant(GoogleApiClient googleapiclient)
    {
        return zzd(googleapiclient).zznD();
    }

    public static Intent getSettingsIntent(GoogleApiClient googleapiclient)
    {
        return zzd(googleapiclient).zznC();
    }

    public static void setGravityForPopups(GoogleApiClient googleapiclient, int i)
    {
        googleapiclient = zzb(googleapiclient, false);
        if (googleapiclient != null)
        {
            googleapiclient.zzeB(i);
        }
    }

    public static void setViewForPopups(GoogleApiClient googleapiclient, View view)
    {
        zzx.zzl(view);
        googleapiclient = zzb(googleapiclient, false);
        if (googleapiclient != null)
        {
            googleapiclient.zzl(view);
        }
    }

    public static PendingResult signOut(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zzb(new SignOutImpl(googleapiclient) {

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((GamesClientImpl)zza1);
            }

            protected void zza(GamesClientImpl gamesclientimpl)
                throws RemoteException
            {
                gamesclientimpl.zzb(this);
            }

        });
    }

    public static GamesClientImpl zzb(GoogleApiClient googleapiclient, boolean flag)
    {
        boolean flag1;
        if (googleapiclient != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        zzx.zzb(flag1, "GoogleApiClient parameter is required.");
        zzx.zza(googleapiclient.isConnected(), "GoogleApiClient must be connected.");
        return zzc(googleapiclient, flag);
    }

    public static GamesClientImpl zzc(GoogleApiClient googleapiclient, boolean flag)
    {
        zzx.zza(googleapiclient.zza(API), "GoogleApiClient is not configured to use the Games Api. Pass Games.API into GoogleApiClient.Builder#addApi() to use this feature.");
        boolean flag1 = googleapiclient.zzb(API);
        if (flag && !flag1)
        {
            throw new IllegalStateException("GoogleApiClient has an optional Games.API and is not connected to Games. Use GoogleApiClient.hasConnectedApi(Games.API) to guard this call.");
        }
        if (flag1)
        {
            return (GamesClientImpl)googleapiclient.zza(zzGR);
        } else
        {
            return null;
        }
    }

    public static GamesClientImpl zzd(GoogleApiClient googleapiclient)
    {
        return zzb(googleapiclient, true);
    }

    static 
    {
        zzGR = new com.google.android.gms.common.api.Api.zzc();
        zzGS = new com.google.android.gms.common.api.Api.zzb() {

            public int getPriority()
            {
                return 1;
            }

            public volatile com.google.android.gms.common.api.Api.zza zza(Context context, Looper looper, zzf zzf, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return zza(context, looper, zzf, (GamesOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public GamesClientImpl zza(Context context, Looper looper, zzf zzf, GamesOptions gamesoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                if (gamesoptions == null)
                {
                    gamesoptions = new GamesOptions();
                }
                return new GamesClientImpl(context, looper, zzf, gamesoptions, connectioncallbacks, onconnectionfailedlistener);
            }

        };
        SCOPE_GAMES = new Scope("https://www.googleapis.com/auth/games");
        API = new Api(zzGS, zzGR, new Scope[] {
            SCOPE_GAMES
        });
        zzacv = new Scope("https://www.googleapis.com/auth/games.firstparty");
        zzacw = new Api(zzGS, zzGR, new Scope[] {
            zzacv
        });
    }
}
