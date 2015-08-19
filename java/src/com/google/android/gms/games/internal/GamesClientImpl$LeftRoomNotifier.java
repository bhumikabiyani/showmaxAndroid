// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RoomUpdateListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaem
    implements com.google.android.gms.common.api.ier
{

    private final int zzLs;
    private final String zzaem;

    public void zza(RoomUpdateListener roomupdatelistener)
    {
        roomupdatelistener.onLeftRoom(zzLs, zzaem);
    }

    public void zze(Object obj)
    {
        zza((RoomUpdateListener)obj);
    }

    public void zzhX()
    {
    }

    (int i, String s)
    {
        zzLs = i;
        zzaem = s;
    }
}
