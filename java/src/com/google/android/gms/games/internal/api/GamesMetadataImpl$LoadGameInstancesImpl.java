// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            GamesMetadataImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.nstancesImpl
{

    public Result createFailedResult(Status status)
    {
        return zzP(status);
    }

    public com.google.android.gms.games.nstancesImpl zzP(Status status)
    {
        return new com.google.android.gms.games.GamesMetadata.LoadGameInstancesResult(status) {

            final Status zzGT;
            final GamesMetadataImpl.LoadGameInstancesImpl zzafZ;

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzafZ = GamesMetadataImpl.LoadGameInstancesImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
