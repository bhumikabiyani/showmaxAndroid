// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            PlayersImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.amResultImpl
{

    public Result createFailedResult(Status status)
    {
        return zzaf(status);
    }

    public com.google.android.gms.games.amResultImpl zzaf(Status status)
    {
        return new com.google.android.gms.games.Players.LoadXpStreamResult(status) {

            final Status zzGT;
            final PlayersImpl.LoadXpStreamResultImpl zzagL;

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzagL = PlayersImpl.LoadXpStreamResultImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
