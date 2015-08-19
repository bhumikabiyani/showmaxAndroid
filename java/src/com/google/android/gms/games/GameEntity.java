// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games:
//            Game, GameEntityCreator

public final class GameEntity extends GamesDowngradeableSafeParcel
    implements Game
{
    static final class GameEntityCreatorCompat extends GameEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzcP(parcel);
        }

        public GameEntity zzcP(Parcel parcel)
        {
            if (GameEntity.zzc(GameEntity.zzmC()) || GameEntity.zzbN(com/google/android/gms/games/GameEntity.getCanonicalName()))
            {
                return super.zzcP(parcel);
            }
            String s = parcel.readString();
            String s1 = parcel.readString();
            String s2 = parcel.readString();
            String s3 = parcel.readString();
            String s4 = parcel.readString();
            String s5 = parcel.readString();
            Object obj = parcel.readString();
            Object obj1;
            Object obj2;
            boolean flag;
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
            obj2 = parcel.readString();
            if (obj2 == null)
            {
                obj2 = null;
            } else
            {
                obj2 = Uri.parse(((String) (obj2)));
            }
            if (parcel.readInt() > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (parcel.readInt() > 0)
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            return new GameEntity(6, s, s1, s2, s3, s4, s5, ((Uri) (obj)), ((Uri) (obj1)), ((Uri) (obj2)), flag, flag1, parcel.readString(), parcel.readInt(), parcel.readInt(), parcel.readInt(), false, false, null, null, null, false, false, false, null, false);
        }

        GameEntityCreatorCompat()
        {
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new GameEntityCreatorCompat();
    private final int zzFG;
    private final String zzIm;
    private final String zzSJ;
    private final String zzZO;
    private final String zzabZ;
    private final String zzaca;
    private final String zzacb;
    private final Uri zzacc;
    private final Uri zzacd;
    private final Uri zzace;
    private final boolean zzacf;
    private final boolean zzacg;
    private final String zzach;
    private final int zzaci;
    private final int zzacj;
    private final int zzack;
    private final boolean zzacl;
    private final boolean zzacm;
    private final String zzacn;
    private final String zzaco;
    private final String zzacp;
    private final boolean zzacq;
    private final boolean zzacr;
    private final boolean zzacs;
    private final String zzact;
    private final boolean zzacu;

    GameEntity(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            Uri uri, Uri uri1, Uri uri2, boolean flag, boolean flag1, String s6, int j, 
            int k, int l, boolean flag2, boolean flag3, String s7, String s8, String s9, 
            boolean flag4, boolean flag5, boolean flag6, String s10, boolean flag7)
    {
        zzFG = i;
        zzIm = s;
        zzSJ = s1;
        zzabZ = s2;
        zzaca = s3;
        zzZO = s4;
        zzacb = s5;
        zzacc = uri;
        zzacn = s7;
        zzacd = uri1;
        zzaco = s8;
        zzace = uri2;
        zzacp = s9;
        zzacf = flag;
        zzacg = flag1;
        zzach = s6;
        zzaci = j;
        zzacj = k;
        zzack = l;
        zzacl = flag2;
        zzacm = flag3;
        zzacq = flag4;
        zzacr = flag5;
        zzacs = flag6;
        zzact = s10;
        zzacu = flag7;
    }

    public GameEntity(Game game)
    {
        zzFG = 6;
        zzIm = game.getApplicationId();
        zzabZ = game.getPrimaryCategory();
        zzaca = game.getSecondaryCategory();
        zzZO = game.getDescription();
        zzacb = game.getDeveloperName();
        zzSJ = game.getDisplayName();
        zzacc = game.getIconImageUri();
        zzacn = game.getIconImageUrl();
        zzacd = game.getHiResImageUri();
        zzaco = game.getHiResImageUrl();
        zzace = game.getFeaturedImageUri();
        zzacp = game.getFeaturedImageUrl();
        zzacf = game.zzmx();
        zzacg = game.zzmz();
        zzach = game.zzmA();
        zzaci = game.zzmB();
        zzacj = game.getAchievementTotalCount();
        zzack = game.getLeaderboardCount();
        zzacl = game.isRealTimeMultiplayerEnabled();
        zzacm = game.isTurnBasedMultiplayerEnabled();
        zzacq = game.isMuted();
        zzacr = game.zzmy();
        zzacs = game.areSnapshotsEnabled();
        zzact = game.getThemeColor();
        zzacu = game.hasGamepadSupport();
    }

    static int zza(Game game)
    {
        return zzw.hashCode(new Object[] {
            game.getApplicationId(), game.getDisplayName(), game.getPrimaryCategory(), game.getSecondaryCategory(), game.getDescription(), game.getDeveloperName(), game.getIconImageUri(), game.getHiResImageUri(), game.getFeaturedImageUri(), Boolean.valueOf(game.zzmx()), 
            Boolean.valueOf(game.zzmz()), game.zzmA(), Integer.valueOf(game.zzmB()), Integer.valueOf(game.getAchievementTotalCount()), Integer.valueOf(game.getLeaderboardCount()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isTurnBasedMultiplayerEnabled()), Boolean.valueOf(game.isMuted()), Boolean.valueOf(game.zzmy()), Boolean.valueOf(game.areSnapshotsEnabled()), 
            game.getThemeColor(), Boolean.valueOf(game.hasGamepadSupport())
        });
    }

    static boolean zza(Game game, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Game) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (game == obj) goto _L4; else goto _L3
_L3:
        obj = (Game)obj;
        if (!zzw.equal(((Game) (obj)).getApplicationId(), game.getApplicationId()) || !zzw.equal(((Game) (obj)).getDisplayName(), game.getDisplayName()) || !zzw.equal(((Game) (obj)).getPrimaryCategory(), game.getPrimaryCategory()) || !zzw.equal(((Game) (obj)).getSecondaryCategory(), game.getSecondaryCategory()) || !zzw.equal(((Game) (obj)).getDescription(), game.getDescription()) || !zzw.equal(((Game) (obj)).getDeveloperName(), game.getDeveloperName()) || !zzw.equal(((Game) (obj)).getIconImageUri(), game.getIconImageUri()) || !zzw.equal(((Game) (obj)).getHiResImageUri(), game.getHiResImageUri()) || !zzw.equal(((Game) (obj)).getFeaturedImageUri(), game.getFeaturedImageUri()) || !zzw.equal(Boolean.valueOf(((Game) (obj)).zzmx()), Boolean.valueOf(game.zzmx())) || !zzw.equal(Boolean.valueOf(((Game) (obj)).zzmz()), Boolean.valueOf(game.zzmz())) || !zzw.equal(((Game) (obj)).zzmA(), game.zzmA()) || !zzw.equal(Integer.valueOf(((Game) (obj)).zzmB()), Integer.valueOf(game.zzmB())) || !zzw.equal(Integer.valueOf(((Game) (obj)).getAchievementTotalCount()), Integer.valueOf(game.getAchievementTotalCount())) || !zzw.equal(Integer.valueOf(((Game) (obj)).getLeaderboardCount()), Integer.valueOf(game.getLeaderboardCount())) || !zzw.equal(Boolean.valueOf(((Game) (obj)).isRealTimeMultiplayerEnabled()), Boolean.valueOf(game.isRealTimeMultiplayerEnabled())))
        {
            break; /* Loop/switch isn't completed */
        }
        boolean flag2 = ((Game) (obj)).isTurnBasedMultiplayerEnabled();
        if (game.isTurnBasedMultiplayerEnabled() && zzw.equal(Boolean.valueOf(((Game) (obj)).isMuted()), Boolean.valueOf(game.isMuted())) && zzw.equal(Boolean.valueOf(((Game) (obj)).zzmy()), Boolean.valueOf(game.zzmy())))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!zzw.equal(Boolean.valueOf(flag2), Boolean.valueOf(flag)) || !zzw.equal(Boolean.valueOf(((Game) (obj)).areSnapshotsEnabled()), Boolean.valueOf(game.areSnapshotsEnabled())) || !zzw.equal(((Game) (obj)).getThemeColor(), game.getThemeColor()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(Boolean.valueOf(((Game) (obj)).hasGamepadSupport()), Boolean.valueOf(game.hasGamepadSupport()))) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Game game)
    {
        return zzw.zzk(game).zza("ApplicationId", game.getApplicationId()).zza("DisplayName", game.getDisplayName()).zza("PrimaryCategory", game.getPrimaryCategory()).zza("SecondaryCategory", game.getSecondaryCategory()).zza("Description", game.getDescription()).zza("DeveloperName", game.getDeveloperName()).zza("IconImageUri", game.getIconImageUri()).zza("IconImageUrl", game.getIconImageUrl()).zza("HiResImageUri", game.getHiResImageUri()).zza("HiResImageUrl", game.getHiResImageUrl()).zza("FeaturedImageUri", game.getFeaturedImageUri()).zza("FeaturedImageUrl", game.getFeaturedImageUrl()).zza("PlayEnabledGame", Boolean.valueOf(game.zzmx())).zza("InstanceInstalled", Boolean.valueOf(game.zzmz())).zza("InstancePackageName", game.zzmA()).zza("AchievementTotalCount", Integer.valueOf(game.getAchievementTotalCount())).zza("LeaderboardCount", Integer.valueOf(game.getLeaderboardCount())).zza("RealTimeMultiplayerEnabled", Boolean.valueOf(game.isRealTimeMultiplayerEnabled())).zza("TurnBasedMultiplayerEnabled", Boolean.valueOf(game.isTurnBasedMultiplayerEnabled())).zza("AreSnapshotsEnabled", Boolean.valueOf(game.areSnapshotsEnabled())).zza("ThemeColor", game.getThemeColor()).zza("HasGamepadSupport", Boolean.valueOf(game.hasGamepadSupport())).toString();
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

    public boolean areSnapshotsEnabled()
    {
        return zzacs;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Game freeze()
    {
        return this;
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public int getAchievementTotalCount()
    {
        return zzacj;
    }

    public String getApplicationId()
    {
        return zzIm;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public void getDescription(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzZO, chararraybuffer);
    }

    public String getDeveloperName()
    {
        return zzacb;
    }

    public void getDeveloperName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzacb, chararraybuffer);
    }

    public String getDisplayName()
    {
        return zzSJ;
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzSJ, chararraybuffer);
    }

    public Uri getFeaturedImageUri()
    {
        return zzace;
    }

    public String getFeaturedImageUrl()
    {
        return zzacp;
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

    public int getLeaderboardCount()
    {
        return zzack;
    }

    public String getPrimaryCategory()
    {
        return zzabZ;
    }

    public String getSecondaryCategory()
    {
        return zzaca;
    }

    public String getThemeColor()
    {
        return zzact;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public boolean hasGamepadSupport()
    {
        return zzacu;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public boolean isMuted()
    {
        return zzacq;
    }

    public boolean isRealTimeMultiplayerEnabled()
    {
        return zzacl;
    }

    public boolean isTurnBasedMultiplayerEnabled()
    {
        return zzacm;
    }

    public String toString()
    {
        return zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        boolean flag = true;
        Object obj = null;
        if (!zziY())
        {
            GameEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeString(zzIm);
        parcel.writeString(zzSJ);
        parcel.writeString(zzabZ);
        parcel.writeString(zzaca);
        parcel.writeString(zzZO);
        parcel.writeString(zzacb);
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
            s = null;
        } else
        {
            s = zzacd.toString();
        }
        parcel.writeString(s);
        if (zzace == null)
        {
            s = obj;
        } else
        {
            s = zzace.toString();
        }
        parcel.writeString(s);
        if (zzacf)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        parcel.writeInt(i);
        if (zzacg)
        {
            i = ((flag) ? 1 : 0);
        } else
        {
            i = 0;
        }
        parcel.writeInt(i);
        parcel.writeString(zzach);
        parcel.writeInt(zzaci);
        parcel.writeInt(zzacj);
        parcel.writeInt(zzack);
    }

    public String zzmA()
    {
        return zzach;
    }

    public int zzmB()
    {
        return zzaci;
    }

    public boolean zzmx()
    {
        return zzacf;
    }

    public boolean zzmy()
    {
        return zzacr;
    }

    public boolean zzmz()
    {
        return zzacg;
    }

}
