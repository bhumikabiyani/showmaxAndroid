// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            RequestsImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.ummariesImpl
{

    public Result createFailedResult(Status status)
    {
        return zzaj(status);
    }

    public com.google.android.gms.games.request.Impl zzaj(Status status)
    {
        return new com.google.android.gms.games.request.Requests.LoadRequestSummariesResult(status) {

            final Status zzGT;
            final RequestsImpl.LoadRequestSummariesImpl zzahd;

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzahd = RequestsImpl.LoadRequestSummariesImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
