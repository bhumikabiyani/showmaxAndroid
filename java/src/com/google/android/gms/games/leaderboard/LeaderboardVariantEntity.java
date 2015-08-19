// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.internal.constants.LeaderboardCollection;
import com.google.android.gms.games.internal.constants.TimeSpan;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            LeaderboardVariant

public final class LeaderboardVariantEntity
    implements LeaderboardVariant
{

    private final int zzajj;
    private final int zzajk;
    private final boolean zzajl;
    private final long zzajm;
    private final String zzajn;
    private final long zzajo;
    private final String zzajp;
    private final String zzajq;
    private final long zzajr;
    private final String zzajs;
    private final String zzajt;
    private final String zzaju;

    public LeaderboardVariantEntity(LeaderboardVariant leaderboardvariant)
    {
        zzajj = leaderboardvariant.getTimeSpan();
        zzajk = leaderboardvariant.getCollection();
        zzajl = leaderboardvariant.hasPlayerInfo();
        zzajm = leaderboardvariant.getRawPlayerScore();
        zzajn = leaderboardvariant.getDisplayPlayerScore();
        zzajo = leaderboardvariant.getPlayerRank();
        zzajp = leaderboardvariant.getDisplayPlayerRank();
        zzajq = leaderboardvariant.getPlayerScoreTag();
        zzajr = leaderboardvariant.getNumScores();
        zzajs = leaderboardvariant.zzoT();
        zzajt = leaderboardvariant.zzoU();
        zzaju = leaderboardvariant.zzoV();
    }

    static int zza(LeaderboardVariant leaderboardvariant)
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(leaderboardvariant.getTimeSpan()), Integer.valueOf(leaderboardvariant.getCollection()), Boolean.valueOf(leaderboardvariant.hasPlayerInfo()), Long.valueOf(leaderboardvariant.getRawPlayerScore()), leaderboardvariant.getDisplayPlayerScore(), Long.valueOf(leaderboardvariant.getPlayerRank()), leaderboardvariant.getDisplayPlayerRank(), Long.valueOf(leaderboardvariant.getNumScores()), leaderboardvariant.zzoT(), leaderboardvariant.zzoV(), 
            leaderboardvariant.zzoU()
        });
    }

    static boolean zza(LeaderboardVariant leaderboardvariant, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof LeaderboardVariant) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (leaderboardvariant == obj) goto _L4; else goto _L3
_L3:
        obj = (LeaderboardVariant)obj;
        if (!zzw.equal(Integer.valueOf(((LeaderboardVariant) (obj)).getTimeSpan()), Integer.valueOf(leaderboardvariant.getTimeSpan())) || !zzw.equal(Integer.valueOf(((LeaderboardVariant) (obj)).getCollection()), Integer.valueOf(leaderboardvariant.getCollection())) || !zzw.equal(Boolean.valueOf(((LeaderboardVariant) (obj)).hasPlayerInfo()), Boolean.valueOf(leaderboardvariant.hasPlayerInfo())) || !zzw.equal(Long.valueOf(((LeaderboardVariant) (obj)).getRawPlayerScore()), Long.valueOf(leaderboardvariant.getRawPlayerScore())) || !zzw.equal(((LeaderboardVariant) (obj)).getDisplayPlayerScore(), leaderboardvariant.getDisplayPlayerScore()) || !zzw.equal(Long.valueOf(((LeaderboardVariant) (obj)).getPlayerRank()), Long.valueOf(leaderboardvariant.getPlayerRank())) || !zzw.equal(((LeaderboardVariant) (obj)).getDisplayPlayerRank(), leaderboardvariant.getDisplayPlayerRank()) || !zzw.equal(Long.valueOf(((LeaderboardVariant) (obj)).getNumScores()), Long.valueOf(leaderboardvariant.getNumScores())) || !zzw.equal(((LeaderboardVariant) (obj)).zzoT(), leaderboardvariant.zzoT()) || !zzw.equal(((LeaderboardVariant) (obj)).zzoV(), leaderboardvariant.zzoV()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((LeaderboardVariant) (obj)).zzoU(), leaderboardvariant.zzoU())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(LeaderboardVariant leaderboardvariant)
    {
        com.google.android.gms.common.internal.zzw.zza zza1 = zzw.zzk(leaderboardvariant).zza("TimeSpan", TimeSpan.zzeJ(leaderboardvariant.getTimeSpan())).zza("Collection", LeaderboardCollection.zzeJ(leaderboardvariant.getCollection()));
        Object obj;
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj = Long.valueOf(leaderboardvariant.getRawPlayerScore());
        } else
        {
            obj = "none";
        }
        zza1 = zza1.zza("RawPlayerScore", obj);
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj = leaderboardvariant.getDisplayPlayerScore();
        } else
        {
            obj = "none";
        }
        zza1 = zza1.zza("DisplayPlayerScore", obj);
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj = Long.valueOf(leaderboardvariant.getPlayerRank());
        } else
        {
            obj = "none";
        }
        zza1 = zza1.zza("PlayerRank", obj);
        if (leaderboardvariant.hasPlayerInfo())
        {
            obj = leaderboardvariant.getDisplayPlayerRank();
        } else
        {
            obj = "none";
        }
        return zza1.zza("DisplayPlayerRank", obj).zza("NumScores", Long.valueOf(leaderboardvariant.getNumScores())).zza("TopPageNextToken", leaderboardvariant.zzoT()).zza("WindowPageNextToken", leaderboardvariant.zzoV()).zza("WindowPagePrevToken", leaderboardvariant.zzoU()).toString();
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Object freeze()
    {
        return zzoW();
    }

    public int getCollection()
    {
        return zzajk;
    }

    public String getDisplayPlayerRank()
    {
        return zzajp;
    }

    public String getDisplayPlayerScore()
    {
        return zzajn;
    }

    public long getNumScores()
    {
        return zzajr;
    }

    public long getPlayerRank()
    {
        return zzajo;
    }

    public String getPlayerScoreTag()
    {
        return zzajq;
    }

    public long getRawPlayerScore()
    {
        return zzajm;
    }

    public int getTimeSpan()
    {
        return zzajj;
    }

    public boolean hasPlayerInfo()
    {
        return zzajl;
    }

    public int hashCode()
    {
        return zza(this);
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        return zzb(this);
    }

    public String zzoT()
    {
        return zzajs;
    }

    public String zzoU()
    {
        return zzajt;
    }

    public String zzoV()
    {
        return zzaju;
    }

    public LeaderboardVariant zzoW()
    {
        return this;
    }
}
