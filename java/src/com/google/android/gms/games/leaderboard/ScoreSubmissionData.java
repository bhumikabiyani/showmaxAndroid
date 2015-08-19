// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.internal.constants.TimeSpan;
import java.util.HashMap;

public final class ScoreSubmissionData
{
    public static final class Result
    {

        public final String formattedScore;
        public final boolean newBest;
        public final long rawScore;
        public final String scoreTag;

        public String toString()
        {
            return zzw.zzk(this).zza("RawScore", Long.valueOf(rawScore)).zza("FormattedScore", formattedScore).zza("ScoreTag", scoreTag).zza("NewBest", Boolean.valueOf(newBest)).toString();
        }

        public Result(long l, String s, String s1, boolean flag)
        {
            rawScore = l;
            formattedScore = s;
            scoreTag = s1;
            newBest = flag;
        }
    }


    private static final String zzaiP[] = {
        "leaderboardId", "playerId", "timeSpan", "hasResult", "rawScore", "formattedScore", "newBest", "scoreTag"
    };
    private int zzLs;
    private String zzacH;
    private String zzaiR;
    private HashMap zzajv;

    public ScoreSubmissionData(DataHolder dataholder)
    {
        zzLs = dataholder.getStatusCode();
        zzajv = new HashMap();
        int j = dataholder.getCount();
        boolean flag;
        if (j == 3)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        for (int i = 0; i < j; i++)
        {
            int k = dataholder.zzax(i);
            if (i == 0)
            {
                zzaiR = dataholder.zzc("leaderboardId", i, k);
                zzacH = dataholder.zzc("playerId", i, k);
            }
            if (dataholder.zzd("hasResult", i, k))
            {
                zza(new Result(dataholder.zza("rawScore", i, k), dataholder.zzc("formattedScore", i, k), dataholder.zzc("scoreTag", i, k), dataholder.zzd("newBest", i, k)), dataholder.zzb("timeSpan", i, k));
            }
        }

    }

    private void zza(Result result, int i)
    {
        zzajv.put(Integer.valueOf(i), result);
    }

    public String getLeaderboardId()
    {
        return zzaiR;
    }

    public String getPlayerId()
    {
        return zzacH;
    }

    public Result getScoreResult(int i)
    {
        return (Result)zzajv.get(Integer.valueOf(i));
    }

    public String toString()
    {
        com.google.android.gms.common.internal.zzw.zza zza1 = zzw.zzk(this).zza("PlayerId", zzacH).zza("StatusCode", Integer.valueOf(zzLs));
        int i = 0;
        while (i < 3) 
        {
            Object obj = (Result)zzajv.get(Integer.valueOf(i));
            zza1.zza("TimesSpan", TimeSpan.zzeJ(i));
            if (obj == null)
            {
                obj = "null";
            } else
            {
                obj = ((Result) (obj)).toString();
            }
            zza1.zza("Result", obj);
            i++;
        }
        return zza1.toString();
    }

}
