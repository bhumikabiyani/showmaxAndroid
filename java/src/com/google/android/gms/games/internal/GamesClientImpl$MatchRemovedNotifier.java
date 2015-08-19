// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeF
    implements com.google.android.gms.common.api.ier
{

    private final String zzaeF;

    public void zza(OnTurnBasedMatchUpdateReceivedListener onturnbasedmatchupdatereceivedlistener)
    {
        onturnbasedmatchupdatereceivedlistener.onTurnBasedMatchRemoved(zzaeF);
    }

    public void zze(Object obj)
    {
        zza((OnTurnBasedMatchUpdateReceivedListener)obj);
    }

    public void zzhX()
    {
    }

    ceivedListener(String s)
    {
        zzaeF = s;
    }
}
