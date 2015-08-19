// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.Player;
import com.google.android.gms.games.PlayerEntity;
import com.google.android.gms.internal.zzlw;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            LeaderboardScore

public final class LeaderboardScoreEntity
    implements LeaderboardScore
{

    private final long zzaiW;
    private final String zzaiX;
    private final String zzaiY;
    private final long zzaiZ;
    private final long zzaja;
    private final String zzajb;
    private final Uri zzajc;
    private final Uri zzajd;
    private final PlayerEntity zzaje;
    private final String zzajf;
    private final String zzajg;
    private final String zzajh;

    public LeaderboardScoreEntity(LeaderboardScore leaderboardscore)
    {
        zzaiW = leaderboardscore.getRank();
        zzaiX = (String)zzx.zzl(leaderboardscore.getDisplayRank());
        zzaiY = (String)zzx.zzl(leaderboardscore.getDisplayScore());
        zzaiZ = leaderboardscore.getRawScore();
        zzaja = leaderboardscore.getTimestampMillis();
        zzajb = leaderboardscore.getScoreHolderDisplayName();
        zzajc = leaderboardscore.getScoreHolderIconImageUri();
        zzajd = leaderboardscore.getScoreHolderHiResImageUri();
        Object obj = leaderboardscore.getScoreHolder();
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = (PlayerEntity)((Player) (obj)).freeze();
        }
        zzaje = ((PlayerEntity) (obj));
        zzajf = leaderboardscore.getScoreTag();
        zzajg = leaderboardscore.getScoreHolderIconImageUrl();
        zzajh = leaderboardscore.getScoreHolderHiResImageUrl();
    }

    static int zza(LeaderboardScore leaderboardscore)
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(leaderboardscore.getRank()), leaderboardscore.getDisplayRank(), Long.valueOf(leaderboardscore.getRawScore()), leaderboardscore.getDisplayScore(), Long.valueOf(leaderboardscore.getTimestampMillis()), leaderboardscore.getScoreHolderDisplayName(), leaderboardscore.getScoreHolderIconImageUri(), leaderboardscore.getScoreHolderHiResImageUri(), leaderboardscore.getScoreHolder()
        });
    }

    static boolean zza(LeaderboardScore leaderboardscore, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof LeaderboardScore) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (leaderboardscore == obj) goto _L4; else goto _L3
_L3:
        obj = (LeaderboardScore)obj;
        if (!zzw.equal(Long.valueOf(((LeaderboardScore) (obj)).getRank()), Long.valueOf(leaderboardscore.getRank())) || !zzw.equal(((LeaderboardScore) (obj)).getDisplayRank(), leaderboardscore.getDisplayRank()) || !zzw.equal(Long.valueOf(((LeaderboardScore) (obj)).getRawScore()), Long.valueOf(leaderboardscore.getRawScore())) || !zzw.equal(((LeaderboardScore) (obj)).getDisplayScore(), leaderboardscore.getDisplayScore()) || !zzw.equal(Long.valueOf(((LeaderboardScore) (obj)).getTimestampMillis()), Long.valueOf(leaderboardscore.getTimestampMillis())) || !zzw.equal(((LeaderboardScore) (obj)).getScoreHolderDisplayName(), leaderboardscore.getScoreHolderDisplayName()) || !zzw.equal(((LeaderboardScore) (obj)).getScoreHolderIconImageUri(), leaderboardscore.getScoreHolderIconImageUri()) || !zzw.equal(((LeaderboardScore) (obj)).getScoreHolderHiResImageUri(), leaderboardscore.getScoreHolderHiResImageUri()) || !zzw.equal(((LeaderboardScore) (obj)).getScoreHolder(), leaderboardscore.getScoreHolder()))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((LeaderboardScore) (obj)).getScoreTag(), leaderboardscore.getScoreTag())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(LeaderboardScore leaderboardscore)
    {
        com.google.android.gms.common.internal.zzw.zza zza1 = zzw.zzk(leaderboardscore).zza("Rank", Long.valueOf(leaderboardscore.getRank())).zza("DisplayRank", leaderboardscore.getDisplayRank()).zza("Score", Long.valueOf(leaderboardscore.getRawScore())).zza("DisplayScore", leaderboardscore.getDisplayScore()).zza("Timestamp", Long.valueOf(leaderboardscore.getTimestampMillis())).zza("DisplayName", leaderboardscore.getScoreHolderDisplayName()).zza("IconImageUri", leaderboardscore.getScoreHolderIconImageUri()).zza("IconImageUrl", leaderboardscore.getScoreHolderIconImageUrl()).zza("HiResImageUri", leaderboardscore.getScoreHolderHiResImageUri()).zza("HiResImageUrl", leaderboardscore.getScoreHolderHiResImageUrl());
        Player player;
        if (leaderboardscore.getScoreHolder() == null)
        {
            player = null;
        } else
        {
            player = leaderboardscore.getScoreHolder();
        }
        return zza1.zza("Player", player).zza("ScoreTag", leaderboardscore.getScoreTag()).toString();
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Object freeze()
    {
        return zzoS();
    }

    public String getDisplayRank()
    {
        return zzaiX;
    }

    public void getDisplayRank(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzaiX, chararraybuffer);
    }

    public String getDisplayScore()
    {
        return zzaiY;
    }

    public void getDisplayScore(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzaiY, chararraybuffer);
    }

    public long getRank()
    {
        return zzaiW;
    }

    public long getRawScore()
    {
        return zzaiZ;
    }

    public Player getScoreHolder()
    {
        return zzaje;
    }

    public String getScoreHolderDisplayName()
    {
        if (zzaje == null)
        {
            return zzajb;
        } else
        {
            return zzaje.getDisplayName();
        }
    }

    public void getScoreHolderDisplayName(CharArrayBuffer chararraybuffer)
    {
        if (zzaje == null)
        {
            zzlw.zzb(zzajb, chararraybuffer);
            return;
        } else
        {
            zzaje.getDisplayName(chararraybuffer);
            return;
        }
    }

    public Uri getScoreHolderHiResImageUri()
    {
        if (zzaje == null)
        {
            return zzajd;
        } else
        {
            return zzaje.getHiResImageUri();
        }
    }

    public String getScoreHolderHiResImageUrl()
    {
        if (zzaje == null)
        {
            return zzajh;
        } else
        {
            return zzaje.getHiResImageUrl();
        }
    }

    public Uri getScoreHolderIconImageUri()
    {
        if (zzaje == null)
        {
            return zzajc;
        } else
        {
            return zzaje.getIconImageUri();
        }
    }

    public String getScoreHolderIconImageUrl()
    {
        if (zzaje == null)
        {
            return zzajg;
        } else
        {
            return zzaje.getIconImageUrl();
        }
    }

    public String getScoreTag()
    {
        return zzajf;
    }

    public long getTimestampMillis()
    {
        return zzaja;
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

    public LeaderboardScore zzoS()
    {
        return this;
    }
}
