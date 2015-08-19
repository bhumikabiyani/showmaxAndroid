// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.game;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

// Referenced classes of package com.google.android.gms.games.internal.game:
//            ExtendedGameRef, ExtendedGame

public final class ExtendedGameBuffer extends zzg
{

    public ExtendedGameBuffer(DataHolder dataholder)
    {
        super(dataholder);
    }

    protected String zziB()
    {
        return "external_game_id";
    }

    protected Object zzj(int i, int j)
    {
        return zzn(i, j);
    }

    protected ExtendedGame zzn(int i, int j)
    {
        return new ExtendedGameRef(zzMd, i, j);
    }
}
