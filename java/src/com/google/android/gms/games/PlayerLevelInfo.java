// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.games:
//            PlayerLevelInfoCreator, PlayerLevel

public final class PlayerLevelInfo
    implements SafeParcelable
{

    public static final PlayerLevelInfoCreator CREATOR = new PlayerLevelInfoCreator();
    private final int zzFG;
    private final long zzacS;
    private final long zzacT;
    private final PlayerLevel zzacU;
    private final PlayerLevel zzacV;

    PlayerLevelInfo(int i, long l, long l1, PlayerLevel playerlevel, PlayerLevel playerlevel1)
    {
        boolean flag;
        if (l != -1L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzN(flag);
        zzx.zzl(playerlevel);
        zzx.zzl(playerlevel1);
        zzFG = i;
        zzacS = l;
        zzacT = l1;
        zzacU = playerlevel;
        zzacV = playerlevel1;
    }

    public PlayerLevelInfo(long l, long l1, PlayerLevel playerlevel, PlayerLevel playerlevel1)
    {
        this(1, l, l1, playerlevel, playerlevel1);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag1 = true;
        if (obj instanceof PlayerLevelInfo) goto _L2; else goto _L1
_L1:
        boolean flag = false;
_L4:
        return flag;
_L2:
        flag = flag1;
        if (obj == this) goto _L4; else goto _L3
_L3:
        obj = (PlayerLevelInfo)obj;
        if (!zzw.equal(Long.valueOf(zzacS), Long.valueOf(((PlayerLevelInfo) (obj)).zzacS)) || !zzw.equal(Long.valueOf(zzacT), Long.valueOf(((PlayerLevelInfo) (obj)).zzacT)) || !zzw.equal(zzacU, ((PlayerLevelInfo) (obj)).zzacU))
        {
            break; /* Loop/switch isn't completed */
        }
        flag = flag1;
        if (zzw.equal(zzacV, ((PlayerLevelInfo) (obj)).zzacV)) goto _L4; else goto _L5
_L5:
        return false;
    }

    public PlayerLevel getCurrentLevel()
    {
        return zzacU;
    }

    public long getCurrentXpTotal()
    {
        return zzacS;
    }

    public long getLastLevelUpTimestamp()
    {
        return zzacT;
    }

    public PlayerLevel getNextLevel()
    {
        return zzacV;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(zzacS), Long.valueOf(zzacT), zzacU, zzacV
        });
    }

    public boolean isMaxLevel()
    {
        return zzacU.equals(zzacV);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        PlayerLevelInfoCreator.zza(this, parcel, i);
    }

}
