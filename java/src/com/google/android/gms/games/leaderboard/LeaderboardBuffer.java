// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            LeaderboardRef, Leaderboard

public final class LeaderboardBuffer extends zzg
{

    public LeaderboardBuffer(DataHolder dataholder)
    {
        super(dataholder);
    }

    protected String zziB()
    {
        return "external_leaderboard_id";
    }

    protected Object zzj(int i, int j)
    {
        return zzo(i, j);
    }

    protected Leaderboard zzo(int i, int j)
    {
        return new LeaderboardRef(zzMd, i, j);
    }
}
