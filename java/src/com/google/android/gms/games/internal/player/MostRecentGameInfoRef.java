// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;

// Referenced classes of package com.google.android.gms.games.internal.player:
//            MostRecentGameInfo, MostRecentGameInfoEntity, PlayerColumnNames

public final class MostRecentGameInfoRef extends zzd
    implements MostRecentGameInfo
{

    private final PlayerColumnNames zzacW;

    public MostRecentGameInfoRef(DataHolder dataholder, int i, PlayerColumnNames playercolumnnames)
    {
        super(dataholder, i);
        zzacW = playercolumnnames;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return MostRecentGameInfoEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzoL();
    }

    public int hashCode()
    {
        return MostRecentGameInfoEntity.zza(this);
    }

    public String toString()
    {
        return MostRecentGameInfoEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((MostRecentGameInfoEntity)zzoL()).writeToParcel(parcel, i);
    }

    public String zzoF()
    {
        return getString(zzacW.zzaiH);
    }

    public String zzoG()
    {
        return getString(zzacW.zzaiI);
    }

    public long zzoH()
    {
        return getLong(zzacW.zzaiJ);
    }

    public Uri zzoI()
    {
        return zzbb(zzacW.zzaiK);
    }

    public Uri zzoJ()
    {
        return zzbb(zzacW.zzaiL);
    }

    public Uri zzoK()
    {
        return zzbb(zzacW.zzaiM);
    }

    public MostRecentGameInfo zzoL()
    {
        return new MostRecentGameInfoEntity(this);
    }
}
