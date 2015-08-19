// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameRef;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            Leaderboard, LeaderboardEntity, LeaderboardVariantRef

public final class LeaderboardRef extends zzd
    implements Leaderboard
{

    private final int zzadF;
    private final Game zzaiU;

    LeaderboardRef(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        zzadF = j;
        zzaiU = new GameRef(dataholder, i);
    }

    public boolean equals(Object obj)
    {
        return LeaderboardEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzoP();
    }

    public String getDisplayName()
    {
        return getString("name");
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        zza("name", chararraybuffer);
    }

    public Game getGame()
    {
        return zzaiU;
    }

    public Uri getIconImageUri()
    {
        return zzbb("board_icon_image_uri");
    }

    public String getIconImageUrl()
    {
        return getString("board_icon_image_url");
    }

    public String getLeaderboardId()
    {
        return getString("external_leaderboard_id");
    }

    public int getScoreOrder()
    {
        return getInteger("score_order");
    }

    public ArrayList getVariants()
    {
        ArrayList arraylist = new ArrayList(zzadF);
        for (int i = 0; i < zzadF; i++)
        {
            arraylist.add(new LeaderboardVariantRef(zzMd, zzNQ + i));
        }

        return arraylist;
    }

    public int hashCode()
    {
        return LeaderboardEntity.zza(this);
    }

    public String toString()
    {
        return LeaderboardEntity.zzb(this);
    }

    public Leaderboard zzoP()
    {
        return new LeaderboardEntity(this);
    }
}
