// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.turnbased.OnTurnBasedMatchUpdateReceivedListener;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeG
    implements com.google.android.gms.common.api.ier
{

    private final TurnBasedMatch zzaeG;

    public void zza(OnTurnBasedMatchUpdateReceivedListener onturnbasedmatchupdatereceivedlistener)
    {
        onturnbasedmatchupdatereceivedlistener.onTurnBasedMatchReceived(zzaeG);
    }

    public void zze(Object obj)
    {
        zza((OnTurnBasedMatchUpdateReceivedListener)obj);
    }

    public void zzhX()
    {
    }

    istener(TurnBasedMatch turnbasedmatch)
    {
        zzaeG = turnbasedmatch;
    }
}
