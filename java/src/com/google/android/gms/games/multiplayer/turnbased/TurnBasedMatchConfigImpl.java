// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatchConfig

public final class TurnBasedMatchConfigImpl extends TurnBasedMatchConfig
{

    private final int zzajA;
    private final Bundle zzajQ;
    private final String zzajR[];
    private final int zzajZ;

    TurnBasedMatchConfigImpl(TurnBasedMatchConfig.Builder builder)
    {
        zzajA = builder.zzajA;
        zzajZ = builder.zzajZ;
        zzajQ = builder.zzajQ;
        int i = builder.zzajP.size();
        zzajR = (String[])builder.zzajP.toArray(new String[i]);
    }

    public Bundle getAutoMatchCriteria()
    {
        return zzajQ;
    }

    public String[] getInvitedPlayerIds()
    {
        return zzajR;
    }

    public int getVariant()
    {
        return zzajA;
    }

    public int zzoX()
    {
        return zzajZ;
    }
}
