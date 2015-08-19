// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.leaderboard.LeaderboardBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            LeaderboardsImpl

private static abstract class <init> extends com.google.android.gms.games.MetadataImpl
{

    public Result createFailedResult(Status status)
    {
        return zzT(status);
    }

    public com.google.android.gms.games.leaderboard.sult zzT(Status status)
    {
        return new com.google.android.gms.games.leaderboard.Leaderboards.LeaderboardMetadataResult(status) {

            final Status zzGT;
            final LeaderboardsImpl.LoadMetadataImpl zzagp;

            public LeaderboardBuffer getLeaderboards()
            {
                return new LeaderboardBuffer(DataHolder.zzay(14));
            }

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzagp = LeaderboardsImpl.LoadMetadataImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    private _cls1.zzGT(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }

    _cls1.zzGT(GoogleApiClient googleapiclient, _cls1.zzGT zzgt)
    {
        this(googleapiclient);
    }
}
