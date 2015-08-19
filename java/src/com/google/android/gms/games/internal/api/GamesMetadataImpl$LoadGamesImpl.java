// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.GameBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            GamesMetadataImpl

private static abstract class <init> extends com.google.android.gms.games.oadGamesImpl
{

    public Result createFailedResult(Status status)
    {
        return zzR(status);
    }

    public com.google.android.gms.games.oadGamesImpl zzR(Status status)
    {
        return new com.google.android.gms.games.GamesMetadata.LoadGamesResult(status) {

            final Status zzGT;
            final GamesMetadataImpl.LoadGamesImpl zzagb;

            public GameBuffer getGames()
            {
                return new GameBuffer(DataHolder.zzay(14));
            }

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzagb = GamesMetadataImpl.LoadGamesImpl.this;
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
