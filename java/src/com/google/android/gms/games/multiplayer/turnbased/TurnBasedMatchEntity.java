// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.zzlw;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatch, TurnBasedMatchEntityCreator

public final class TurnBasedMatchEntity
    implements SafeParcelable, TurnBasedMatch
{

    public static final TurnBasedMatchEntityCreator CREATOR = new TurnBasedMatchEntityCreator();
    private final int zzFG;
    private final int zzHe;
    private final String zzZO;
    private final long zzadi;
    private final String zzaeF;
    private final GameEntity zzahV;
    private final int zzajA;
    private final Bundle zzajQ;
    private final String zzajS;
    private final long zzajw;
    private final ArrayList zzajz;
    private final String zzaka;
    private final String zzakb;
    private final int zzakc;
    private final byte zzakd[];
    private final String zzake;
    private final byte zzakf[];
    private final int zzakg;
    private final int zzakh;
    private final boolean zzaki;
    private final String zzakj;

    TurnBasedMatchEntity(int i, GameEntity gameentity, String s, String s1, long l, String s2, 
            long l1, String s3, int j, int k, int i1, byte abyte0[], 
            ArrayList arraylist, String s4, byte abyte1[], int j1, Bundle bundle, int k1, boolean flag, 
            String s5, String s6)
    {
        zzFG = i;
        zzahV = gameentity;
        zzaeF = s;
        zzajS = s1;
        zzajw = l;
        zzaka = s2;
        zzadi = l1;
        zzakb = s3;
        zzakc = j;
        zzakh = k1;
        zzajA = k;
        zzHe = i1;
        zzakd = abyte0;
        zzajz = arraylist;
        zzake = s4;
        zzakf = abyte1;
        zzakg = j1;
        zzajQ = bundle;
        zzaki = flag;
        zzZO = s5;
        zzakj = s6;
    }

    public TurnBasedMatchEntity(TurnBasedMatch turnbasedmatch)
    {
        zzFG = 2;
        zzahV = new GameEntity(turnbasedmatch.getGame());
        zzaeF = turnbasedmatch.getMatchId();
        zzajS = turnbasedmatch.getCreatorId();
        zzajw = turnbasedmatch.getCreationTimestamp();
        zzaka = turnbasedmatch.getLastUpdaterId();
        zzadi = turnbasedmatch.getLastUpdatedTimestamp();
        zzakb = turnbasedmatch.getPendingParticipantId();
        zzakc = turnbasedmatch.getStatus();
        zzakh = turnbasedmatch.getTurnStatus();
        zzajA = turnbasedmatch.getVariant();
        zzHe = turnbasedmatch.getVersion();
        zzake = turnbasedmatch.getRematchId();
        zzakg = turnbasedmatch.getMatchNumber();
        zzajQ = turnbasedmatch.getAutoMatchCriteria();
        zzaki = turnbasedmatch.isLocallyModified();
        zzZO = turnbasedmatch.getDescription();
        zzakj = turnbasedmatch.getDescriptionParticipantId();
        byte abyte0[] = turnbasedmatch.getData();
        int j;
        if (abyte0 == null)
        {
            zzakd = null;
        } else
        {
            zzakd = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, zzakd, 0, abyte0.length);
        }
        abyte0 = turnbasedmatch.getPreviousMatchData();
        if (abyte0 == null)
        {
            zzakf = null;
        } else
        {
            zzakf = new byte[abyte0.length];
            System.arraycopy(abyte0, 0, zzakf, 0, abyte0.length);
        }
        turnbasedmatch = turnbasedmatch.getParticipants();
        j = turnbasedmatch.size();
        zzajz = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzajz.add((ParticipantEntity)(ParticipantEntity)((Participant)turnbasedmatch.get(i)).freeze());
        }

    }

    static int zza(TurnBasedMatch turnbasedmatch)
    {
        return zzw.hashCode(new Object[] {
            turnbasedmatch.getGame(), turnbasedmatch.getMatchId(), turnbasedmatch.getCreatorId(), Long.valueOf(turnbasedmatch.getCreationTimestamp()), turnbasedmatch.getLastUpdaterId(), Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp()), turnbasedmatch.getPendingParticipantId(), Integer.valueOf(turnbasedmatch.getStatus()), Integer.valueOf(turnbasedmatch.getTurnStatus()), turnbasedmatch.getDescription(), 
            Integer.valueOf(turnbasedmatch.getVariant()), Integer.valueOf(turnbasedmatch.getVersion()), turnbasedmatch.getParticipants(), turnbasedmatch.getRematchId(), Integer.valueOf(turnbasedmatch.getMatchNumber()), turnbasedmatch.getAutoMatchCriteria(), Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots()), Boolean.valueOf(turnbasedmatch.isLocallyModified())
        });
    }

    static int zza(TurnBasedMatch turnbasedmatch, String s)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)arraylist.get(i);
            if (participant.getParticipantId().equals(s))
            {
                return participant.getStatus();
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(turnbasedmatch.getMatchId()).toString());
    }

    static boolean zza(TurnBasedMatch turnbasedmatch, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof TurnBasedMatch) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (turnbasedmatch == obj) goto _L4; else goto _L3
_L3:
        obj = (TurnBasedMatch)obj;
        if (!zzw.equal(((TurnBasedMatch) (obj)).getGame(), turnbasedmatch.getGame()) || !zzw.equal(((TurnBasedMatch) (obj)).getMatchId(), turnbasedmatch.getMatchId()) || !zzw.equal(((TurnBasedMatch) (obj)).getCreatorId(), turnbasedmatch.getCreatorId()) || !zzw.equal(Long.valueOf(((TurnBasedMatch) (obj)).getCreationTimestamp()), Long.valueOf(turnbasedmatch.getCreationTimestamp())) || !zzw.equal(((TurnBasedMatch) (obj)).getLastUpdaterId(), turnbasedmatch.getLastUpdaterId()) || !zzw.equal(Long.valueOf(((TurnBasedMatch) (obj)).getLastUpdatedTimestamp()), Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp())) || !zzw.equal(((TurnBasedMatch) (obj)).getPendingParticipantId(), turnbasedmatch.getPendingParticipantId()) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getStatus()), Integer.valueOf(turnbasedmatch.getStatus())) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getTurnStatus()), Integer.valueOf(turnbasedmatch.getTurnStatus())) || !zzw.equal(((TurnBasedMatch) (obj)).getDescription(), turnbasedmatch.getDescription()) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getVariant()), Integer.valueOf(turnbasedmatch.getVariant())) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getVersion()), Integer.valueOf(turnbasedmatch.getVersion())) || !zzw.equal(((TurnBasedMatch) (obj)).getParticipants(), turnbasedmatch.getParticipants()) || !zzw.equal(((TurnBasedMatch) (obj)).getRematchId(), turnbasedmatch.getRematchId()) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getMatchNumber()), Integer.valueOf(turnbasedmatch.getMatchNumber())) || !zzw.equal(((TurnBasedMatch) (obj)).getAutoMatchCriteria(), turnbasedmatch.getAutoMatchCriteria()) || !zzw.equal(Integer.valueOf(((TurnBasedMatch) (obj)).getAvailableAutoMatchSlots()), Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Boolean.valueOf(((TurnBasedMatch) (obj)).isLocallyModified()), Boolean.valueOf(turnbasedmatch.isLocallyModified()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(TurnBasedMatch turnbasedmatch)
    {
        return zzw.zzk(turnbasedmatch).zza("Game", turnbasedmatch.getGame()).zza("MatchId", turnbasedmatch.getMatchId()).zza("CreatorId", turnbasedmatch.getCreatorId()).zza("CreationTimestamp", Long.valueOf(turnbasedmatch.getCreationTimestamp())).zza("LastUpdaterId", turnbasedmatch.getLastUpdaterId()).zza("LastUpdatedTimestamp", Long.valueOf(turnbasedmatch.getLastUpdatedTimestamp())).zza("PendingParticipantId", turnbasedmatch.getPendingParticipantId()).zza("MatchStatus", Integer.valueOf(turnbasedmatch.getStatus())).zza("TurnStatus", Integer.valueOf(turnbasedmatch.getTurnStatus())).zza("Description", turnbasedmatch.getDescription()).zza("Variant", Integer.valueOf(turnbasedmatch.getVariant())).zza("Data", turnbasedmatch.getData()).zza("Version", Integer.valueOf(turnbasedmatch.getVersion())).zza("Participants", turnbasedmatch.getParticipants()).zza("RematchId", turnbasedmatch.getRematchId()).zza("PreviousData", turnbasedmatch.getPreviousMatchData()).zza("MatchNumber", Integer.valueOf(turnbasedmatch.getMatchNumber())).zza("AutoMatchCriteria", turnbasedmatch.getAutoMatchCriteria()).zza("AvailableAutoMatchSlots", Integer.valueOf(turnbasedmatch.getAvailableAutoMatchSlots())).zza("LocallyModified", Boolean.valueOf(turnbasedmatch.isLocallyModified())).zza("DescriptionParticipantId", turnbasedmatch.getDescriptionParticipantId()).toString();
    }

    static String zzb(TurnBasedMatch turnbasedmatch, String s)
    {
        turnbasedmatch = turnbasedmatch.getParticipants();
        int j = turnbasedmatch.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)turnbasedmatch.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(s))
            {
                return participant.getParticipantId();
            }
        }

        return null;
    }

    static Participant zzc(TurnBasedMatch turnbasedmatch, String s)
    {
        ArrayList arraylist = turnbasedmatch.getParticipants();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)arraylist.get(i);
            if (participant.getParticipantId().equals(s))
            {
                return participant;
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(turnbasedmatch.getMatchId()).toString());
    }

    static ArrayList zzc(TurnBasedMatch turnbasedmatch)
    {
        turnbasedmatch = turnbasedmatch.getParticipants();
        int j = turnbasedmatch.size();
        ArrayList arraylist = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            arraylist.add(((Participant)turnbasedmatch.get(i)).getParticipantId());
        }

        return arraylist;
    }

    public boolean canRematch()
    {
        return zzakc == 2 && zzake == null;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public TurnBasedMatch freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public Bundle getAutoMatchCriteria()
    {
        return zzajQ;
    }

    public int getAvailableAutoMatchSlots()
    {
        if (zzajQ == null)
        {
            return 0;
        } else
        {
            return zzajQ.getInt("max_automatch_players");
        }
    }

    public long getCreationTimestamp()
    {
        return zzajw;
    }

    public String getCreatorId()
    {
        return zzajS;
    }

    public byte[] getData()
    {
        return zzakd;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public Participant getDescriptionParticipant()
    {
        String s = getDescriptionParticipantId();
        if (s == null)
        {
            return null;
        } else
        {
            return getParticipant(s);
        }
    }

    public String getDescriptionParticipantId()
    {
        return zzakj;
    }

    public Game getGame()
    {
        return zzahV;
    }

    public long getLastUpdatedTimestamp()
    {
        return zzadi;
    }

    public String getLastUpdaterId()
    {
        return zzaka;
    }

    public String getMatchId()
    {
        return zzaeF;
    }

    public int getMatchNumber()
    {
        return zzakg;
    }

    public Participant getParticipant(String s)
    {
        return zzc(this, s);
    }

    public String getParticipantId(String s)
    {
        return zzb(this, s);
    }

    public ArrayList getParticipantIds()
    {
        return zzc(this);
    }

    public int getParticipantStatus(String s)
    {
        return zza(this, s);
    }

    public ArrayList getParticipants()
    {
        return new ArrayList(zzajz);
    }

    public String getPendingParticipantId()
    {
        return zzakb;
    }

    public byte[] getPreviousMatchData()
    {
        return zzakf;
    }

    public String getRematchId()
    {
        return zzake;
    }

    public int getStatus()
    {
        return zzakc;
    }

    public int getTurnStatus()
    {
        return zzakh;
    }

    public int getVariant()
    {
        return zzajA;
    }

    public int getVersion()
    {
        return zzHe;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isLocallyModified()
    {
        return zzaki;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        TurnBasedMatchEntityCreator.zza(this, parcel, i);
    }

}
