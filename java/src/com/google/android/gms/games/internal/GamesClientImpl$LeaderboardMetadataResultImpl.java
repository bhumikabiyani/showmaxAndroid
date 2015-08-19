// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzael extends zzael
    implements com.google.android.gms.games.leaderboard.el
{

    private final LeaderboardBuffer zzael;

    public LeaderboardBuffer getLeaderboards()
    {
        return zzael;
    }

    Y(DataHolder dataholder)
    {
        super(dataholder);
        zzael = new LeaderboardBuffer(dataholder);
    }
}
