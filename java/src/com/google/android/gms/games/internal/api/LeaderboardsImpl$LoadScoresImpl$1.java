// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.Leaderboard;
import com.google.android.gms.games.leaderboard.LeaderboardScoreBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            LeaderboardsImpl

class zzGT
    implements com.google.android.gms.games.leaderboard.
{

    final Status zzGT;
    final zzGT zzagr;

    public Leaderboard getLeaderboard()
    {
        return null;
    }

    public LeaderboardScoreBuffer getScores()
    {
        return new LeaderboardScoreBuffer(DataHolder.zzay(14));
    }

    public Status getStatus()
    {
        return zzGT;
    }

    public void release()
    {
    }

    Q(Q q, Status status)
    {
        zzagr = q;
        zzGT = status;
        super();
    }
}
