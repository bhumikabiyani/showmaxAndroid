// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.TurnBasedMatch;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            TurnBasedMultiplayerImpl

private static abstract class <init> extends com.google.android.gms.games.oadMatchImpl
{

    public Result createFailedResult(Status status)
    {
        return zzau(status);
    }

    public com.google.android.gms.games.multiplayer.turnbased. zzau(Status status)
    {
        return new com.google.android.gms.games.multiplayer.turnbased.TurnBasedMultiplayer.LoadMatchResult(status) {

            final Status zzGT;
            final TurnBasedMultiplayerImpl.LoadMatchImpl zzahG;

            public TurnBasedMatch getMatch()
            {
                return null;
            }

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzahG = TurnBasedMultiplayerImpl.LoadMatchImpl.this;
                zzGT = status;
                super();
            }
        };
    }

    private _cls1.zzGT(GoogleApiClient googleapiclient)
    {
        super(googleapiclient);
    }

    _cls1.zzGT(GoogleApiClient googleapiclient, _cls1.zzGT zzgt)
    {
        this(googleapiclient);
    }
}
