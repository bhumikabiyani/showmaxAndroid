// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.zzb;
import com.google.android.gms.common.api.zzc;
import com.google.android.gms.common.api.zze;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zza;
import com.google.android.gms.common.internal.BinderWrapper;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameBuffer;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.GamesStatusCodes;
import com.google.android.gms.games.OnNearbyPlayerDetectedListener;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerBuffer;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.achievement.AchievementBuffer;
import com.google.android.gms.games.event.EventBuffer;
import com.google.android.gms.games.internal.constants.RequestType;
import com.google.android.gms.games.internal.events.EventIncrementCache;
import com.google.android.gms.games.internal.events.EventIncrementManager;
import com.google.android.gms.games.internal.experience.ExperienceEventBuffer;
import com.google.android.gms.games.internal.game.ExtendedGameBuffer;
import com.google.android.gms.games.internal.game.GameInstanceBuffer;
import com.google.android.gms.games.internal.game.GameSearchSuggestionBuffer;
import com.google.android.gms.games.internal.request.RequestUpdateOutcomes;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScore;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBufferHeader;
import com.google.android.gms.games.leaderboard.LeaderboardScoreEntity;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;
import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.InvitationBuffer;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;
import com.google.android.gms.games.multiplayer.ParticipantResult;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessageReceivedListener;
import com.google.android.gms.games.multiplayer.realtime.Room;
import com.google.android.gms.games.multiplayer.realtime.RoomBuffer;
import com.google.android.gms.games.multiplayer.realtime.RoomConfig;
import com.google.android.gms.games.multiplayer.realtime.RoomEntity;
import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;
import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;
import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchBuffer;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatchConfig;
import com.google.android.gms.games.quest.Milestone;
import com.google.android.gms.games.quest.Quest;
import com.google.android.gms.games.quest.QuestBuffer;
import com.google.android.gms.games.quest.QuestEntity;
import com.google.android.gms.games.quest.QuestUpdateListener;
import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.GameRequestBuffer;
import com.google.android.gms.games.request.OnRequestReceivedListener;
import com.google.android.gms.games.snapshot.Snapshot;
import com.google.android.gms.games.snapshot.SnapshotContents;
import com.google.android.gms.games.snapshot.SnapshotContentsEntity;
import com.google.android.gms.games.snapshot.SnapshotEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;
import com.google.android.gms.games.snapshot.SnapshotMetadataChange;
import com.google.android.gms.games.snapshot.SnapshotMetadataChangeEntity;
import com.google.android.gms.games.snapshot.SnapshotMetadataEntity;
import com.google.android.gms.internal.zzvc;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.Executors;

// Referenced classes of package com.google.android.gms.games.internal:
//            PopupManager, IGamesService, GamesLog, AbstractGamesCallbacks, 
//            AbstractGamesClient, PopupLocationInfoParcelable

public final class GamesClientImpl extends zzk
    implements com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
{
    private static abstract class AbstractPeerStatusNotifier extends AbstractRoomStatusNotifier
    {

        private final ArrayList zzadZ = new ArrayList();

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room)
        {
            zza(roomstatusupdatelistener, room, zzadZ);
        }

        protected abstract void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist);

        AbstractPeerStatusNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder);
            int i = 0;
            for (int j = as.length; i < j; i++)
            {
                zzadZ.add(as[i]);
            }

        }
    }

    private static abstract class AbstractRoomNotifier extends zzb
    {

        protected void zza(RoomUpdateListener roomupdatelistener, DataHolder dataholder)
        {
            zza(roomupdatelistener, GamesClientImpl.zzS(dataholder), dataholder.getStatusCode());
        }

        protected abstract void zza(RoomUpdateListener roomupdatelistener, Room room, int i);

        protected volatile void zza(Object obj, DataHolder dataholder)
        {
            zza((RoomUpdateListener)obj, dataholder);
        }

        AbstractRoomNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static abstract class AbstractRoomStatusNotifier extends zzb
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, DataHolder dataholder)
        {
            zza(roomstatusupdatelistener, GamesClientImpl.zzS(dataholder));
        }

        protected abstract void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room);

        protected volatile void zza(Object obj, DataHolder dataholder)
        {
            zza((RoomStatusUpdateListener)obj, dataholder);
        }

        AbstractRoomStatusNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class AcceptQuestResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.quest.Quests.AcceptQuestResult
    {

        private final Quest zzaea = null;

        public Quest getQuest()
        {
            return zzaea;
        }

        AcceptQuestResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            dataholder = new QuestBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaea = new QuestEntity((Quest)dataholder.get(0));
_L4:
            dataholder.release();
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.release();
            throw exception;
        }
    }

    private static final class AchievementUpdatedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzf(int i, String s)
        {
            zzHa.zzd(new UpdateAchievementResultImpl(i, s));
        }

        AchievementUpdatedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class AchievementsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzc(DataHolder dataholder)
        {
            zzHa.zzd(new LoadAchievementsResultImpl(dataholder));
        }

        AchievementsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class AppContentLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeb;

        public void zza(DataHolder adataholder[])
        {
            zzaeb.zzd(new LoadAppContentsResultImpl(adataholder));
        }

        public AppContentLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeb = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class CancelMatchResultImpl
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult
    {

        private final Status zzHb;
        private final String zzaec;

        public String getMatchId()
        {
            return zzaec;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        CancelMatchResultImpl(Status status, String s)
        {
            zzHb = status;
            zzaec = s;
        }
    }

    private static final class ClaimMilestoneResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.quest.Quests.ClaimMilestoneResult
    {

        private final Quest zzaea;
        private final Milestone zzaed = null;

        public Milestone getMilestone()
        {
            return zzaed;
        }

        public Quest getQuest()
        {
            return zzaea;
        }

        ClaimMilestoneResultImpl(DataHolder dataholder, String s)
        {
            int i;
            i = 0;
            super(dataholder);
            dataholder = new QuestBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            List list;
            int j;
            zzaea = new QuestEntity((Quest)dataholder.get(0));
            list = zzaea.zzoZ();
            j = list.size();
_L4:
            if (i >= j)
            {
                break; /* Loop/switch isn't completed */
            }
            if (!((Milestone)list.get(i)).getMilestoneId().equals(s))
            {
                break MISSING_BLOCK_LABEL_111;
            }
            zzaed = (Milestone)list.get(i);
            dataholder.release();
            return;
            i++;
            if (true) goto _L4; else goto _L3
_L3:
_L6:
            dataholder.release();
            return;
_L2:
            zzaed = null;
            zzaea = null;
            if (true) goto _L6; else goto _L5
_L5:
            s;
            dataholder.release();
            throw s;
        }
    }

    private static final class CommitSnapshotResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.snapshot.Snapshots.CommitSnapshotResult
    {

        private final SnapshotMetadata zzaee = null;

        public SnapshotMetadata getSnapshotMetadata()
        {
            return zzaee;
        }

        CommitSnapshotResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            dataholder = new SnapshotMetadataBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaee = new SnapshotMetadataEntity(dataholder.get(0));
_L4:
            dataholder.release();
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.release();
            throw exception;
        }
    }

    private static final class ConnectedToRoomNotifier extends AbstractRoomStatusNotifier
    {

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room)
        {
            roomstatusupdatelistener.onConnectedToRoom(room);
        }

        ConnectedToRoomNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class ContactSettingLoadResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.Notifications.ContactSettingLoadResult
    {

        ContactSettingLoadResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class ContactSettingsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzD(DataHolder dataholder)
        {
            zzHa.zzd(new ContactSettingLoadResultImpl(dataholder));
        }

        ContactSettingsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class ContactSettingsUpdatedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzey(int i)
        {
            zzHa.zzd(GamesStatusCodes.zzep(i));
        }

        ContactSettingsUpdatedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class DeleteSnapshotResultImpl
        implements com.google.android.gms.games.snapshot.Snapshots.DeleteSnapshotResult
    {

        private final Status zzHb;
        private final String zzaef;

        public String getSnapshotId()
        {
            return zzaef;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        DeleteSnapshotResultImpl(int i, String s)
        {
            zzHb = GamesStatusCodes.zzep(i);
            zzaef = s;
        }
    }

    private static final class DisconnectedFromRoomNotifier extends AbstractRoomStatusNotifier
    {

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room)
        {
            roomstatusupdatelistener.onDisconnectedFromRoom(room);
        }

        DisconnectedFromRoomNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class EventsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzd(DataHolder dataholder)
        {
            zzHa.zzd(new LoadEventResultImpl(dataholder));
        }

        EventsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class ExtendedGamesLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzj(DataHolder dataholder)
        {
            zzHa.zzd(new LoadExtendedGamesResultImpl(dataholder));
        }

        ExtendedGamesLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private class GameClientEventIncrementCache extends EventIncrementCache
    {

        final GamesClientImpl zzadY;

        protected void zzs(String s, int i)
        {
            if (zzadY.isConnected())
            {
                ((IGamesService)zzadY.zzjb()).zzp(s, i);
                return;
            }
            try
            {
                GamesLog.zzs("GamesClientImpl", (new StringBuilder()).append("Unable to increment event ").append(s).append(" by ").append(i).append(" because the games client is no longer connected").toString());
                return;
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                GamesLog.zzr("GamesClientImpl", "service died");
            }
            return;
        }

        public GameClientEventIncrementCache()
        {
            zzadY = GamesClientImpl.this;
            super(getContext().getMainLooper(), 1000);
        }
    }

    private static final class GameInstancesLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzk(DataHolder dataholder)
        {
            zzHa.zzd(new LoadGameInstancesResultImpl(dataholder));
        }

        GameInstancesLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class GameMuteStatusChangeResultImpl
        implements com.google.android.gms.games.Notifications.GameMuteStatusChangeResult
    {

        private final Status zzHb;
        private final String zzaeg;
        private final boolean zzaeh;

        public Status getStatus()
        {
            return zzHb;
        }

        public GameMuteStatusChangeResultImpl(int i, String s, boolean flag)
        {
            zzHb = GamesStatusCodes.zzep(i);
            zzaeg = s;
            zzaeh = flag;
        }
    }

    private static final class GameMuteStatusChangedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(int i, String s, boolean flag)
        {
            zzHa.zzd(new GameMuteStatusChangeResultImpl(i, s, flag));
        }

        GameMuteStatusChangedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class GameMuteStatusLoadResultImpl
        implements com.google.android.gms.games.Notifications.GameMuteStatusLoadResult
    {

        private final Status zzHb;
        private final String zzaeg;
        private final boolean zzaeh;

        public Status getStatus()
        {
            return zzHb;
        }

        public GameMuteStatusLoadResultImpl(DataHolder dataholder)
        {
            zzHb = GamesStatusCodes.zzep(dataholder.getStatusCode());
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaeg = dataholder.zzc("external_game_id", 0, 0);
            zzaeh = dataholder.zzd("muted", 0, 0);
_L4:
            dataholder.close();
            return;
_L2:
            zzaeg = null;
            zzaeh = false;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.close();
            throw exception;
        }
    }

    private static final class GameMuteStatusLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzB(DataHolder dataholder)
        {
            zzHa.zzd(new GameMuteStatusLoadResultImpl(dataholder));
        }

        GameMuteStatusLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class GameSearchSuggestionsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzl(DataHolder dataholder)
        {
            zzHa.zzd(new LoadGameSearchSuggestionsResultImpl(dataholder));
        }

        GameSearchSuggestionsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static abstract class GamesDataHolderResult extends zzc
    {

        protected GamesDataHolderResult(DataHolder dataholder)
        {
            super(dataholder, GamesStatusCodes.zzep(dataholder.getStatusCode()));
        }
    }

    private static final class GamesLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzi(DataHolder dataholder)
        {
            zzHa.zzd(new LoadGamesResultImpl(dataholder));
        }

        GamesLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class InboxCountResultImpl
        implements com.google.android.gms.games.Notifications.InboxCountResult
    {

        private final Status zzHb;
        private final Bundle zzaei;

        public Status getStatus()
        {
            return zzHb;
        }

        InboxCountResultImpl(Status status, Bundle bundle)
        {
            zzHb = status;
            zzaei = bundle;
        }
    }

    private static final class InboxCountsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzh(int i, Bundle bundle)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            Status status = GamesStatusCodes.zzep(i);
            zzHa.zzd(new InboxCountResultImpl(status, bundle));
        }

        InboxCountsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class InitiateMatchResultImpl extends TurnBasedMatchResult
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.InitiateMatchResult
    {

        InitiateMatchResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class InvitationReceivedBinderCallback extends AbstractGamesCallbacks
    {

        private final zze zzTW;

        public void onInvitationRemoved(String s)
        {
            zzTW.zza(new InvitationRemovedNotifier(s));
        }

        public void zzn(DataHolder dataholder)
        {
            InvitationBuffer invitationbuffer;
            invitationbuffer = new InvitationBuffer(dataholder);
            dataholder = null;
            if (invitationbuffer.getCount() > 0)
            {
                dataholder = (Invitation)((Invitation)invitationbuffer.get(0)).freeze();
            }
            invitationbuffer.release();
            if (dataholder != null)
            {
                zzTW.zza(new InvitationReceivedNotifier(dataholder));
            }
            return;
            dataholder;
            invitationbuffer.release();
            throw dataholder;
        }

        InvitationReceivedBinderCallback(zze zze1)
        {
            zzTW = zze1;
        }
    }

    private static final class InvitationReceivedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final Invitation zzaej;

        public void zza(OnInvitationReceivedListener oninvitationreceivedlistener)
        {
            oninvitationreceivedlistener.onInvitationReceived(zzaej);
        }

        public void zze(Object obj)
        {
            zza((OnInvitationReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        InvitationReceivedNotifier(Invitation invitation)
        {
            zzaej = invitation;
        }
    }

    private static final class InvitationRemovedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final String zzaek;

        public void zza(OnInvitationReceivedListener oninvitationreceivedlistener)
        {
            oninvitationreceivedlistener.onInvitationRemoved(zzaek);
        }

        public void zze(Object obj)
        {
            zza((OnInvitationReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        InvitationRemovedNotifier(String s)
        {
            zzaek = s;
        }
    }

    private static final class InvitationsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzm(DataHolder dataholder)
        {
            zzHa.zzd(new LoadInvitationsResultImpl(dataholder));
        }

        InvitationsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class JoinedRoomNotifier extends AbstractRoomNotifier
    {

        public void zza(RoomUpdateListener roomupdatelistener, Room room, int i)
        {
            roomupdatelistener.onJoinedRoom(i, room);
        }

        public JoinedRoomNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LeaderboardMetadataResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult
    {

        private final LeaderboardBuffer zzael;

        public LeaderboardBuffer getLeaderboards()
        {
            return zzael;
        }

        LeaderboardMetadataResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzael = new LeaderboardBuffer(dataholder);
        }
    }

    private static final class LeaderboardScoresLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zza(DataHolder dataholder, DataHolder dataholder1)
        {
            zzHa.zzd(new LoadScoresResultImpl(dataholder, dataholder1));
        }

        LeaderboardScoresLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class LeaderboardsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zze(DataHolder dataholder)
        {
            zzHa.zzd(new LeaderboardMetadataResultImpl(dataholder));
        }

        LeaderboardsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class LeaveMatchResultImpl extends TurnBasedMatchResult
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LeaveMatchResult
    {

        LeaveMatchResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LeftRoomNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final int zzLs;
        private final String zzaem;

        public void zza(RoomUpdateListener roomupdatelistener)
        {
            roomupdatelistener.onLeftRoom(zzLs, zzaem);
        }

        public void zze(Object obj)
        {
            zza((RoomUpdateListener)obj);
        }

        public void zzhX()
        {
        }

        LeftRoomNotifier(int i, String s)
        {
            zzLs = i;
            zzaem = s;
        }
    }

    private static final class LoadAchievementsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.achievement.Achievements.LoadAchievementsResult
    {

        private final AchievementBuffer zzaen;

        public AchievementBuffer getAchievements()
        {
            return zzaen;
        }

        LoadAchievementsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaen = new AchievementBuffer(dataholder);
        }
    }

    private static final class LoadAclResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.internal.game.Acls.LoadAclResult
    {

        LoadAclResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LoadAppContentsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.appcontent.AppContents.LoadAppContentResult
    {

        private final ArrayList zzaeo;

        LoadAppContentsResultImpl(DataHolder adataholder[])
        {
            super(adataholder[0]);
            zzaeo = new ArrayList(Arrays.asList(adataholder));
        }
    }

    private static final class LoadEventResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.event.Events.LoadEventsResult
    {

        private final EventBuffer zzaep;

        public EventBuffer getEvents()
        {
            return zzaep;
        }

        LoadEventResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaep = new EventBuffer(dataholder);
        }
    }

    private static final class LoadExtendedGamesResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.GamesMetadata.LoadExtendedGamesResult
    {

        private final ExtendedGameBuffer zzaeq;

        LoadExtendedGamesResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaeq = new ExtendedGameBuffer(dataholder);
        }
    }

    private static final class LoadGameInstancesResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult
    {

        private final GameInstanceBuffer zzaer;

        LoadGameInstancesResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaer = new GameInstanceBuffer(dataholder);
        }
    }

    private static final class LoadGameSearchSuggestionsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult
    {

        private final GameSearchSuggestionBuffer zzaes;

        LoadGameSearchSuggestionsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaes = new GameSearchSuggestionBuffer(dataholder);
        }
    }

    private static final class LoadGamesResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.GamesMetadata.LoadGamesResult
    {

        private final GameBuffer zzaet;

        public GameBuffer getGames()
        {
            return zzaet;
        }

        LoadGamesResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaet = new GameBuffer(dataholder);
        }
    }

    private static final class LoadInvitationsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.multiplayer.Invitations.LoadInvitationsResult
    {

        private final InvitationBuffer zzaeu;

        public InvitationBuffer getInvitations()
        {
            return zzaeu;
        }

        LoadInvitationsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaeu = new InvitationBuffer(dataholder);
        }
    }

    private static final class LoadMatchResultImpl extends TurnBasedMatchResult
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult
    {

        LoadMatchResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LoadMatchesResultImpl
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchesResult
    {

        private final Status zzHb;
        private final LoadMatchesResponse zzaev;

        public LoadMatchesResponse getMatches()
        {
            return zzaev;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public void release()
        {
            zzaev.release();
        }

        LoadMatchesResultImpl(Status status, Bundle bundle)
        {
            zzHb = status;
            zzaev = new LoadMatchesResponse(bundle);
        }
    }

    private static final class LoadOwnerCoverPhotoUrisResultImpl
        implements com.google.android.gms.games.Players.LoadOwnerCoverPhotoUrisResult
    {

        private final Bundle zzGK;
        private final Status zzHb;

        public Status getStatus()
        {
            return zzHb;
        }

        LoadOwnerCoverPhotoUrisResultImpl(int i, Bundle bundle)
        {
            zzHb = GamesStatusCodes.zzep(i);
            zzGK = bundle;
        }
    }

    private static final class LoadPlayerScoreResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.leaderboard.Leaderboards.LoadPlayerScoreResult
    {

        private final LeaderboardScoreEntity zzaew = null;

        public LeaderboardScore getScore()
        {
            return zzaew;
        }

        LoadPlayerScoreResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            dataholder = new LeaderboardScoreBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaew = (LeaderboardScoreEntity)dataholder.get(0).freeze();
_L4:
            dataholder.release();
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.release();
            throw exception;
        }
    }

    private static final class LoadPlayersResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.Players.LoadPlayersResult
    {

        private final PlayerBuffer zzaex;

        public PlayerBuffer getPlayers()
        {
            return zzaex;
        }

        LoadPlayersResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaex = new PlayerBuffer(dataholder);
        }
    }

    private static final class LoadProfileSettingsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.Players.LoadProfileSettingsResult
    {

        private final boolean zzadM;
        private final boolean zzaey;

        public Status getStatus()
        {
            return zzHb;
        }

        public boolean isProfileVisible()
        {
            return zzadM;
        }

        public boolean isVisibilityExplicitlySet()
        {
            return zzaey;
        }

        LoadProfileSettingsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            int i = dataholder.zzax(0);
            zzadM = dataholder.zzd("profile_visible", 0, i);
            zzaey = dataholder.zzd("profile_visibility_explicitly_set", 0, i);
_L4:
            dataholder.close();
            return;
_L2:
            zzadM = true;
            zzaey = false;
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.close();
            throw exception;
        }
    }

    private static final class LoadQuestsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.quest.Quests.LoadQuestsResult
    {

        private final DataHolder zzMd;

        public QuestBuffer getQuests()
        {
            return new QuestBuffer(zzMd);
        }

        LoadQuestsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzMd = dataholder;
        }
    }

    private static final class LoadRequestSummariesResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.request.Requests.LoadRequestSummariesResult
    {

        LoadRequestSummariesResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LoadRequestsResultImpl
        implements com.google.android.gms.games.request.Requests.LoadRequestsResult
    {

        private final Status zzHb;
        private final Bundle zzaez;

        public GameRequestBuffer getRequests(int i)
        {
            String s = RequestType.zzeJ(i);
            if (!zzaez.containsKey(s))
            {
                return null;
            } else
            {
                return new GameRequestBuffer((DataHolder)zzaez.get(s));
            }
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public void release()
        {
            Iterator iterator = zzaez.keySet().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                Object obj = (String)iterator.next();
                obj = (DataHolder)zzaez.getParcelable(((String) (obj)));
                if (obj != null)
                {
                    ((DataHolder) (obj)).close();
                }
            } while (true);
        }

        LoadRequestsResultImpl(Status status, Bundle bundle)
        {
            zzHb = status;
            zzaez = bundle;
        }
    }

    private static final class LoadScoresResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.leaderboard.Leaderboards.LoadScoresResult
    {

        private final LeaderboardEntity zzaeA = null;
        private final LeaderboardScoreBuffer zzaeB;

        public Leaderboard getLeaderboard()
        {
            return zzaeA;
        }

        public LeaderboardScoreBuffer getScores()
        {
            return zzaeB;
        }

        LoadScoresResultImpl(DataHolder dataholder, DataHolder dataholder1)
        {
            super(dataholder1);
            dataholder = new LeaderboardBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaeA = (LeaderboardEntity)((Leaderboard)dataholder.get(0)).freeze();
_L4:
            dataholder.release();
            zzaeB = new LeaderboardScoreBuffer(dataholder1);
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            dataholder1;
            dataholder.release();
            throw dataholder1;
        }
    }

    private static final class LoadSnapshotsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.snapshot.Snapshots.LoadSnapshotsResult
    {

        public SnapshotMetadataBuffer getSnapshots()
        {
            return new SnapshotMetadataBuffer(zzMd);
        }

        LoadSnapshotsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class LoadXpForGameCategoriesResultImpl
        implements com.google.android.gms.games.Players.LoadXpForGameCategoriesResult
    {

        private final Status zzHb;
        private final List zzaeC;
        private final Bundle zzaeD;

        public Status getStatus()
        {
            return zzHb;
        }

        LoadXpForGameCategoriesResultImpl(Status status, Bundle bundle)
        {
            zzHb = status;
            zzaeC = bundle.getStringArrayList("game_category_list");
            zzaeD = bundle;
        }
    }

    private static final class LoadXpStreamResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.Players.LoadXpStreamResult
    {

        private final ExperienceEventBuffer zzaeE;

        LoadXpStreamResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzaeE = new ExperienceEventBuffer(dataholder);
        }
    }

    private static final class MatchRemovedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final String zzaeF;

        public void zza(OnTurnBasedMatchUpdateReceivedListener onturnbasedmatchupdatereceivedlistener)
        {
            onturnbasedmatchupdatereceivedlistener.onTurnBasedMatchRemoved(zzaeF);
        }

        public void zze(Object obj)
        {
            zza((OnTurnBasedMatchUpdateReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        MatchRemovedNotifier(String s)
        {
            zzaeF = s;
        }
    }

    private static final class MatchUpdateReceivedBinderCallback extends AbstractGamesCallbacks
    {

        private final zze zzTW;

        public void onTurnBasedMatchRemoved(String s)
        {
            zzTW.zza(new MatchRemovedNotifier(s));
        }

        public void zzt(DataHolder dataholder)
        {
            TurnBasedMatchBuffer turnbasedmatchbuffer;
            turnbasedmatchbuffer = new TurnBasedMatchBuffer(dataholder);
            dataholder = null;
            if (turnbasedmatchbuffer.getCount() > 0)
            {
                dataholder = (TurnBasedMatch)((TurnBasedMatch)turnbasedmatchbuffer.get(0)).freeze();
            }
            turnbasedmatchbuffer.release();
            if (dataholder != null)
            {
                zzTW.zza(new MatchUpdateReceivedNotifier(dataholder));
            }
            return;
            dataholder;
            turnbasedmatchbuffer.release();
            throw dataholder;
        }

        MatchUpdateReceivedBinderCallback(zze zze1)
        {
            zzTW = zze1;
        }
    }

    private static final class MatchUpdateReceivedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final TurnBasedMatch zzaeG;

        public void zza(OnTurnBasedMatchUpdateReceivedListener onturnbasedmatchupdatereceivedlistener)
        {
            onturnbasedmatchupdatereceivedlistener.onTurnBasedMatchReceived(zzaeG);
        }

        public void zze(Object obj)
        {
            zza((OnTurnBasedMatchUpdateReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        MatchUpdateReceivedNotifier(TurnBasedMatch turnbasedmatch)
        {
            zzaeG = turnbasedmatch;
        }
    }

    private static final class MessageReceivedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final RealTimeMessage zzaeH;

        public void zza(RealTimeMessageReceivedListener realtimemessagereceivedlistener)
        {
            realtimemessagereceivedlistener.onRealTimeMessageReceived(zzaeH);
        }

        public void zze(Object obj)
        {
            zza((RealTimeMessageReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        MessageReceivedNotifier(RealTimeMessage realtimemessage)
        {
            zzaeH = realtimemessage;
        }
    }

    private static final class NearbyPlayerDetectedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final Player zzaeI;

        public void zza(OnNearbyPlayerDetectedListener onnearbyplayerdetectedlistener)
        {
            onnearbyplayerdetectedlistener.zza(zzaeI);
        }

        public void zze(Object obj)
        {
            zza((OnNearbyPlayerDetectedListener)obj);
        }

        public void zzhX()
        {
        }
    }

    private static final class NotifyAclLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzC(DataHolder dataholder)
        {
            zzHa.zzd(new LoadAclResultImpl(dataholder));
        }

        NotifyAclLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class NotifyAclUpdatedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzex(int i)
        {
            zzHa.zzd(GamesStatusCodes.zzep(i));
        }

        NotifyAclUpdatedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class OpenSnapshotResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.snapshot.Snapshots.OpenSnapshotResult
    {

        private final Snapshot zzaeJ;
        private final String zzaeK;
        private final Snapshot zzaeL;
        private final Contents zzaeM;
        private final SnapshotContents zzaeN;

        public String getConflictId()
        {
            return zzaeK;
        }

        public Snapshot getConflictingSnapshot()
        {
            return zzaeL;
        }

        public SnapshotContents getResolutionSnapshotContents()
        {
            return zzaeN;
        }

        public Snapshot getSnapshot()
        {
            return zzaeJ;
        }

        OpenSnapshotResultImpl(DataHolder dataholder, Contents contents)
        {
            this(dataholder, null, contents, null, null);
        }

        OpenSnapshotResultImpl(DataHolder dataholder, String s, Contents contents, Contents contents1, Contents contents2)
        {
            SnapshotMetadataBuffer snapshotmetadatabuffer;
            boolean flag;
            flag = true;
            super(dataholder);
            snapshotmetadatabuffer = new SnapshotMetadataBuffer(dataholder);
            if (snapshotmetadatabuffer.getCount() != 0) goto _L2; else goto _L1
_L1:
            zzaeJ = null;
            zzaeL = null;
_L3:
            snapshotmetadatabuffer.release();
            zzaeK = s;
            zzaeM = contents2;
            zzaeN = new SnapshotContentsEntity(contents2);
            return;
_L2:
            if (snapshotmetadatabuffer.getCount() != 1)
            {
                break MISSING_BLOCK_LABEL_144;
            }
            if (dataholder.getStatusCode() == 4004)
            {
                flag = false;
            }
            com.google.android.gms.common.internal.zzb.zzN(flag);
            zzaeJ = new SnapshotEntity(new SnapshotMetadataEntity(snapshotmetadatabuffer.get(0)), new SnapshotContentsEntity(contents));
            zzaeL = null;
              goto _L3
            dataholder;
            snapshotmetadatabuffer.release();
            throw dataholder;
            zzaeJ = new SnapshotEntity(new SnapshotMetadataEntity(snapshotmetadatabuffer.get(0)), new SnapshotContentsEntity(contents));
            zzaeL = new SnapshotEntity(new SnapshotMetadataEntity(snapshotmetadatabuffer.get(1)), new SnapshotContentsEntity(contents1));
              goto _L3
        }
    }

    private static final class OwnerCoverPhotoUrisLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzf(int i, Bundle bundle)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            zzHa.zzd(new LoadOwnerCoverPhotoUrisResultImpl(i, bundle));
        }

        OwnerCoverPhotoUrisLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class P2PConnectedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final String zzaeO;

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener)
        {
            roomstatusupdatelistener.onP2PConnected(zzaeO);
        }

        public void zze(Object obj)
        {
            zza((RoomStatusUpdateListener)obj);
        }

        public void zzhX()
        {
        }

        P2PConnectedNotifier(String s)
        {
            zzaeO = s;
        }
    }

    private static final class P2PDisconnectedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final String zzaeO;

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener)
        {
            roomstatusupdatelistener.onP2PDisconnected(zzaeO);
        }

        public void zze(Object obj)
        {
            zza((RoomStatusUpdateListener)obj);
        }

        public void zzhX()
        {
        }

        P2PDisconnectedNotifier(String s)
        {
            zzaeO = s;
        }
    }

    private static final class PeerConnectedNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeersConnected(room, arraylist);
        }

        PeerConnectedNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PeerDeclinedNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeerDeclined(room, arraylist);
        }

        PeerDeclinedNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PeerDisconnectedNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeersDisconnected(room, arraylist);
        }

        PeerDisconnectedNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PeerInvitedToRoomNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeerInvitedToRoom(room, arraylist);
        }

        PeerInvitedToRoomNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PeerJoinedRoomNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeerJoined(room, arraylist);
        }

        PeerJoinedRoomNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PeerLeftRoomNotifier extends AbstractPeerStatusNotifier
    {

        protected void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room, ArrayList arraylist)
        {
            roomstatusupdatelistener.onPeerLeft(room, arraylist);
        }

        PeerLeftRoomNotifier(DataHolder dataholder, String as[])
        {
            super(dataholder, as);
        }
    }

    private static final class PlayerLeaderboardScoreLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzE(DataHolder dataholder)
        {
            zzHa.zzd(new LoadPlayerScoreResultImpl(dataholder));
        }

        PlayerLeaderboardScoreLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class PlayerXpForGameCategoriesLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzg(int i, Bundle bundle)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            Status status = GamesStatusCodes.zzep(i);
            zzHa.zzd(new LoadXpForGameCategoriesResultImpl(status, bundle));
        }

        PlayerXpForGameCategoriesLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    static final class PlayerXpStreamLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzP(DataHolder dataholder)
        {
            zzHa.zzd(new LoadXpStreamResultImpl(dataholder));
        }

        PlayerXpStreamLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class PlayersLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzg(DataHolder dataholder)
        {
            zzHa.zzd(new LoadPlayersResultImpl(dataholder));
        }

        public void zzh(DataHolder dataholder)
        {
            zzHa.zzd(new LoadPlayersResultImpl(dataholder));
        }

        PlayersLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class PopupLocationInfoBinderCallbacks extends AbstractGamesClient
    {

        private final PopupManager zzadT;

        public PopupLocationInfoParcelable zznk()
        {
            return new PopupLocationInfoParcelable(zzadT.zzof());
        }

        public PopupLocationInfoBinderCallbacks(PopupManager popupmanager)
        {
            zzadT = popupmanager;
        }
    }

    static final class ProfileSettingsLoadedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzQ(DataHolder dataholder)
        {
            zzHa.zzd(new LoadProfileSettingsResultImpl(dataholder));
        }

        ProfileSettingsLoadedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class ProfileSettingsUpdatedBinderCallback extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzez(int i)
        {
            zzHa.zzd(GamesStatusCodes.zzep(i));
        }

        ProfileSettingsUpdatedBinderCallback(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class QuestAcceptedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeP;

        public void zzL(DataHolder dataholder)
        {
            zzaeP.zzd(new AcceptQuestResultImpl(dataholder));
        }

        public QuestAcceptedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeP = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class QuestCompletedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final Quest zzaea;

        public void zza(QuestUpdateListener questupdatelistener)
        {
            questupdatelistener.onQuestCompleted(zzaea);
        }

        public void zze(Object obj)
        {
            zza((QuestUpdateListener)obj);
        }

        public void zzhX()
        {
        }

        QuestCompletedNotifier(Quest quest)
        {
            zzaea = quest;
        }
    }

    private static final class QuestMilestoneClaimBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeQ;
        private final String zzaeR;

        public void zzK(DataHolder dataholder)
        {
            zzaeQ.zzd(new ClaimMilestoneResultImpl(dataholder, zzaeR));
        }

        public QuestMilestoneClaimBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        {
            zzaeQ = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
            zzaeR = (String)zzx.zzb(s, "MilestoneId must not be null");
        }
    }

    private static final class QuestUpdateBinderCallback extends AbstractGamesCallbacks
    {

        private final zze zzTW;

        private Quest zzT(DataHolder dataholder)
        {
            QuestBuffer questbuffer;
            questbuffer = new QuestBuffer(dataholder);
            dataholder = null;
            if (questbuffer.getCount() > 0)
            {
                dataholder = (Quest)((Quest)questbuffer.get(0)).freeze();
            }
            questbuffer.release();
            return dataholder;
            dataholder;
            questbuffer.release();
            throw dataholder;
        }

        public void zzM(DataHolder dataholder)
        {
            dataholder = zzT(dataholder);
            if (dataholder != null)
            {
                zzTW.zza(new QuestCompletedNotifier(dataholder));
            }
        }

        QuestUpdateBinderCallback(zze zze1)
        {
            zzTW = zze1;
        }
    }

    private static final class QuestsLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeS;

        public void zzO(DataHolder dataholder)
        {
            zzaeS.zzd(new LoadQuestsResultImpl(dataholder));
        }

        public QuestsLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeS = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class RealTimeMessageSentNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final int zzLs;
        private final String zzaeT;
        private final int zzaeU;

        public void zza(com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback reliablemessagesentcallback)
        {
            if (reliablemessagesentcallback != null)
            {
                reliablemessagesentcallback.onRealTimeMessageSent(zzLs, zzaeU, zzaeT);
            }
        }

        public void zze(Object obj)
        {
            zza((com.google.android.gms.games.multiplayer.realtime.RealTimeMultiplayer.ReliableMessageSentCallback)obj);
        }

        public void zzhX()
        {
        }

        RealTimeMessageSentNotifier(int i, int j, String s)
        {
            zzLs = i;
            zzaeU = j;
            zzaeT = s;
        }
    }

    private static final class RealTimeReliableMessageBinderCallbacks extends AbstractGamesCallbacks
    {

        final zze zzaeV;

        public void zzb(int i, int j, String s)
        {
            if (zzaeV != null)
            {
                zzaeV.zza(new RealTimeMessageSentNotifier(i, j, s));
            }
        }

        public RealTimeReliableMessageBinderCallbacks(zze zze1)
        {
            zzaeV = zze1;
        }
    }

    private static final class RequestReceivedBinderCallback extends AbstractGamesCallbacks
    {

        private final zze zzTW;

        public void onRequestRemoved(String s)
        {
            zzTW.zza(new RequestRemovedNotifier(s));
        }

        public void zzo(DataHolder dataholder)
        {
            GameRequestBuffer gamerequestbuffer;
            gamerequestbuffer = new GameRequestBuffer(dataholder);
            dataholder = null;
            if (gamerequestbuffer.getCount() > 0)
            {
                dataholder = (GameRequest)((GameRequest)gamerequestbuffer.get(0)).freeze();
            }
            gamerequestbuffer.release();
            if (dataholder != null)
            {
                zzTW.zza(new RequestReceivedNotifier(dataholder));
            }
            return;
            dataholder;
            gamerequestbuffer.release();
            throw dataholder;
        }

        RequestReceivedBinderCallback(zze zze1)
        {
            zzTW = zze1;
        }
    }

    private static final class RequestReceivedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final GameRequest zzaeW;

        public void zza(OnRequestReceivedListener onrequestreceivedlistener)
        {
            onrequestreceivedlistener.onRequestReceived(zzaeW);
        }

        public void zze(Object obj)
        {
            zza((OnRequestReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        RequestReceivedNotifier(GameRequest gamerequest)
        {
            zzaeW = gamerequest;
        }
    }

    private static final class RequestRemovedNotifier
        implements com.google.android.gms.common.api.zze.zzb
    {

        private final String zzxv;

        public void zza(OnRequestReceivedListener onrequestreceivedlistener)
        {
            onrequestreceivedlistener.onRequestRemoved(zzxv);
        }

        public void zze(Object obj)
        {
            zza((OnRequestReceivedListener)obj);
        }

        public void zzhX()
        {
        }

        RequestRemovedNotifier(String s)
        {
            zzxv = s;
        }
    }

    private static final class RequestSentBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeX;

        public void zzG(DataHolder dataholder)
        {
            zzaeX.zzd(new SendRequestResultImpl(dataholder));
        }

        public RequestSentBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeX = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class RequestSummariesLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeY;

        public void zzH(DataHolder dataholder)
        {
            zzaeY.zzd(new LoadRequestSummariesResultImpl(dataholder));
        }

        public RequestSummariesLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeY = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class RequestsLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaeZ;

        public void zze(int i, Bundle bundle)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            Status status = GamesStatusCodes.zzep(i);
            zzaeZ.zzd(new LoadRequestsResultImpl(status, bundle));
        }

        public RequestsLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaeZ = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class RequestsUpdatedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafa;

        public void zzF(DataHolder dataholder)
        {
            zzafa.zzd(new UpdateRequestsResultImpl(dataholder));
        }

        public RequestsUpdatedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class RoomAutoMatchingNotifier extends AbstractRoomStatusNotifier
    {

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room)
        {
            roomstatusupdatelistener.onRoomAutoMatching(room);
        }

        RoomAutoMatchingNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class RoomBinderCallbacks extends AbstractGamesCallbacks
    {

        private final zze zzafb;
        private final zze zzafc;
        private final zze zzafd;

        public void onLeftRoom(int i, String s)
        {
            zzafb.zza(new LeftRoomNotifier(i, s));
        }

        public void onP2PConnected(String s)
        {
            if (zzafc != null)
            {
                zzafc.zza(new P2PConnectedNotifier(s));
            }
        }

        public void onP2PDisconnected(String s)
        {
            if (zzafc != null)
            {
                zzafc.zza(new P2PDisconnectedNotifier(s));
            }
        }

        public void onRealTimeMessageReceived(RealTimeMessage realtimemessage)
        {
            if (zzafd != null)
            {
                zzafd.zza(new MessageReceivedNotifier(realtimemessage));
            }
        }

        public void zzA(DataHolder dataholder)
        {
            if (zzafc != null)
            {
                zzafc.zza(new DisconnectedFromRoomNotifier(dataholder));
            }
        }

        public void zza(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerInvitedToRoomNotifier(dataholder, as));
            }
        }

        public void zzb(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerJoinedRoomNotifier(dataholder, as));
            }
        }

        public void zzc(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerLeftRoomNotifier(dataholder, as));
            }
        }

        public void zzd(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerDeclinedNotifier(dataholder, as));
            }
        }

        public void zze(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerConnectedNotifier(dataholder, as));
            }
        }

        public void zzf(DataHolder dataholder, String as[])
        {
            if (zzafc != null)
            {
                zzafc.zza(new PeerDisconnectedNotifier(dataholder, as));
            }
        }

        public void zzu(DataHolder dataholder)
        {
            zzafb.zza(new RoomCreatedNotifier(dataholder));
        }

        public void zzv(DataHolder dataholder)
        {
            zzafb.zza(new JoinedRoomNotifier(dataholder));
        }

        public void zzw(DataHolder dataholder)
        {
            if (zzafc != null)
            {
                zzafc.zza(new RoomConnectingNotifier(dataholder));
            }
        }

        public void zzx(DataHolder dataholder)
        {
            if (zzafc != null)
            {
                zzafc.zza(new RoomAutoMatchingNotifier(dataholder));
            }
        }

        public void zzy(DataHolder dataholder)
        {
            zzafb.zza(new RoomConnectedNotifier(dataholder));
        }

        public void zzz(DataHolder dataholder)
        {
            if (zzafc != null)
            {
                zzafc.zza(new ConnectedToRoomNotifier(dataholder));
            }
        }

        public RoomBinderCallbacks(zze zze1)
        {
            zzafb = (zze)com.google.android.gms.common.internal.zzx.zzb(zze1, "Callbacks must not be null");
            zzafc = null;
            zzafd = null;
        }

        public RoomBinderCallbacks(zze zze1, zze zze2, zze zze3)
        {
            zzafb = (zze)com.google.android.gms.common.internal.zzx.zzb(zze1, "Callbacks must not be null");
            zzafc = zze2;
            zzafd = zze3;
        }
    }

    private static final class RoomConnectedNotifier extends AbstractRoomNotifier
    {

        public void zza(RoomUpdateListener roomupdatelistener, Room room, int i)
        {
            roomupdatelistener.onRoomConnected(i, room);
        }

        RoomConnectedNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class RoomConnectingNotifier extends AbstractRoomStatusNotifier
    {

        public void zza(RoomStatusUpdateListener roomstatusupdatelistener, Room room)
        {
            roomstatusupdatelistener.onRoomConnecting(room);
        }

        RoomConnectingNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class RoomCreatedNotifier extends AbstractRoomNotifier
    {

        public void zza(RoomUpdateListener roomupdatelistener, Room room, int i)
        {
            roomupdatelistener.onRoomCreated(i, room);
        }

        public RoomCreatedNotifier(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class SendRequestResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.request.Requests.SendRequestResult
    {

        private final GameRequest zzaeW = null;

        SendRequestResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            dataholder = new GameRequestBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaeW = (GameRequest)((GameRequest)dataholder.get(0)).freeze();
_L4:
            dataholder.release();
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.release();
            throw exception;
        }
    }

    private static final class SignOutCompleteBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzhb()
        {
            Status status = GamesStatusCodes.zzep(0);
            zzHa.zzd(status);
        }

        public SignOutCompleteBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class SnapshotCommittedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafe;

        public void zzJ(DataHolder dataholder)
        {
            zzafe.zzd(new CommitSnapshotResultImpl(dataholder));
        }

        public SnapshotCommittedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafe = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    static final class SnapshotDeletedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzh(int i, String s)
        {
            zzHa.zzd(new DeleteSnapshotResultImpl(i, s));
        }

        public SnapshotDeletedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class SnapshotOpenedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzaff;

        public void zza(DataHolder dataholder, Contents contents)
        {
            zzaff.zzd(new OpenSnapshotResultImpl(dataholder, contents));
        }

        public void zza(DataHolder dataholder, String s, Contents contents, Contents contents1, Contents contents2)
        {
            zzaff.zzd(new OpenSnapshotResultImpl(dataholder, s, contents, contents1, contents2));
        }

        public SnapshotOpenedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzaff = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class SnapshotsLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafg;

        public void zzI(DataHolder dataholder)
        {
            zzafg.zzd(new LoadSnapshotsResultImpl(dataholder));
        }

        public SnapshotsLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafg = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class SubmitScoreBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzHa;

        public void zzf(DataHolder dataholder)
        {
            zzHa.zzd(new SubmitScoreResultImpl(dataholder));
        }

        public SubmitScoreBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzHa = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class SubmitScoreResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult
    {

        private final ScoreSubmissionData zzafh;

        public ScoreSubmissionData getScoreData()
        {
            return zzafh;
        }

        public SubmitScoreResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzafh = new ScoreSubmissionData(dataholder);
            dataholder.close();
            return;
            Exception exception;
            exception;
            dataholder.close();
            throw exception;
        }
    }

    private static final class TurnBasedMatchCanceledBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafi;

        public void zzg(int i, String s)
        {
            Status status = GamesStatusCodes.zzep(i);
            zzafi.zzd(new CancelMatchResultImpl(status, s));
        }

        public TurnBasedMatchCanceledBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafi = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class TurnBasedMatchInitiatedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafj;

        public void zzq(DataHolder dataholder)
        {
            zzafj.zzd(new InitiateMatchResultImpl(dataholder));
        }

        public TurnBasedMatchInitiatedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafj = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class TurnBasedMatchLeftBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafk;

        public void zzs(DataHolder dataholder)
        {
            zzafk.zzd(new LeaveMatchResultImpl(dataholder));
        }

        public TurnBasedMatchLeftBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafk = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class TurnBasedMatchLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafl;

        public void zzp(DataHolder dataholder)
        {
            zzafl.zzd(new LoadMatchResultImpl(dataholder));
        }

        public TurnBasedMatchLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafl = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static abstract class TurnBasedMatchResult extends GamesDataHolderResult
    {

        final TurnBasedMatch zzaeG = null;

        public TurnBasedMatch getMatch()
        {
            return zzaeG;
        }

        TurnBasedMatchResult(DataHolder dataholder)
        {
            super(dataholder);
            dataholder = new TurnBasedMatchBuffer(dataholder);
            if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
            zzaeG = (TurnBasedMatch)((TurnBasedMatch)dataholder.get(0)).freeze();
_L4:
            dataholder.release();
            return;
_L2:
            if (true) goto _L4; else goto _L3
_L3:
            Exception exception;
            exception;
            dataholder.release();
            throw exception;
        }
    }

    private static final class TurnBasedMatchUpdatedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafm;

        public void zzr(DataHolder dataholder)
        {
            zzafm.zzd(new UpdateMatchResultImpl(dataholder));
        }

        public TurnBasedMatchUpdatedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafm = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class TurnBasedMatchesLoadedBinderCallbacks extends AbstractGamesCallbacks
    {

        private final com.google.android.gms.common.api.zza.zzb zzafn;

        public void zzd(int i, Bundle bundle)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            Status status = GamesStatusCodes.zzep(i);
            zzafn.zzd(new LoadMatchesResultImpl(status, bundle));
        }

        public TurnBasedMatchesLoadedBinderCallbacks(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzafn = (com.google.android.gms.common.api.zza.zzb)zzx.zzb(zzb1, "Holder must not be null");
        }
    }

    private static final class UpdateAchievementResultImpl
        implements com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult
    {

        private final Status zzHb;
        private final String zzacY;

        public String getAchievementId()
        {
            return zzacY;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        UpdateAchievementResultImpl(int i, String s)
        {
            zzHb = GamesStatusCodes.zzep(i);
            zzacY = s;
        }
    }

    private static final class UpdateMatchResultImpl extends TurnBasedMatchResult
        implements com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.UpdateMatchResult
    {

        UpdateMatchResultImpl(DataHolder dataholder)
        {
            super(dataholder);
        }
    }

    private static final class UpdateRequestsResultImpl extends GamesDataHolderResult
        implements com.google.android.gms.games.request.Requests.UpdateRequestsResult
    {

        private final RequestUpdateOutcomes zzafo;

        public Set getRequestIds()
        {
            return zzafo.getRequestIds();
        }

        public int getRequestOutcome(String s)
        {
            return zzafo.getRequestOutcome(s);
        }

        UpdateRequestsResultImpl(DataHolder dataholder)
        {
            super(dataholder);
            zzafo = RequestUpdateOutcomes.zzW(dataholder);
        }
    }


    EventIncrementManager zzadP;
    private final String zzadQ;
    private PlayerEntity zzadR;
    private GameEntity zzadS;
    private final PopupManager zzadT;
    private boolean zzadU;
    private final Binder zzadV = new Binder();
    private final long zzadW = (long)hashCode();
    private final com.google.android.gms.games.Games.GamesOptions zzadX;

    public GamesClientImpl(Context context, Looper looper, zzf zzf1, com.google.android.gms.games.Games.GamesOptions gamesoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        super(context, looper, 1, connectioncallbacks, onconnectionfailedlistener, zzf1);
        zzadP = new EventIncrementManager() {

            final GamesClientImpl zzadY;

            public EventIncrementCache zznM()
            {
                return zzadY. new GameClientEventIncrementCache();
            }

            
            {
                zzadY = GamesClientImpl.this;
                super();
            }
        };
        zzadU = false;
        zzadQ = zzf1.zziR();
        zzadT = com.google.android.gms.games.internal.PopupManager.zza(this, zzf1.zziO());
        zzl(zzf1.zziT());
        zzadX = gamesoptions;
        registerConnectionCallbacks(this);
        registerConnectionFailedListener(this);
    }

    private static Room zzR(DataHolder dataholder)
    {
        RoomBuffer roombuffer;
        roombuffer = new RoomBuffer(dataholder);
        dataholder = null;
        if (roombuffer.getCount() > 0)
        {
            dataholder = (Room)((Room)roombuffer.get(0)).freeze();
        }
        roombuffer.release();
        return dataholder;
        dataholder;
        roombuffer.release();
        throw dataholder;
    }

    static Room zzS(DataHolder dataholder)
    {
        return zzR(dataholder);
    }

    private void zznn()
    {
        zzadR = null;
        zzadS = null;
    }

    public void connect()
    {
        zznn();
        super.connect();
    }

    public void disconnect()
    {
        zzadU = false;
        if (isConnected())
        {
            try
            {
                IGamesService igamesservice = (IGamesService)zzjb();
                igamesservice.zznL();
                zzadP.flush();
                igamesservice.zzu(zzadW);
            }
            catch (RemoteException remoteexception)
            {
                GamesLog.zzr("GamesClientImpl", "Failed to notify client disconnect.");
            }
        }
        super.disconnect();
    }

    public void onConnected(Bundle bundle)
    {
        if (zzadU)
        {
            zzadT.zzoc();
            zzadU = false;
        }
        if (!zzadX.zzacA)
        {
            zzno();
        }
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        zzadU = false;
    }

    public void onConnectionSuspended(int i)
    {
    }

    public int zza(zze zze1, byte abyte0[], String s, String s1)
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zza(new RealTimeReliableMessageBinderCallbacks(zze1), abyte0, s, s1);
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public int zza(byte abyte0[], String s, String as[])
    {
        zzx.zzb(as, "Participant IDs must not be null");
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zzb(abyte0, s, as);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public Intent zza(int i, int j, boolean flag)
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zza(i, j, flag);
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zza(int i, byte abyte0[], int j, Bitmap bitmap, String s)
    {
        try
        {
            abyte0 = ((IGamesService)zzjb()).zza(i, abyte0, j, s);
            zzx.zzb(bitmap, "Must provide a non null icon");
            abyte0.putExtra("com.google.android.gms.games.REQUEST_ITEM_ICON", bitmap);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return abyte0;
    }

    public Intent zza(PlayerEntity playerentity)
    {
        try
        {
            playerentity = ((IGamesService)zzjb()).zza(playerentity);
        }
        // Misplaced declaration of an exception variable
        catch (PlayerEntity playerentity)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return playerentity;
    }

    public Intent zza(Room room, int i)
    {
        try
        {
            room = ((IGamesService)zzjb()).zza((RoomEntity)room.freeze(), i);
        }
        // Misplaced declaration of an exception variable
        catch (Room room)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return room;
    }

    public Intent zza(String s, boolean flag, boolean flag1, int i)
    {
        try
        {
            s = ((IGamesService)zzjb()).zza(s, flag, flag1, i);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    protected void zza(int i, IBinder ibinder, Bundle bundle)
    {
        if (i == 0 && bundle != null)
        {
            bundle.setClassLoader(com/google/android/gms/games/internal/GamesClientImpl.getClassLoader());
            zzadU = bundle.getBoolean("show_welcome_popup");
            zzadR = (PlayerEntity)bundle.getParcelable("com.google.android.gms.games.current_player");
            zzadS = (GameEntity)bundle.getParcelable("com.google.android.gms.games.current_game");
        }
        super.zza(i, ibinder, bundle);
    }

    public void zza(IBinder ibinder, Bundle bundle)
    {
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_21;
        }
        ((IGamesService)zzjb()).zza(ibinder, bundle);
        return;
        ibinder;
        GamesLog.zzr("GamesClientImpl", "service died");
        return;
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, int j, int k)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestsLoadedBinderCallbacks(zzb1), i, j, k);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, int j, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new ExtendedGamesLoadedBinderCallback(zzb1), i, j, flag, flag1);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, String s, String as[], boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new AppContentLoadedBinderCallbacks(zzb1), i, s, as, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new PlayersLoadedBinderCallback(zzb1), i, flag, flag1);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int i, int ai[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzb1), i, ai);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, LeaderboardScoreBuffer leaderboardscorebuffer, int i, int j)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new LeaderboardScoresLoadedBinderCallback(zzb1), leaderboardscorebuffer.zzoQ().zzoR(), i, j);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, TurnBasedMatchConfig turnbasedmatchconfig)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new TurnBasedMatchInitiatedBinderCallbacks(zzb1), turnbasedmatchconfig.getVariant(), turnbasedmatchconfig.zzoX(), turnbasedmatchconfig.getInvitedPlayerIds(), turnbasedmatchconfig.getAutoMatchCriteria());
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, Snapshot snapshot, SnapshotMetadataChange snapshotmetadatachange)
        throws RemoteException
    {
        SnapshotContents snapshotcontents = snapshot.getSnapshotContents();
        Object obj;
        boolean flag;
        if (!snapshotcontents.isClosed())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Snapshot already closed");
        obj = snapshotmetadatachange.zzpc();
        if (obj != null)
        {
            ((zza) (obj)).zza(getContext().getCacheDir());
        }
        obj = snapshotcontents.zzkq();
        snapshotcontents.close();
        ((IGamesService)zzjb()).zza(new SnapshotCommittedBinderCallbacks(zzb1), snapshot.getMetadata().getSnapshotId(), (SnapshotMetadataChangeEntity)snapshotmetadatachange, ((Contents) (obj)));
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        if (zzb1 == null)
        {
            zzb1 = null;
        } else
        {
            zzb1 = new AchievementUpdatedBinderCallback(zzb1);
        }
        ((IGamesService)zzjb()).zza(zzb1, s, zzadT.zzoe(), zzadT.zzod());
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        if (zzb1 == null)
        {
            zzb1 = null;
        } else
        {
            zzb1 = new AchievementUpdatedBinderCallback(zzb1);
        }
        ((IGamesService)zzjb()).zza(zzb1, s, i, zzadT.zzoe(), zzadT.zzod());
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, int j, int k, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new LeaderboardScoresLoadedBinderCallback(zzb1), s, i, j, k, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        byte byte0 = -1;
        s.hashCode();
        JVM INSTR tableswitch 156408498 156408498: default 24
    //                   156408498 72;
           goto _L1 _L2
_L2:
        if (s.equals("played_with"))
        {
            byte0 = 0;
        }
_L1:
        switch (byte0)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid player collection: ").append(s).toString());

        case 0: // '\0'
            ((IGamesService)zzjb()).zzd(new PlayersLoadedBinderCallback(zzb1), s, i, flag, flag1);
            break;
        }
        return;
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1, boolean flag2, boolean flag3)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new ExtendedGamesLoadedBinderCallback(zzb1), s, i, flag, flag1, flag2, flag3);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, int ai[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new TurnBasedMatchesLoadedBinderCallbacks(zzb1), s, i, ai);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, long l, String s1)
        throws RemoteException
    {
        if (zzb1 == null)
        {
            zzb1 = null;
        } else
        {
            zzb1 = new SubmitScoreBinderCallbacks(zzb1);
        }
        ((IGamesService)zzjb()).zza(zzb1, s, l, s1);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new TurnBasedMatchLeftBinderCallbacks(zzb1), s, s1);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, int j)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new PlayerLeaderboardScoreLoadedBinderCallback(zzb1), s, s1, i, j);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, int j, int k)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestsLoadedBinderCallbacks(zzb1), s, s1, i, j, k);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, int j, int k, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new LeaderboardScoresLoadedBinderCallback(zzb1), s, s1, i, j, k, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        byte byte0 = -1;
        s.hashCode();
        JVM INSTR lookupswitch 3: default 40
    //                   -1049482625: 128
    //                   156408498: 112
    //                   782949780: 96;
           goto _L1 _L2 _L3 _L4
_L1:
        break; /* Loop/switch isn't completed */
_L2:
        break MISSING_BLOCK_LABEL_128;
_L5:
        switch (byte0)
        {
        default:
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid player collection: ").append(s).toString());

        case 0: // '\0'
        case 1: // '\001'
        case 2: // '\002'
            ((IGamesService)zzjb()).zza(new PlayersLoadedBinderCallback(zzb1), s, s1, i, flag, flag1);
            break;
        }
        break MISSING_BLOCK_LABEL_172;
_L4:
        if (s.equals("circled"))
        {
            byte0 = 0;
        }
          goto _L5
_L3:
        if (s.equals("played_with"))
        {
            byte0 = 1;
        }
          goto _L5
        if (s.equals("nearby"))
        {
            byte0 = 2;
        }
          goto _L5
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, SnapshotMetadataChange snapshotmetadatachange, SnapshotContents snapshotcontents)
        throws RemoteException
    {
        Object obj;
        boolean flag;
        if (!snapshotcontents.isClosed())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "SnapshotContents already closed");
        obj = snapshotmetadatachange.zzpc();
        if (obj != null)
        {
            ((zza) (obj)).zza(getContext().getCacheDir());
        }
        obj = snapshotcontents.zzkq();
        snapshotcontents.close();
        ((IGamesService)zzjb()).zza(new SnapshotOpenedBinderCallbacks(zzb1), s, s1, (SnapshotMetadataChangeEntity)snapshotmetadatachange, ((Contents) (obj)));
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new LeaderboardsLoadedBinderCallback(zzb1), s, s1, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, boolean flag, String as[])
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new QuestsLoadedBinderCallbacks(zzb1), s, s1, as, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int ai[], int i, boolean flag)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new QuestsLoadedBinderCallbacks(zzb1), s, s1, ai, i, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, String as[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestsUpdatedBinderCallbacks(zzb1), s, s1, as);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzf(new PlayersLoadedBinderCallback(zzb1), s, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, boolean flag, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new SnapshotOpenedBinderCallbacks(zzb1), s, flag, i);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, byte abyte0[], String s1, ParticipantResult aparticipantresult[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzb1), s, abyte0, s1, aparticipantresult);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, byte abyte0[], ParticipantResult aparticipantresult[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new TurnBasedMatchUpdatedBinderCallbacks(zzb1), s, abyte0, aparticipantresult);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String as[], int i, byte abyte0[], int j)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestSentBinderCallbacks(zzb1), s, as, i, abyte0, j);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new PlayersLoadedBinderCallback(zzb1), flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag, Bundle bundle)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new ContactSettingsUpdatedBinderCallback(zzb1), flag, bundle);
    }

    public transient void zza(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag, String as[])
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new EventsLoadedBinderCallback(zzb1), flag, as);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, int ai[], int i, boolean flag)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new QuestsLoadedBinderCallbacks(zzb1), ai, i, flag);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String as[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new PlayersLoadedBinderCallback(zzb1), as);
    }

    public void zza(zze zze1)
    {
        try
        {
            zze1 = new InvitationReceivedBinderCallback(zze1);
            ((IGamesService)zzjb()).zza(zze1, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zza(zze zze1, zze zze2, zze zze3, RoomConfig roomconfig)
    {
        try
        {
            zze1 = new RoomBinderCallbacks(zze1, zze2, zze3);
            ((IGamesService)zzjb()).zza(zze1, zzadV, roomconfig.getVariant(), roomconfig.getInvitedPlayerIds(), roomconfig.getAutoMatchCriteria(), false, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zza(zze zze1, String s)
    {
        try
        {
            ((IGamesService)zzjb()).zzc(new RoomBinderCallbacks(zze1), s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zza(Snapshot snapshot)
    {
        snapshot = snapshot.getSnapshotContents();
        Contents contents;
        boolean flag;
        if (!snapshot.isClosed())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Snapshot already closed");
        contents = snapshot.zzkq();
        snapshot.close();
        try
        {
            ((IGamesService)zzjb()).zza(contents);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Snapshot snapshot)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    protected IGamesService zzaW(IBinder ibinder)
    {
        return IGamesService.Stub.zzaZ(ibinder);
    }

    public Intent zzb(int i, int j, boolean flag)
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zzb(i, j, flag);
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zzb(int ai[])
    {
        try
        {
            ai = ((IGamesService)zzjb()).zzb(ai);
        }
        // Misplaced declaration of an exception variable
        catch (int ai[])
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return ai;
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new SignOutCompleteBinderCallbacks(zzb1));
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new PlayersLoadedBinderCallback(zzb1), i, flag, flag1);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        if (zzb1 == null)
        {
            zzb1 = null;
        } else
        {
            zzb1 = new AchievementUpdatedBinderCallback(zzb1);
        }
        ((IGamesService)zzjb()).zzb(zzb1, s, zzadT.zzoe(), zzadT.zzod());
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        if (zzb1 == null)
        {
            zzb1 = null;
        } else
        {
            zzb1 = new AchievementUpdatedBinderCallback(zzb1);
        }
        ((IGamesService)zzjb()).zzb(zzb1, s, i, zzadT.zzoe(), zzadT.zzod());
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, int j, int k, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new LeaderboardScoresLoadedBinderCallback(zzb1), s, i, j, k, flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new ExtendedGamesLoadedBinderCallback(zzb1), s, i, flag, flag1);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zzf(new QuestMilestoneClaimBinderCallbacks(zzb1, s1), s, s1);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, int j, int k, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new LeaderboardScoresLoadedBinderCallback(zzb1), s, s1, i, j, k, flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new PlayersLoadedBinderCallback(zzb1), s, s1, i, flag, flag1);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new AchievementsLoadedBinderCallback(zzb1), s, s1, flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String s, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new LeaderboardsLoadedBinderCallback(zzb1), s, flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new LeaderboardsLoadedBinderCallback(zzb1), flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag, String as[])
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zza(new QuestsLoadedBinderCallbacks(zzb1), as, flag);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, String as[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestsUpdatedBinderCallbacks(zzb1), as);
    }

    public void zzb(zze zze1)
    {
        try
        {
            zze1 = new MatchUpdateReceivedBinderCallback(zze1);
            ((IGamesService)zzjb()).zzb(zze1, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zzb(zze zze1, zze zze2, zze zze3, RoomConfig roomconfig)
    {
        try
        {
            zze1 = new RoomBinderCallbacks(zze1, zze2, zze3);
            ((IGamesService)zzjb()).zza(zze1, zzadV, roomconfig.getInvitationId(), false, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zzbO(String s)
    {
        try
        {
            ((IGamesService)zzjb()).zzbW(s);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public Intent zzbP(String s)
    {
        try
        {
            s = ((IGamesService)zzjb()).zzbP(s);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    public void zzbQ(String s)
    {
        try
        {
            ((IGamesService)zzjb()).zza(s, zzadT.zzoe(), zzadT.zzod());
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new InvitationsLoadedBinderCallback(zzb1), i);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new PlayersLoadedBinderCallback(zzb1), i, flag, flag1);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzl(new TurnBasedMatchInitiatedBinderCallbacks(zzb1), s);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new PlayerXpStreamLoadedBinderCallback(zzb1), s, i);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zze(new ExtendedGamesLoadedBinderCallback(zzb1), s, i, flag, flag1);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzd(new TurnBasedMatchInitiatedBinderCallbacks(zzb1), s, s1);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new SnapshotsLoadedBinderCallbacks(zzb1), s, s1, flag);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String s, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzd(new LeaderboardsLoadedBinderCallback(zzb1), s, flag);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new AchievementsLoadedBinderCallback(zzb1), flag);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, String as[])
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new RequestsUpdatedBinderCallbacks(zzb1), as);
    }

    public void zzc(zze zze1)
    {
        try
        {
            zze1 = new QuestUpdateBinderCallback(zze1);
            ((IGamesService)zzjb()).zzd(zze1, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    protected String zzcF()
    {
        return "com.google.android.gms.games.service.START";
    }

    protected String zzcG()
    {
        return "com.google.android.gms.games.internal.IGamesService";
    }

    public int zzd(byte abyte0[], String s)
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zzb(abyte0, s, null);
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zze(new PlayersLoadedBinderCallback(zzb1), i, flag, flag1);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzm(new TurnBasedMatchInitiatedBinderCallbacks(zzb1), s);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new PlayerXpStreamLoadedBinderCallback(zzb1), s, i);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzf(new ExtendedGamesLoadedBinderCallback(zzb1), s, i, flag, flag1);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zze(new TurnBasedMatchInitiatedBinderCallbacks(zzb1), s, s1);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, String s, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new GameMuteStatusChangedBinderCallback(zzb1), s, flag);
    }

    public void zzd(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zzf(new EventsLoadedBinderCallback(zzb1), flag);
    }

    public void zzd(zze zze1)
    {
        try
        {
            zze1 = new RequestReceivedBinderCallback(zze1);
            ((IGamesService)zzjb()).zzc(zze1, zzadW);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (zze zze1)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zze(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzo(new TurnBasedMatchLeftBinderCallbacks(zzb1), s);
    }

    public void zze(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new InvitationsLoadedBinderCallback(zzb1), s, i, false);
    }

    public void zze(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzc(new ExtendedGamesLoadedBinderCallback(zzb1), s, i, flag, flag1);
    }

    public void zze(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzd(new SnapshotsLoadedBinderCallbacks(zzb1), flag);
    }

    public void zzeB(int i)
    {
        zzadT.setGravity(i);
    }

    public void zzeC(int i)
    {
        try
        {
            ((IGamesService)zzjb()).zzeC(i);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    protected List zzf(List list)
    {
        int j = list.size();
        int i = 0;
        boolean flag = false;
        boolean flag1 = false;
        while (i < j) 
        {
            String s = (String)list.get(i);
            if (s.equals("https://www.googleapis.com/auth/games"))
            {
                flag1 = true;
            } else
            if (s.equals("https://www.googleapis.com/auth/games.firstparty"))
            {
                flag = true;
            }
            i++;
        }
        if (flag)
        {
            if (!flag1)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            zzx.zza(flag1, "Cannot have both %s and %s!", new Object[] {
                "https://www.googleapis.com/auth/games", "https://www.googleapis.com/auth/games.firstparty"
            });
            return list;
        } else
        {
            zzx.zza(flag1, "Games APIs requires %s to function.", new Object[] {
                "https://www.googleapis.com/auth/games"
            });
            return list;
        }
    }

    public void zzf(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzd(new GamesLoadedBinderCallback(zzb1));
    }

    public void zzf(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzn(new TurnBasedMatchCanceledBinderCallbacks(zzb1), s);
    }

    public void zzf(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zza(new RequestSummariesLoadedBinderCallbacks(zzb1), s, i);
    }

    public void zzf(com.google.android.gms.common.api.zza.zzb zzb1, String s, int i, boolean flag, boolean flag1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzb(new PlayersLoadedBinderCallback(zzb1), s, i, flag, flag1);
    }

    public void zzf(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzg(new ProfileSettingsLoadedBinderCallback(zzb1), flag);
    }

    public void zzg(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzj(new OwnerCoverPhotoUrisLoadedBinderCallback(zzb1));
    }

    public void zzg(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzp(new TurnBasedMatchLoadedBinderCallbacks(zzb1), s);
    }

    public void zzg(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzh(new ProfileSettingsUpdatedBinderCallback(zzb1), flag);
    }

    public void zzh(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzh(new NotifyAclLoadedBinderCallback(zzb1));
    }

    public void zzh(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        zzadP.flush();
        ((IGamesService)zzjb()).zzu(new QuestAcceptedBinderCallbacks(zzb1), s);
    }

    public void zzh(com.google.android.gms.common.api.zza.zzb zzb1, boolean flag)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zze(new ContactSettingsLoadedBinderCallback(zzb1), flag);
    }

    public boolean zzhc()
    {
        return true;
    }

    public Bundle zzhp()
    {
        Bundle bundle;
        try
        {
            bundle = ((IGamesService)zzjb()).zzhp();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        bundle.setClassLoader(com/google/android/gms/games/internal/GamesClientImpl.getClassLoader());
        return bundle;
    }

    protected Bundle zzhq()
    {
        Object obj = getContext().getResources().getConfiguration().locale.toString();
        Bundle bundle = new Bundle();
        bundle.putString("com.google.android.gms.games.key.gamePackageName", zzadQ);
        bundle.putBoolean("com.google.android.gms.games.key.isHeadless", zzadX.zzacA);
        bundle.putBoolean("com.google.android.gms.games.key.showConnectingPopup", zzadX.zzacB);
        bundle.putInt("com.google.android.gms.games.key.connectingPopupGravity", zzadX.zzacC);
        bundle.putBoolean("com.google.android.gms.games.key.retryingSignIn", zzadX.zzacD);
        bundle.putInt("com.google.android.gms.games.key.sdkVariant", zzadX.zzacE);
        bundle.putString("com.google.android.gms.games.key.forceResolveAccountKey", zzadX.zzacF);
        bundle.putStringArrayList("com.google.android.gms.games.key.proxyApis", zzadX.zzacG);
        bundle.putString("com.google.android.gms.games.key.desiredLocale", ((String) (obj)));
        bundle.putParcelable("com.google.android.gms.games.key.popupWindowToken", new BinderWrapper(zzadT.zzoe()));
        obj = zzja();
        if (((zzf) (obj)).zziU() != null)
        {
            bundle.putBundle("com.google.android.gms.games.key.signInOptions", zzvc.zza(((zzf) (obj)).zziU(), ((zzf) (obj)).zziV(), Executors.newSingleThreadExecutor()));
        }
        return bundle;
    }

    public void zzi(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzt(new InboxCountsLoadedBinderCallback(zzb1), null);
    }

    public void zzi(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzr(new SnapshotDeletedBinderCallbacks(zzb1), s);
    }

    public void zzj(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zze(new ExtendedGamesLoadedBinderCallback(zzb1), s);
    }

    public void zzk(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzf(new GameInstancesLoadedBinderCallback(zzb1), s);
    }

    public void zzl(View view)
    {
        zzadT.zzm(view);
    }

    public void zzl(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzq(new GameSearchSuggestionsLoadedBinderCallback(zzb1), s);
    }

    public void zzm(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzs(new PlayerXpForGameCategoriesLoadedBinderCallback(zzb1), s);
    }

    public void zzn(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzk(new InvitationsLoadedBinderCallback(zzb1), s);
    }

    public void zznA()
    {
        try
        {
            ((IGamesService)zzjb()).zzx(zzadW);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public Intent zznB()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznB();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zznC()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznC();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public int zznD()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznD();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return 4368;
        }
        return i;
    }

    public String zznE()
    {
        String s;
        try
        {
            s = ((IGamesService)zzjb()).zznE();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    public int zznF()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznF();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public Intent zznG()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznG();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public int zznH()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznH();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public int zznI()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznI();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public int zznJ()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznJ();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public int zznK()
    {
        int i;
        try
        {
            i = ((IGamesService)zzjb()).zznK();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return -1;
        }
        return i;
    }

    public void zznL()
    {
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_19;
        }
        ((IGamesService)zzjb()).zznL();
        return;
        RemoteException remoteexception;
        remoteexception;
        GamesLog.zzr("GamesClientImpl", "service died");
        return;
    }

    public void zzno()
    {
        try
        {
            PopupLocationInfoBinderCallbacks popuplocationinfobindercallbacks = new PopupLocationInfoBinderCallbacks(zzadT);
            ((IGamesService)zzjb()).zza(popuplocationinfobindercallbacks, zzadW);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public String zznp()
    {
        String s;
        try
        {
            s = ((IGamesService)zzjb()).zznp();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    public String zznq()
    {
        if (zzadR != null)
        {
            return zzadR.getPlayerId();
        }
        String s;
        try
        {
            s = ((IGamesService)zzjb()).zznq();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    public Player zznr()
    {
        zzfc();
        this;
        JVM INSTR monitorenter ;
        Object obj = zzadR;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        obj = new PlayerBuffer(((IGamesService)zzjb()).zznN());
        if (((PlayerBuffer) (obj)).getCount() > 0)
        {
            zzadR = (PlayerEntity)((PlayerBuffer) (obj)).get(0).freeze();
        }
        ((PlayerBuffer) (obj)).release();
_L1:
        this;
        JVM INSTR monitorexit ;
        return zzadR;
        Exception exception1;
        exception1;
        Exception exception;
        try
        {
            ((PlayerBuffer) (obj)).release();
            throw exception1;
        }
        catch (RemoteException remoteexception) { }
        finally { }
        GamesLog.zzr("GamesClientImpl", "service died");
          goto _L1
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Game zzns()
    {
        zzfc();
        this;
        JVM INSTR monitorenter ;
        Object obj = zzadS;
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_63;
        }
        obj = new GameBuffer(((IGamesService)zzjb()).zznP());
        if (((GameBuffer) (obj)).getCount() > 0)
        {
            zzadS = (GameEntity)((GameBuffer) (obj)).get(0).freeze();
        }
        ((GameBuffer) (obj)).release();
_L1:
        this;
        JVM INSTR monitorexit ;
        return zzadS;
        Exception exception1;
        exception1;
        Exception exception;
        try
        {
            ((GameBuffer) (obj)).release();
            throw exception1;
        }
        catch (RemoteException remoteexception) { }
        finally { }
        GamesLog.zzr("GamesClientImpl", "service died");
          goto _L1
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public Intent zznt()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznt();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zznu()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznu();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zznv()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznv();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public Intent zznw()
    {
        Intent intent;
        try
        {
            intent = ((IGamesService)zzjb()).zznw();
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return intent;
    }

    public void zznx()
    {
        try
        {
            ((IGamesService)zzjb()).zzv(zzadW);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zzny()
    {
        try
        {
            ((IGamesService)zzjb()).zzw(zzadW);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zznz()
    {
        try
        {
            ((IGamesService)zzjb()).zzy(zzadW);
            return;
        }
        catch (RemoteException remoteexception)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public Intent zzo(String s, int i)
    {
        try
        {
            s = ((IGamesService)zzjb()).zzv(s, i);
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
            return null;
        }
        return s;
    }

    public void zzo(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzj(new NotifyAclUpdatedBinderCallback(zzb1), s);
    }

    protected IInterface zzp(IBinder ibinder)
    {
        return zzaW(ibinder);
    }

    public void zzp(com.google.android.gms.common.api.zza.zzb zzb1, String s)
        throws RemoteException
    {
        ((IGamesService)zzjb()).zzi(new GameMuteStatusLoadedBinderCallback(zzb1), s);
    }

    public void zzp(String s, int i)
    {
        zzadP.zzp(s, i);
    }

    public void zzq(String s, int i)
    {
        try
        {
            ((IGamesService)zzjb()).zzq(s, i);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }

    public void zzr(String s, int i)
    {
        try
        {
            ((IGamesService)zzjb()).zzr(s, i);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (String s)
        {
            GamesLog.zzr("GamesClientImpl", "service died");
        }
    }
}
