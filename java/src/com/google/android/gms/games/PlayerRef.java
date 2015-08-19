// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.database.CharArrayBuffer;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.internal.player.MostRecentGameInfo;
import com.google.android.gms.games.internal.player.MostRecentGameInfoRef;
import com.google.android.gms.games.internal.player.PlayerColumnNames;

// Referenced classes of package com.google.android.gms.games:
//            Player, PlayerLevel, PlayerLevelInfo, PlayerEntity

public final class PlayerRef extends zzd
    implements Player
{

    private final PlayerLevelInfo zzacM;
    private final PlayerColumnNames zzacW;
    private final MostRecentGameInfoRef zzacX;

    public PlayerRef(DataHolder dataholder, int i)
    {
        this(dataholder, i, null);
    }

    public PlayerRef(DataHolder dataholder, int i, String s)
    {
        super(dataholder, i);
        zzacW = new PlayerColumnNames(s);
        zzacX = new MostRecentGameInfoRef(dataholder, i, zzacW);
        if (zzmG())
        {
            i = getInteger(zzacW.zzaiy);
            int j = getInteger(zzacW.zzaiB);
            s = new PlayerLevel(i, getLong(zzacW.zzaiz), getLong(zzacW.zzaiA));
            if (i != j)
            {
                dataholder = new PlayerLevel(j, getLong(zzacW.zzaiA), getLong(zzacW.zzaiC));
            } else
            {
                dataholder = s;
            }
            zzacM = new PlayerLevelInfo(getLong(zzacW.zzaix), getLong(zzacW.zzaiD), s, dataholder);
            return;
        } else
        {
            zzacM = null;
            return;
        }
    }

    private boolean zzmG()
    {
        while (zzbc(zzacW.zzaix) || getLong(zzacW.zzaix) == -1L) 
        {
            return false;
        }
        return true;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return PlayerEntity.zza(this, obj);
    }

    public Player freeze()
    {
        return new PlayerEntity(this);
    }

    public volatile Object freeze()
    {
        return freeze();
    }

    public String getDisplayName()
    {
        return getString(zzacW.zzaip);
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        zza(zzacW.zzaip, chararraybuffer);
    }

    public Uri getHiResImageUri()
    {
        return zzbb(zzacW.zzais);
    }

    public String getHiResImageUrl()
    {
        return getString(zzacW.zzait);
    }

    public Uri getIconImageUri()
    {
        return zzbb(zzacW.zzaiq);
    }

    public String getIconImageUrl()
    {
        return getString(zzacW.zzair);
    }

    public long getLastPlayedWithTimestamp()
    {
        if (!zzba(zzacW.zzaiw) || zzbc(zzacW.zzaiw))
        {
            return -1L;
        } else
        {
            return getLong(zzacW.zzaiw);
        }
    }

    public PlayerLevelInfo getLevelInfo()
    {
        return zzacM;
    }

    public String getPlayerId()
    {
        return getString(zzacW.zzaio);
    }

    public long getRetrievedTimestamp()
    {
        return getLong(zzacW.zzaiu);
    }

    public String getTitle()
    {
        return getString(zzacW.zzaiE);
    }

    public void getTitle(CharArrayBuffer chararraybuffer)
    {
        zza(zzacW.zzaiE, chararraybuffer);
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
        return PlayerEntity.zzb(this);
    }

    public boolean isProfileVisible()
    {
        return getBoolean(zzacW.zzaiG);
    }

    public String toString()
    {
        return PlayerEntity.zzc(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((PlayerEntity)freeze()).writeToParcel(parcel, i);
    }

    public boolean zzmD()
    {
        return getBoolean(zzacW.zzaiN);
    }

    public int zzmE()
    {
        return getInteger(zzacW.zzaiv);
    }

    public MostRecentGameInfo zzmF()
    {
        if (zzbc(zzacW.zzaiH))
        {
            return null;
        } else
        {
            return zzacX;
        }
    }
}
