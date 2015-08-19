// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import com.google.android.gms.games.snapshot.SnapshotMetadata;
import com.google.android.gms.games.snapshot.SnapshotMetadataRef;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGame, ExtendedGameEntity, GameBadgeRef

public class ExtendedGameRef extends zzd
    implements ExtendedGame
{

    private final int zzadF;
    private final GameRef zzahU;
    private final SnapshotMetadataRef zzaig;

    ExtendedGameRef(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        zzahU = new GameRef(dataholder, i);
        zzadF = j;
        if (zzba("external_snapshot_id") && !zzbc("external_snapshot_id"))
        {
            zzaig = new SnapshotMetadataRef(dataholder, i);
            return;
        } else
        {
            zzaig = null;
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return ExtendedGameEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzos();
    }

    public Game getGame()
    {
        return zzahU;
    }

    public int hashCode()
    {
        return ExtendedGameEntity.zza(this);
    }

    public String toString()
    {
        return ExtendedGameEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((ExtendedGameEntity)zzos()).writeToParcel(parcel, i);
    }

    public ArrayList zzoh()
    {
        int i = 0;
        if (zzMd.zzc("badge_title", zzNQ, zzMd.zzax(zzNQ)) == null)
        {
            return new ArrayList(0);
        }
        ArrayList arraylist = new ArrayList(zzadF);
        for (; i < zzadF; i++)
        {
            arraylist.add(new GameBadgeRef(zzMd, zzNQ + i));
        }

        return arraylist;
    }

    public int zzoi()
    {
        return getInteger("availability");
    }

    public boolean zzoj()
    {
        return getBoolean("owned");
    }

    public int zzok()
    {
        return getInteger("achievement_unlocked_count");
    }

    public long zzol()
    {
        return getLong("last_played_server_time");
    }

    public long zzom()
    {
        return getLong("price_micros");
    }

    public String zzon()
    {
        return getString("formatted_price");
    }

    public long zzoo()
    {
        return getLong("full_price_micros");
    }

    public String zzop()
    {
        return getString("formatted_full_price");
    }

    public SnapshotMetadata zzoq()
    {
        return zzaig;
    }

    public ExtendedGame zzos()
    {
        return new ExtendedGameEntity(this);
    }
}
