// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.internal.GamesDowngradeableSafeParcel;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            GameBadge, GameBadgeEntityCreator

public final class GameBadgeEntity extends GamesDowngradeableSafeParcel
    implements GameBadge
{
    static final class GameBadgeEntityCreatorCompat extends GameBadgeEntityCreator
    {

        public Object createFromParcel(Parcel parcel)
        {
            return zzda(parcel);
        }

        public GameBadgeEntity zzda(Parcel parcel)
        {
            if (GameBadgeEntity.zzc(GameBadgeEntity.zzmC()) || GameBadgeEntity.zzbN(com/google/android/gms/games/internal/game/GameBadgeEntity.getCanonicalName()))
            {
                return super.zzda(parcel);
            }
            int i = parcel.readInt();
            String s = parcel.readString();
            String s1 = parcel.readString();
            parcel = parcel.readString();
            if (parcel == null)
            {
                parcel = null;
            } else
            {
                parcel = Uri.parse(parcel);
            }
            return new GameBadgeEntity(1, i, s, s1, parcel);
        }

        GameBadgeEntityCreatorCompat()
        {
        }
    }


    public static final GameBadgeEntityCreator CREATOR = new GameBadgeEntityCreatorCompat();
    private final int zzFG;
    private int zzJp;
    private String zzSy;
    private String zzZO;
    private Uri zzacc;

    GameBadgeEntity(int i, int j, String s, String s1, Uri uri)
    {
        zzFG = i;
        zzJp = j;
        zzSy = s;
        zzZO = s1;
        zzacc = uri;
    }

    public GameBadgeEntity(GameBadge gamebadge)
    {
        zzFG = 1;
        zzJp = gamebadge.getType();
        zzSy = gamebadge.getTitle();
        zzZO = gamebadge.getDescription();
        zzacc = gamebadge.getIconImageUri();
    }

    static int zza(GameBadge gamebadge)
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(gamebadge.getType()), gamebadge.getTitle(), gamebadge.getDescription(), gamebadge.getIconImageUri()
        });
    }

    static boolean zza(GameBadge gamebadge, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof GameBadge) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (gamebadge == obj) goto _L4; else goto _L3
_L3:
        obj = (GameBadge)obj;
        if (!zzw.equal(Integer.valueOf(((GameBadge) (obj)).getType()), gamebadge.getTitle()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((GameBadge) (obj)).getDescription(), gamebadge.getIconImageUri())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(GameBadge gamebadge)
    {
        return zzw.zzk(gamebadge).zza("Type", Integer.valueOf(gamebadge.getType())).zza("Title", gamebadge.getTitle()).zza("Description", gamebadge.getDescription()).zza("IconImageUri", gamebadge.getIconImageUri()).toString();
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

    public Object freeze()
    {
        return zzot();
    }

    public String getDescription()
    {
        return zzZO;
    }

    public Uri getIconImageUri()
    {
        return zzacc;
    }

    public String getTitle()
    {
        return zzSy;
    }

    public int getType()
    {
        return zzJp;
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
            GameBadgeEntityCreator.zza(this, parcel, i);
            return;
        }
        parcel.writeInt(zzJp);
        parcel.writeString(zzSy);
        parcel.writeString(zzZO);
        String s;
        if (zzacc == null)
        {
            s = null;
        } else
        {
            s = zzacc.toString();
        }
        parcel.writeString(s);
    }

    public GameBadge zzot()
    {
        return this;
    }

}
