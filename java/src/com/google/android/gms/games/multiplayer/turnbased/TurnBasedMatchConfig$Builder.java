// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.turnbased;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzx;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.multiplayer.turnbased:
//            TurnBasedMatchConfig, TurnBasedMatchConfigImpl

public static final class <init>
{

    int zzajA;
    ArrayList zzajP;
    Bundle zzajQ;
    int zzajZ;

    public <init> addInvitedPlayer(String s)
    {
        zzx.zzl(s);
        zzajP.add(s);
        return this;
    }

    public zzajP addInvitedPlayers(ArrayList arraylist)
    {
        zzx.zzl(arraylist);
        zzajP.addAll(arraylist);
        return this;
    }

    public TurnBasedMatchConfig build()
    {
        return new TurnBasedMatchConfigImpl(this);
    }

    public t> setAutoMatchCriteria(Bundle bundle)
    {
        zzajQ = bundle;
        return this;
    }

    public zzajQ setVariant(int i)
    {
        boolean flag;
        if (i == -1 || i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Variant must be a positive integer or TurnBasedMatch.MATCH_VARIANT_ANY");
        zzajA = i;
        return this;
    }

    private ()
    {
        zzajA = -1;
        zzajP = new ArrayList();
        zzajQ = null;
        zzajZ = 2;
    }

    zzajZ(zzajZ zzajz)
    {
        this();
    }
}
