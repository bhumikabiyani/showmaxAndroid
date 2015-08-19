// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games.multiplayer:
//            Participant, ParticipantEntityCreator, ParticipantResult

public final class ParticipantEntity extends GamesDowngradeableSafeParcel
    implements Participant
{
    static final class ParticipantEntityCreatorCompat extends ParticipantEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzdf(parcel);
        }

        public ParticipantEntity zzdf(Parcel parcel)
        {
            boolean flag = true;
            if (ParticipantEntity.zzc(ParticipantEntity.zzmC()) || ParticipantEntity.zzbN(com/google/android/gms/games/multiplayer/ParticipantEntity.getCanonicalName()))
            {
                return super.zzdf(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            Object obj = parcel.readString();
            Object obj1;
            String s2;
            int i;
            boolean flag1;
            if (obj == null)
            {
                obj = null;
            } else
            {
                obj = Uri.parse(((String) (obj)));
            }
            obj1 = parcel.readString();
            if (obj1 == null)
            {
                obj1 = null;
            } else
            {
                obj1 = Uri.parse(((String) (obj1)));
            }
            i = parcel.readInt();
            s2 = parcel.readString();
            if (parcel.readInt() > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            if (parcel.readInt() <= 0)
            {
                flag = false;
            }
            if (flag)
            {
                parcel = (PlayerEntity)PlayerEntity.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            return new ParticipantEntity(3, s, s1, ((Uri) (obj)), ((Uri) (obj1)), i, s2, flag1, parcel, 7, null, null, null);
        }

        ParticipantEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new ParticipantEntityCreatorCompat();
    private final int zzFG;
    private final int zzIM;
    private final String zzSJ;
    private final Uri zzacc;
    private final Uri zzacd;
    private final String zzacn;
    private final String zzaco;
    private final String zzadN;
    private final PlayerEntity zzadf;
    private final String zzaeO;
    private final boolean zzajD;
    private final ParticipantResult zzajE;
    private final int zzrX;

    ParticipantEntity(int i, String s, String s1, Uri uri, Uri uri1, int j, String s2, 
            boolean flag, PlayerEntity playerentity, int k, ParticipantResult participantresult, String s3, String s4)
    {
        zzFG = i;
        zzaeO = s;
        zzSJ = s1;
        zzacc = uri;
        zzacd = uri1;
        zzrX = j;
        zzadN = s2;
        zzajD = flag;
        zzadf = playerentity;
        zzIM = k;
        zzajE = participantresult;
        zzacn = s3;
        zzaco = s4;
    }

    public ParticipantEntity(Participant participant)
    {
        zzFG = 3;
        zzaeO = participant.getParticipantId();
        zzSJ = participant.getDisplayName();
        zzacc = participant.getIconImageUri();
        zzacd = participant.getHiResImageUri();
        zzrX = participant.getStatus();
        zzadN = participant.zznl();
        zzajD = participant.isConnectedToRoom();
        Object obj = participant.getPlayer();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = new PlayerEntity(((Player) (obj)));
        }
        zzadf = ((PlayerEntity) (obj));
        zzIM = participant.getCapabilities();
        zzajE = participant.getResult();
        zzacn = participant.getIconImageUrl();
        zzaco = participant.getHiResImageUrl();
    }

    static int zza(Participant participant)
    {
        return zzw.hashCode(new Object[] {
            participant.getPlayer(), Integer.valueOf(participant.getStatus()), participant.zznl(), Boolean.valueOf(participant.isConnectedToRoom()), participant.getDisplayName(), participant.getIconImageUri(), participant.getHiResImageUri(), Integer.valueOf(participant.getCapabilities()), participant.getResult(), participant.getParticipantId()
        });
    }

    static boolean zza(Participant participant, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Participant) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (participant == obj) goto _L4; else goto _L3
_L3:
        obj = (Participant)obj;
        if (!zzw.equal(((Participant) (obj)).getPlayer(), participant.getPlayer()) || !zzw.equal(Integer.valueOf(((Participant) (obj)).getStatus()), Integer.valueOf(participant.getStatus())) || !zzw.equal(((Participant) (obj)).zznl(), participant.zznl()) || !zzw.equal(Boolean.valueOf(((Participant) (obj)).isConnectedToRoom()), Boolean.valueOf(participant.isConnectedToRoom())) || !zzw.equal(((Participant) (obj)).getDisplayName(), participant.getDisplayName()) || !zzw.equal(((Participant) (obj)).getIconImageUri(), participant.getIconImageUri()) || !zzw.equal(((Participant) (obj)).getHiResImageUri(), participant.getHiResImageUri()) || !zzw.equal(Integer.valueOf(((Participant) (obj)).getCapabilities()), Integer.valueOf(participant.getCapabilities())) || !zzw.equal(((Participant) (obj)).getResult(), participant.getResult()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((Participant) (obj)).getParticipantId(), participant.getParticipantId())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Participant participant)
    {
        return zzw.zzk(participant).zza("ParticipantId", participant.getParticipantId()).zza("Player", participant.getPlayer()).zza("Status", Integer.valueOf(participant.getStatus())).zza("ClientAddress", participant.zznl()).zza("ConnectedToRoom", Boolean.valueOf(participant.isConnectedToRoom())).zza("DisplayName", participant.getDisplayName()).zza("IconImage", participant.getIconImageUri()).zza("IconImageUrl", participant.getIconImageUrl()).zza("HiResImage", participant.getHiResImageUri()).zza("HiResImageUrl", participant.getHiResImageUrl()).zza("Capabilities", Integer.valueOf(participant.getCapabilities())).zza("Result", participant.getResult()).toString();
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

    public Participant freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public int getCapabilities()
    {
        return zzIM;
    }

    public String getDisplayName()
    {
        if (zzadf == null)
        {
            return zzSJ;
        } else
        {
            return zzadf.getDisplayName();
        }
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        if (zzadf == null)
        {
            zzlw.zzb(zzSJ, chararraybuffer);
            return;
        } else
        {
            zzadf.getDisplayName(chararraybuffer);
            return;
        }
    }

    public Uri getHiResImageUri()
    {
        if (zzadf == null)
        {
            return zzacd;
        } else
        {
            return zzadf.getHiResImageUri();
        }
    }

    public String getHiResImageUrl()
    {
        if (zzadf == null)
        {
            return zzaco;
        } else
        {
            return zzadf.getHiResImageUrl();
        }
    }

    public Uri getIconImageUri()
    {
        if (zzadf == null)
        {
            return zzacc;
        } else
        {
            return zzadf.getIconImageUri();
        }
    }

    public String getIconImageUrl()
    {
        if (zzadf == null)
        {
            return zzacn;
        } else
        {
            return zzadf.getIconImageUrl();
        }
    }

    public String getParticipantId()
    {
        return zzaeO;
    }

    public Player getPlayer()
    {
        return zzadf;
    }

    public ParticipantResult getResult()
    {
        return zzajE;
    }

    public int getStatus()
    {
        return zzrX;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isConnectedToRoom()
    {
        return zzajD;
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
        Object obj = null;
        boolean flag = false;
        if (!zziY())
        {
            ParticipantEntityCreator.zza(this, parcel, i);
        } else
        {
            parcel.writeString(zzaeO);
            parcel.writeString(zzSJ);
            String s;
            int j;
            if (zzacc == null)
            {
                s = null;
            } else
            {
                s = zzacc.toString();
            }
            parcel.writeString(s);
            if (zzacd == null)
            {
                s = obj;
            } else
            {
                s = zzacd.toString();
            }
            parcel.writeString(s);
            parcel.writeInt(zzrX);
            parcel.writeString(zzadN);
            if (zzajD)
            {
                j = 1;
            } else
            {
                j = 0;
            }
            parcel.writeInt(j);
            if (zzadf == null)
            {
                j = ((flag) ? 1 : 0);
            } else
            {
                j = 1;
            }
            parcel.writeInt(j);
            if (zzadf != null)
            {
                zzadf.writeToParcel(parcel, i);
                return;
            }
        }
    }

    public String zznl()
    {
        return zzadN;
    }

}
