// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            NotificationsImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.boxCountImpl
{

    public Result createFailedResult(Status status)
    {
        return zzaa(status);
    }

    public com.google.android.gms.games.boxCountImpl zzaa(Status status)
    {
        return new com.google.android.gms.games.Notifications.InboxCountResult(status) {

            final Status zzGT;
            final NotificationsImpl.InboxCountImpl zzagA;

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzagA = NotificationsImpl.InboxCountImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
