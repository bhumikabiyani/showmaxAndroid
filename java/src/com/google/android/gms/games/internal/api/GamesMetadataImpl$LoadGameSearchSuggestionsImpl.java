// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            GamesMetadataImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.gestionsImpl
{

    public Result createFailedResult(Status status)
    {
        return zzQ(status);
    }

    public com.google.android.gms.games.gestionsImpl zzQ(Status status)
    {
        return new com.google.android.gms.games.GamesMetadata.LoadGameSearchSuggestionsResult(status) {

            final Status zzGT;
            final GamesMetadataImpl.LoadGameSearchSuggestionsImpl zzaga;

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzaga = GamesMetadataImpl.LoadGameSearchSuggestionsImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
