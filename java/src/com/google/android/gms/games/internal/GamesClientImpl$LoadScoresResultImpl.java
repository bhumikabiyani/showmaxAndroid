// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;
import com.google.android.gms.games.leaderboard.LeaderboardEntity;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeB extends 
    implements com.google.android.gms.games.leaderboard.eB
{

    private final LeaderboardEntity zzaeA = null;
    private final LeaderboardScoreBuffer zzaeB;

    public Leaderboard getLeaderboard()
    {
        return zzaeA;
    }

    public LeaderboardScoreBuffer getScores()
    {
        return zzaeB;
    }

    (DataHolder dataholder, DataHolder dataholder1)
    {
        super(dataholder1);
        dataholder = new LeaderboardBuffer(dataholder);
        if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
        zzaeA = (LeaderboardEntity)((Leaderboard)dataholder.get(0)).freeze();
_L4:
        dataholder.release();
        zzaeB = new LeaderboardScoreBuffer(dataholder1);
        return;
_L2:
        if (true) goto _L4; else goto _L3
_L3:
        dataholder1;
        dataholder.release();
        throw dataholder1;
    }
}
