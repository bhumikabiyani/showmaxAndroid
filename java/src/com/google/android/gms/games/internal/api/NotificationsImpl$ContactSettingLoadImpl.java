// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            NotificationsImpl

private static abstract class _cls1.zzGT extends com.google.android.gms.games.tingLoadImpl
{

    public Result createFailedResult(Status status)
    {
        return zzZ(status);
    }

    public com.google.android.gms.games.tingLoadImpl zzZ(Status status)
    {
        return new com.google.android.gms.games.Notifications.ContactSettingLoadResult(status) {

            final Status zzGT;
            final NotificationsImpl.ContactSettingLoadImpl zzagz;

            public Status getStatus()
            {
                return zzGT;
            }

            
            {
                zzagz = NotificationsImpl.ContactSettingLoadImpl.this;
                zzGT = status;
                super();
            }
        };
    }
}
