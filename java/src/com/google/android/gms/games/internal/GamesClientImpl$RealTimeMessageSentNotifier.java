// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;


// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeT
    implements com.google.android.gms.common.api.ier
{

    private final int zzLs;
    private final String zzaeT;
    private final int zzaeU;

    public void zza(com.google.android.gms.games.multiplayer.realtime.ack ack)
    {
        if (ack != null)
        {
            ack.onRealTimeMessageSent(zzLs, zzaeU, zzaeT);
        }
    }

    public void zze(Object obj)
    {
        zza((com.google.android.gms.games.multiplayer.realtime.ack)obj);
    }

    public void zzhX()
    {
    }

    ageSentCallback(int i, int j, String s)
    {
        zzLs = i;
        zzaeU = j;
        zzaeT = s;
    }
}
