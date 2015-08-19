// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.leaderboard;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.games.Game;
import com.google.android.gms.games.GameEntity;
import com.google.android.gms.internal.zzlw;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.leaderboard:
//            Leaderboard, LeaderboardVariant, LeaderboardVariantEntity

public final class LeaderboardEntity
    implements Leaderboard
{

    private final String zzSJ;
    private final Uri zzacc;
    private final String zzacn;
    private final String zzaiR;
    private final int zzaiS;
    private final ArrayList zzaiT;
    private final Game zzaiU;

    public LeaderboardEntity(Leaderboard leaderboard)
    {
        zzaiR = leaderboard.getLeaderboardId();
        zzSJ = leaderboard.getDisplayName();
        zzacc = leaderboard.getIconImageUri();
        zzacn = leaderboard.getIconImageUrl();
        zzaiS = leaderboard.getScoreOrder();
        Object obj = leaderboard.getGame();
        int j;
        if (obj == null)
        {
            obj = null;
        } else
        {
            obj = new GameEntity(((Game) (obj)));
        }
        zzaiU = ((Game) (obj));
        leaderboard = leaderboard.getVariants();
        j = leaderboard.size();
        zzaiT = new ArrayList(j);
        for (int i = 0; i < j; i++)
        {
            zzaiT.add((LeaderboardVariantEntity)(LeaderboardVariantEntity)((LeaderboardVariant)leaderboard.get(i)).freeze());
        }

    }

    static int zza(Leaderboard leaderboard)
    {
        return zzw.hashCode(new Object[] {
            leaderboard.getLeaderboardId(), leaderboard.getDisplayName(), leaderboard.getIconImageUri(), Integer.valueOf(leaderboard.getScoreOrder()), leaderboard.getVariants()
        });
    }

    static boolean zza(Leaderboard leaderboard, Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof Leaderboard) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (leaderboard == obj) goto _L4; else goto _L3
_L3:
        obj = (Leaderboard)obj;
        if (!zzw.equal(((Leaderboard) (obj)).getLeaderboardId(), leaderboard.getLeaderboardId()) || !zzw.equal(((Leaderboard) (obj)).getDisplayName(), leaderboard.getDisplayName()) || !zzw.equal(((Leaderboard) (obj)).getIconImageUri(), leaderboard.getIconImageUri()) || !zzw.equal(Integer.valueOf(((Leaderboard) (obj)).getScoreOrder()), Integer.valueOf(leaderboard.getScoreOrder())))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(((Leaderboard) (obj)).getVariants(), leaderboard.getVariants())) goto _L4; else goto _L5
_L5:
        return false;
    }

    static String zzb(Leaderboard leaderboard)
    {
        return zzw.zzk(leaderboard).zza("LeaderboardId", leaderboard.getLeaderboardId()).zza("DisplayName", leaderboard.getDisplayName()).zza("IconImageUri", leaderboard.getIconImageUri()).zza("IconImageUrl", leaderboard.getIconImageUrl()).zza("ScoreOrder", Integer.valueOf(leaderboard.getScoreOrder())).zza("Variants", leaderboard.getVariants()).toString();
    }

    public boolean equals(Object obj)
    {
        return zza(this, obj);
    }

    public Object freeze()
    {
        return zzoP();
    }

    public String getDisplayName()
    {
        return zzSJ;
    }

    public void getDisplayName(CharArrayBuffer chararraybuffer)
    {
        zzlw.zzb(zzSJ, chararraybuffer);
    }

    public Game getGame()
    {
        return zzaiU;
    }

    public Uri getIconImageUri()
    {
        return zzacc;
    }

    public String getIconImageUrl()
    {
        return zzacn;
    }

    public String getLeaderboardId()
    {
        return zzaiR;
    }

    public int getScoreOrder()
    {
        return zzaiS;
    }

    public ArrayList getVariants()
    {
        return new ArrayList(zzaiT);
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

    public Leaderboard zzoP()
    {
        return this;
    }
}
