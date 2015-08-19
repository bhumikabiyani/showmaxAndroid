// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.games.internal.player:
//            MostRecentGameInfo, MostRecentGameInfoEntityCreator

public final class MostRecentGameInfoEntity
    implements SafeParcelable, MostRecentGameInfo
{

    public static final MostRecentGameInfoEntityCreator CREATOR = new MostRecentGameInfoEntityCreator();
    private final int zzFG;
    private final String zzaii;
    private final String zzaij;
    private final long zzaik;
    private final Uri zzail;
    private final Uri zzaim;
    private final Uri zzain;

    MostRecentGameInfoEntity(int i, String s, String s1, long l, Uri uri, Uri uri1, 
            Uri uri2)
    {
        zzFG = i;
        zzaii = s;
        zzaij = s1;
        zzaik = l;
        zzail = uri;
        zzaim = uri1;
        zzain = uri2;
    }

    public MostRecentGameInfoEntity(MostRecentGameInfo mostrecentgameinfo)
    {
        zzFG = 2;
        zzaii = mostrecentgameinfo.zzoF();
        zzaij = mostrecentgameinfo.zzoG();
        zzaik = mostrecentgameinfo.zzoH();
        zzail = mostrecentgameinfo.zzoI();
        zzaim = mostrecentgameinfo.zzoJ();
        zzain = mostrecentgameinfo.zzoK();
    }

    static int zza(MostRecentGameInfo mostrecentgameinfo)
    {
        return zzw.hashCode(new Object[] {
            mostrecentgameinfo.zzoF(), mostrecentgameinfo.zzoG(), Long.valueOf(mostrecentgameinfo.zzoH()), mostrecentgameinfo.zzoI(), mostrecentgameinfo.zzoJ(), mostrecentgameinfo.zzoK()
        });
    }

    static boolean zza(MostRecentGameInfo mostrecentgameinfo, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof MostRecentGameInfo) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (mostrecentgameinfo == obj) goto _L4; else goto _L3
_L3:
        obj = (MostRecentGameInfo)obj;
        if (!zzw.equal(((MostRecentGameInfo) (obj)).zzoF(), mostrecentgameinfo.zzoF()) || !zzw.equal(((MostRecentGameInfo) (obj)).zzoG(), mostrecentgameinfo.zzoG()) || !zzw.equal(Long.valueOf(((MostRecentGameInfo) (obj)).zzoH()), Long.valueOf(mostrecentgameinfo.zzoH())) || !zzw.equal(((MostRecentGameInfo) (obj)).zzoI(), mostrecentgameinfo.zzoI()) || !zzw.equal(((MostRecentGameInfo) (obj)).zzoJ(), mostrecentgameinfo.zzoJ()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((MostRecentGameInfo) (obj)).zzoK(), mostrecentgameinfo.zzoK())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(MostRecentGameInfo mostrecentgameinfo)
    {
        return zzw.zzk(mostrecentgameinfo).zza("GameId", mostrecentgameinfo.zzoF()).zza("GameName", mostrecentgameinfo.zzoG()).zza("ActivityTimestampMillis", Long.valueOf(mostrecentgameinfo.zzoH())).zza("GameIconUri", mostrecentgameinfo.zzoI()).zza("GameHiResUri", mostrecentgameinfo.zzoJ()).zza("GameFeaturedUri", mostrecentgameinfo.zzoK()).toString();
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
        return zzoL();
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
        MostRecentGameInfoEntityCreator.zza(this, parcel, i);
    }

    public String zzoF()
    {
        return zzaii;
    }

    public String zzoG()
    {
        return zzaij;
    }

    public long zzoH()
    {
        return zzaik;
    }

    public Uri zzoI()
    {
        return zzail;
    }

    public Uri zzoJ()
    {
        return zzaim;
    }

    public Uri zzoK()
    {
        return zzain;
    }

    public MostRecentGameInfo zzoL()
    {
        return this;
    }

}
