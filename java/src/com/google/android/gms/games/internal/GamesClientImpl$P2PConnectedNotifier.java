// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.realtime.RoomStatusUpdateListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeO
    implements com.google.android.gms.common.api.ier
{

    private final String zzaeO;

    public void zza(RoomStatusUpdateListener roomstatusupdatelistener)
    {
        roomstatusupdatelistener.onP2PConnected(zzaeO);
    }

    public void zze(Object obj)
    {
        zza((RoomStatusUpdateListener)obj);
    }

    public void zzhX()
    {
    }

    (String s)
    {
        zzaeO = s;
    }
}
