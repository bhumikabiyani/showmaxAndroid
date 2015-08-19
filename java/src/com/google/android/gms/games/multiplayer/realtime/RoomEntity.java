// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.database.CharArrayBuffer;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.multiplayer.Participant;
import com.google.android.gms.games.multiplayer.ParticipantEntity;
import com.google.android.gms.internal.zzlw;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            Room, RoomEntityCreator

public final class RoomEntity extends GamesDowngradeableSafeParcel
    implements Room
{
    static final class RoomEntityCreatorCompat extends RoomEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzdh(parcel);
        }

        public RoomEntity zzdh(Parcel parcel)
        {
            if (RoomEntity.zzc(RoomEntity.zzmC()) || RoomEntity.zzbN(com/google/android/gms/games/multiplayer/realtime/RoomEntity.getCanonicalName()))
            {
                return super.zzdh(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            long l1 = parcel.readLong();
            int j = parcel.readInt();
            String s2 = parcel.readString();
            int k = parcel.readInt();
            Bundle bundle = parcel.readBundle();
            int l = parcel.readInt();
            ArrayList arraylist = new ArrayList(l);
            for (int i = 0; i < l; i++)
            {
                arraylist.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }

            return new RoomEntity(2, s, s1, l1, j, s2, k, bundle, arraylist, -1);
        }

        RoomEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new RoomEntityCreatorCompat();
    private final int zzFG;
    private final String zzZO;
    private final String zzaem;
    private final int zzajA;
    private final Bundle zzajQ;
    private final String zzajS;
    private final int zzajT;
    private final int zzajU;
    private final long zzajw;
    private final ArrayList zzajz;

    RoomEntity(int i, String s, String s1, long l, int j, String s2, 
            int k, Bundle bundle, ArrayList arraylist, int i1)
    {
        zzFG = i;
        zzaem = s;
        zzajS = s1;
        zzajw = l;
        zzajT = j;
        zzZO = s2;
        zzajA = k;
        zzajQ = bundle;
        zzajz = arraylist;
        zzajU = i1;
    }

    public RoomEntity(Room room)
    {
        zzFG = 2;
        zzaem = room.getRoomId();
        zzajS = room.getCreatorId();
        zzajw = room.getCreationTimestamp();
        zzajT = room.getStatus();
        zzZO = room.getDescription();
        zzajA = room.getVariant();
        zzajQ = room.getAutoMatchCriteria();
        ArrayList arraylist = room.getParticipants();
        int j = arraylist.size();
        zzajz = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzajz.add((ParticipantEntity)((Participant)arraylist.get(i)).freeze());
        }

        zzajU = room.getAutoMatchWaitEstimateSeconds();
    }

    static int zza(Room room)
    {
        return zzw.hashCode(new Object[] {
            room.getRoomId(), room.getCreatorId(), Long.valueOf(room.getCreationTimestamp()), Integer.valueOf(room.getStatus()), room.getDescription(), Integer.valueOf(room.getVariant()), room.getAutoMatchCriteria(), room.getParticipants(), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())
        });
    }

    static int zza(Room room, String s)
    {
        ArrayList arraylist = room.getParticipants();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)arraylist.get(i);
            if (participant.getParticipantId().equals(s))
            {
                return participant.getStatus();
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in room ").append(room.getRoomId()).toString());
    }

    static boolean zza(Room room, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Room) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (room == obj) goto _L4; else goto _L3
_L3:
        obj = (Room)obj;
        if (!zzw.equal(((Room) (obj)).getRoomId(), room.getRoomId()) || !zzw.equal(((Room) (obj)).getCreatorId(), room.getCreatorId()) || !zzw.equal(Long.valueOf(((Room) (obj)).getCreationTimestamp()), Long.valueOf(room.getCreationTimestamp())) || !zzw.equal(Integer.valueOf(((Room) (obj)).getStatus()), Integer.valueOf(room.getStatus())) || !zzw.equal(((Room) (obj)).getDescription(), room.getDescription()) || !zzw.equal(Integer.valueOf(((Room) (obj)).getVariant()), Integer.valueOf(room.getVariant())) || !zzw.equal(((Room) (obj)).getAutoMatchCriteria(), room.getAutoMatchCriteria()) || !zzw.equal(((Room) (obj)).getParticipants(), room.getParticipants()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Integer.valueOf(((Room) (obj)).getAutoMatchWaitEstimateSeconds()), Integer.valueOf(room.getAutoMatchWaitEstimateSeconds()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Room room)
    {
        return zzw.zzk(room).zza("RoomId", room.getRoomId()).zza("CreatorId", room.getCreatorId()).zza("CreationTimestamp", Long.valueOf(room.getCreationTimestamp())).zza("RoomStatus", Integer.valueOf(room.getStatus())).zza("Description", room.getDescription()).zza("Variant", Integer.valueOf(room.getVariant())).zza("AutoMatchCriteria", room.getAutoMatchCriteria()).zza("Participants", room.getParticipants()).zza("AutoMatchWaitEstimateSeconds", Integer.valueOf(room.getAutoMatchWaitEstimateSeconds())).toString();
    }

    static String zzb(Room room, String s)
    {
        room = room.getParticipants();
        int j = room.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)room.get(i);
            Player player = participant.getPlayer();
            if (player != null && player.getPlayerId().equals(s))
            {
                return participant.getParticipantId();
            }
        }

        return null;
    }

    static boolean zzbN(String s)
    {
        return zzbf(s);
    }

    static Participant zzc(Room room, String s)
    {
        ArrayList arraylist = room.getParticipants();
        int j = arraylist.size();
        for (int i = 0; i < j; i++)
        {
            Participant participant = (Participant)arraylist.get(i);
            if (participant.getParticipantId().equals(s))
            {
                return participant;
            }
        }

        throw new IllegalStateException((new StringBuilder()).append("Participant ").append(s).append(" is not in match ").append(room.getRoomId()).toString());
    }

    static ArrayList zzc(Room room)
    {
        room = room.getParticipants();
        int j = room.size();
        ArrayList arraylist = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            arraylist.add(((Participant)room.get(i)).getParticipantId());
        }

        return arraylist;
    }

    static boolean zzc(Integer integer)
    {
        return zzd(integer);
    }

    static Integer zzmC()
    {
        return zziX();
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Room freeze()
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

    public int getAutoMatchWaitEstimateSeconds()
    {
        return zzajU;
    }

    public long getCreationTimestamp()
    {
        return zzajw;
    }

    public String getCreatorId()
    {
        return zzajS;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
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

    public String getRoomId()
    {
        return zzaem;
    }

    public int getStatus()
    {
        return zzajT;
    }

    public int getVariant()
    {
        return zzajA;
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

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        if (!zziY())
        {
            RoomEntityCreator.zza(this, parcel, i);
        } else
        {
            parcel.writeString(zzaem);
            parcel.writeString(zzajS);
            parcel.writeLong(zzajw);
            parcel.writeInt(zzajT);
            parcel.writeString(zzZO);
            parcel.writeInt(zzajA);
            parcel.writeBundle(zzajQ);
            int k = zzajz.size();
            parcel.writeInt(k);
            int j = 0;
            while (j < k) 
            {
                ((ParticipantEntity)zzajz.get(j)).writeToParcel(parcel, i);
                j++;
            }
        }
    }

}
