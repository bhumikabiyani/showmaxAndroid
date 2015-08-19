// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            TurnBasedMultiplayerImpl

class zzGT
    implements com.google.android.gms.games.multiplayer.turnbased.
{

    final Status zzGT;
    final zzGT zzahD;

    public String getMatchId()
    {
        return a(zzahD);
    }

    public Status getStatus()
    {
        return zzGT;
    }

    sult(sult sult, Status status)
    {
        zzahD = sult;
        zzGT = status;
        super();
    }
}
