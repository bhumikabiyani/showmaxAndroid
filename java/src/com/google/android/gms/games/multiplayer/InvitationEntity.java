// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Invitation, Participant, ParticipantEntity, InvitationEntityCreator

public final class InvitationEntity extends GamesDowngradeableSafeParcel
    implements Invitation
{
    static final class InvitationEntityCreatorCompat extends InvitationEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzde(parcel);
        }

        public InvitationEntity zzde(Parcel parcel)
        {
            if (InvitationEntity.zzc(InvitationEntity.zzmC()) || InvitationEntity.zzbN(com/google/android/gms/games/multiplayer/InvitationEntity.getCanonicalName()))
            {
                return super.zzde(parcel);
            }
            GameEntity gameentity = (GameEntity)GameEntity.CREATOR.createFromParcel(parcel);
            String s = parcel.readString();
            long l = parcel.readLong();
            int j = parcel.readInt();
            ParticipantEntity participantentity = (ParticipantEntity)ParticipantEntity.CREATOR.createFromParcel(parcel);
            int k = parcel.readInt();
            ArrayList arraylist = new ArrayList(k);
            for (int i = 0; i < k; i++)
            {
                arraylist.add(ParticipantEntity.CREATOR.createFromParcel(parcel));
            }

            return new InvitationEntity(2, gameentity, s, l, j, participantentity, arraylist, -1, 0);
        }

        InvitationEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new InvitationEntityCreatorCompat();
    private final int zzFG;
    private final String zzaek;
    private final GameEntity zzahV;
    private final int zzajA;
    private final int zzajB;
    private final long zzajw;
    private final int zzajx;
    private final ParticipantEntity zzajy;
    private final ArrayList zzajz;

    InvitationEntity(int i, GameEntity gameentity, String s, long l, int j, ParticipantEntity participantentity, 
            ArrayList arraylist, int k, int i1)
    {
        zzFG = i;
        zzahV = gameentity;
        zzaek = s;
        zzajw = l;
        zzajx = j;
        zzajy = participantentity;
        zzajz = arraylist;
        zzajA = k;
        zzajB = i1;
    }

    InvitationEntity(Invitation invitation)
    {
        zzFG = 2;
        zzahV = new GameEntity(invitation.getGame());
        zzaek = invitation.getInvitationId();
        zzajw = invitation.getCreationTimestamp();
        zzajx = invitation.getInvitationType();
        zzajA = invitation.getVariant();
        zzajB = invitation.getAvailableAutoMatchSlots();
        String s = invitation.getInviter().getParticipantId();
        Object obj = null;
        ArrayList arraylist = invitation.getParticipants();
        int j = arraylist.size();
        zzajz = new ArrayList(j);
        int i = 0;
        invitation = obj;
        for (; i < j; i++)
        {
            Participant participant = (Participant)arraylist.get(i);
            if (participant.getParticipantId().equals(s))
            {
                invitation = participant;
            }
            zzajz.add((ParticipantEntity)participant.freeze());
        }

        zzx.zzb(invitation, "Must have a valid inviter!");
        zzajy = (ParticipantEntity)invitation.freeze();
    }

    static int zza(Invitation invitation)
    {
        return zzw.hashCode(new Object[] {
            invitation.getGame(), invitation.getInvitationId(), Long.valueOf(invitation.getCreationTimestamp()), Integer.valueOf(invitation.getInvitationType()), invitation.getInviter(), invitation.getParticipants(), Integer.valueOf(invitation.getVariant()), Integer.valueOf(invitation.getAvailableAutoMatchSlots())
        });
    }

    static boolean zza(Invitation invitation, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Invitation) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (invitation == obj) goto _L4; else goto _L3
_L3:
        obj = (Invitation)obj;
        if (!zzw.equal(((Invitation) (obj)).getGame(), invitation.getGame()) || !zzw.equal(((Invitation) (obj)).getInvitationId(), invitation.getInvitationId()) || !zzw.equal(Long.valueOf(((Invitation) (obj)).getCreationTimestamp()), Long.valueOf(invitation.getCreationTimestamp())) || !zzw.equal(Integer.valueOf(((Invitation) (obj)).getInvitationType()), Integer.valueOf(invitation.getInvitationType())) || !zzw.equal(((Invitation) (obj)).getInviter(), invitation.getInviter()) || !zzw.equal(((Invitation) (obj)).getParticipants(), invitation.getParticipants()) || !zzw.equal(Integer.valueOf(((Invitation) (obj)).getVariant()), Integer.valueOf(invitation.getVariant())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Integer.valueOf(((Invitation) (obj)).getAvailableAutoMatchSlots()), Integer.valueOf(invitation.getAvailableAutoMatchSlots()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Invitation invitation)
    {
        return zzw.zzk(invitation).zza("Game", invitation.getGame()).zza("InvitationId", invitation.getInvitationId()).zza("CreationTimestamp", Long.valueOf(invitation.getCreationTimestamp())).zza("InvitationType", Integer.valueOf(invitation.getInvitationType())).zza("Inviter", invitation.getInviter()).zza("Participants", invitation.getParticipants()).zza("Variant", Integer.valueOf(invitation.getVariant())).zza("AvailableAutoMatchSlots", Integer.valueOf(invitation.getAvailableAutoMatchSlots())).toString();
    }

    static boolean zzbN(String s)
    {
        return zzbf(s);
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

    public Invitation freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public int getAvailableAutoMatchSlots()
    {
        return zzajB;
    }

    public long getCreationTimestamp()
    {
        return zzajw;
    }

    public Game getGame()
    {
        return zzahV;
    }

    public String getInvitationId()
    {
        return zzaek;
    }

    public int getInvitationType()
    {
        return zzajx;
    }

    public Participant getInviter()
    {
        return zzajy;
    }

    public ArrayList getParticipants()
    {
        return new ArrayList(zzajz);
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
            InvitationEntityCreator.zza(this, parcel, i);
        } else
        {
            zzahV.writeToParcel(parcel, i);
            parcel.writeString(zzaek);
            parcel.writeLong(zzajw);
            parcel.writeInt(zzajx);
            zzajy.writeToParcel(parcel, i);
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
