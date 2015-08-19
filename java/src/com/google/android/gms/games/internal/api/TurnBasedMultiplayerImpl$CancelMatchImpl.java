// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            TurnBasedMultiplayerImpl

private static abstract class zzFA extends com.google.android.gms.games.celMatchImpl
{

    private final String zzFA;

    static String zza(zzFA zzfa)
    {
        return zzfa.zzFA;
    }

    public Result createFailedResult(Status status)
    {
        return zzar(status);
    }

    public com.google.android.gms.games.multiplayer.turnbased.Q zzar(Status status)
    {
        return new com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.CancelMatchResult(status) {

            final Status zzGT;
            final TurnBasedMultiplayerImpl.CancelMatchImpl zzahD;

            public String getMatchId()
            {
                return TurnBasedMultiplayerImpl.CancelMatchImpl.zza(zzahD);
            }

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzahD = TurnBasedMultiplayerImpl.CancelMatchImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    public _cls1.zzGT(String s, GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
        zzFA = s;
    }
}
