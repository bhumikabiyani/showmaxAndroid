// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoEntity;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games:
//            Player, PlayerEntityCreator, PlayerLevelInfo

public final class PlayerEntity extends GamesDowngradeableSafeParcel
    implements Player
{
    static final class PlayerEntityCreatorCompat extends PlayerEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzcQ(parcel);
        }

        public PlayerEntity zzcQ(Parcel parcel)
        {
            if (PlayerEntity.zzc(PlayerEntity.zzmC()) || PlayerEntity.zzbN(com/google/android/gms/games/PlayerEntity.getCanonicalName()))
            {
                return super.zzcQ(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            Object obj = parcel.readString();
            Object obj1 = parcel.readString();
            if (obj == null)
            {
                obj = null;
            } else
            {
                obj = Uri.parse(((String) (obj)));
            }
            if (obj1 == null)
            {
                obj1 = null;
            } else
            {
                obj1 = Uri.parse(((String) (obj1)));
            }
            return new PlayerEntity(12, s, s1, ((Uri) (obj)), ((Uri) (obj1)), parcel.readLong(), -1, -1L, null, null, null, null, null, true, false);
        }

        PlayerEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new PlayerEntityCreatorCompat();
    private final int zzFG;
    private final String zzSJ;
    private final String zzSy;
    private final String zzacH;
    private final long zzacI;
    private final int zzacJ;
    private final long zzacK;
    private final MostRecentGameInfoEntity zzacL;
    private final PlayerLevelInfo zzacM;
    private final boolean zzacN;
    private final boolean zzacO;
    private final Uri zzacc;
    private final Uri zzacd;
    private final String zzacn;
    private final String zzaco;

    PlayerEntity(int i, String s, String s1, Uri uri, Uri uri1, long l, 
            int j, long l1, String s2, String s3, String s4, MostRecentGameInfoEntity mostrecentgameinfoentity, 
            PlayerLevelInfo playerlevelinfo, boolean flag, boolean flag1)
    {
        zzFG = i;
        zzacH = s;
        zzSJ = s1;
        zzacc = uri;
        zzacn = s2;
        zzacd = uri1;
        zzaco = s3;
        zzacI = l;
        zzacJ = j;
        zzacK = l1;
        zzSy = s4;
        zzacN = flag;
        zzacL = mostrecentgameinfoentity;
        zzacM = playerlevelinfo;
        zzacO = flag1;
    }

    public PlayerEntity(Player player)
    {
        zzFG = 12;
        zzacH = player.getPlayerId();
        zzSJ = player.getDisplayName();
        zzacc = player.getIconImageUri();
        zzacn = player.getIconImageUrl();
        zzacd = player.getHiResImageUri();
        zzaco = player.getHiResImageUrl();
        zzacI = player.getRetrievedTimestamp();
        zzacJ = player.zzmE();
        zzacK = player.getLastPlayedWithTimestamp();
        zzSy = player.getTitle();
        zzacN = player.isProfileVisible();
        Object obj = player.zzmF();
        boolean flag;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = new MostRecentGameInfoEntity(((MostRecentGameInfo) (obj)));
        }
        zzacL = ((MostRecentGameInfoEntity) (obj));
        zzacM = player.getLevelInfo();
        zzacO = player.zzmD();
        com.google.android.gms.common.internal.zzb.zzh(zzacH);
        com.google.android.gms.common.internal.zzb.zzh(zzSJ);
        if (zzacI > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        com.google.android.gms.common.internal.zzb.zzN(flag);
    }

    static boolean zza(Player player, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Player) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (player == obj) goto _L4; else goto _L3
_L3:
        obj = (Player)obj;
        if (!zzw.equal(((Player) (obj)).getPlayerId(), player.getPlayerId()) || !zzw.equal(((Player) (obj)).getDisplayName(), player.getDisplayName()) || !zzw.equal(Boolean.valueOf(((Player) (obj)).zzmD()), Boolean.valueOf(player.zzmD())) || !zzw.equal(((Player) (obj)).getIconImageUri(), player.getIconImageUri()) || !zzw.equal(((Player) (obj)).getHiResImageUri(), player.getHiResImageUri()) || !zzw.equal(Long.valueOf(((Player) (obj)).getRetrievedTimestamp()), Long.valueOf(player.getRetrievedTimestamp())) || !zzw.equal(((Player) (obj)).getTitle(), player.getTitle()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((Player) (obj)).getLevelInfo(), player.getLevelInfo())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static int zzb(Player player)
    {
        return zzw.hashCode(new Object[] {
            player.getPlayerId(), player.getDisplayName(), Boolean.valueOf(player.zzmD()), player.getIconImageUri(), player.getHiResImageUri(), Long.valueOf(player.getRetrievedTimestamp()), player.getTitle(), player.getLevelInfo()
        });
    }

    static boolean zzbN(String s)
    {
        return zzbf(s);
    }

    static String zzc(Player player)
    {
        return zzw.zzk(player).zza("PlayerId", player.getPlayerId()).zza("DisplayName", player.getDisplayName()).zza("HasDebugAccess", Boolean.valueOf(player.zzmD())).zza("IconImageUri", player.getIconImageUri()).zza("IconImageUrl", player.getIconImageUrl()).zza("HiResImageUri", player.getHiResImageUri()).zza("HiResImageUrl", player.getHiResImageUrl()).zza("RetrievedTimestamp", Long.valueOf(player.getRetrievedTimestamp())).zza("Title", player.getTitle()).zza("LevelInfo", player.getLevelInfo()).toString();
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

    public Player freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public String getDisplayName()
    {
        return zzSJ;
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzSJ, chararraybuffer);
    }

    public Uri getHiResImageUri()
    {
        return zzacd;
    }

    public String getHiResImageUrl()
    {
        return zzaco;
    }

    public Uri getIconImageUri()
    {
        return zzacc;
    }

    public String getIconImageUrl()
    {
        return zzacn;
    }

    public long getLastPlayedWithTimestamp()
    {
        return zzacK;
    }

    public PlayerLevelInfo getLevelInfo()
    {
        return zzacM;
    }

    public String getPlayerId()
    {
        return zzacH;
    }

    public long getRetrievedTimestamp()
    {
        return zzacI;
    }

    public String getTitle()
    {
        return zzSy;
    }

    public void getTitle(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzSy, chararraybuffer);
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public boolean hasHiResImage()
    {
        return getHiResImageUri() != null;
    }

    public boolean hasIconImage()
    {
        return getIconImageUri() != null;
    }

    public int hashCode()
    {
        return zzb(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isProfileVisible()
    {
        return zzacN;
    }

    public String toString()
    {
        return zzc(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        Object obj = null;
        if (!zziY())
        {
            PlayerEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(zzacH);
        parcel.writeString(zzSJ);
        String s;
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
        parcel.writeLong(zzacI);
    }

    public boolean zzmD()
    {
        return zzacO;
    }

    public int zzmE()
    {
        return zzacJ;
    }

    public MostRecentGameInfo zzmF()
    {
        return zzacL;
    }

}
