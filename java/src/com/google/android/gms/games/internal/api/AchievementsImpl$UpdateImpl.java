// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            AchievementsImpl

private static abstract class zzFA extends com.google.android.gms.games.
{

    private final String zzFA;

    static String zza(zzFA zzfa)
    {
        return zzfa.zzFA;
    }

    public Result createFailedResult(Status status)
    {
        return zzI(status);
    }

    public com.google.android.gms.games.achievement.ntResult zzI(Status status)
    {
        return new com.google.android.gms.games.achievement.Achievements.UpdateAchievementResult(status) {

            final Status zzGT;
            final AchievementsImpl.UpdateImpl zzafF;

            public String getAchievementId()
            {
                return AchievementsImpl.UpdateImpl.zza(zzafF);
            }

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzafF = AchievementsImpl.UpdateImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    public _cls1.zzGT(String s, GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
        zzFA = s;
    }
}
