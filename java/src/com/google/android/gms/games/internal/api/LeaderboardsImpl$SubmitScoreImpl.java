// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.ScoreSubmissionData;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            LeaderboardsImpl

protected static abstract class _cls1.zzGT extends com.google.android.gms.games.mitScoreImpl
{

    public Result createFailedResult(Status status)
    {
        return zzW(status);
    }

    public com.google.android.gms.games.leaderboard. zzW(Status status)
    {
        return new com.google.android.gms.games.leaderboard.Leaderboards.SubmitScoreResult(status) {

            final Status zzGT;
            final LeaderboardsImpl.SubmitScoreImpl zzags;

            public ScoreSubmissionData getScoreData()
            {
                return new ScoreSubmissionData(DataHolder.zzay(14));
            }

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzags = LeaderboardsImpl.SubmitScoreImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    protected _cls1.zzGT(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }
}
