// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            RoomRef, Room

public final class RoomBuffer extends zzg
{

    public RoomBuffer(DataHolder dataholder)
    {
        super(dataholder);
    }

    protected String zziB()
    {
        return "external_match_id";
    }

    protected Object zzj(int i, int j)
    {
        return zzq(i, j);
    }

    protected Room zzq(int i, int j)
    {
        return new RoomRef(zzMd, i, j);
    }
}
