// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            AppContentsImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.pl
{

    public Result createFailedResult(Status status)
    {
        return zzM(status);
    }

    public com.google.android.gms.games.appcontent.Result zzM(Status status)
    {
        return new com.google.android.gms.games.appcontent.AppContents.LoadAppContentResult(status) {

            final Status zzGT;
            final AppContentsImpl.LoadsImpl zzafK;

            public Status getStatus()
            {
                return zzGT;
            }

            public void release()
            {
            }

            
            {
                zzafK = AppContentsImpl.LoadsImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
