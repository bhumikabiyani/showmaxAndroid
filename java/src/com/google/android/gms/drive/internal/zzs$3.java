// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzs, zzw

class zzTR
    implements ResultCallback
{

    final zzs zzTR;

    public void onResult(Result result)
    {
        zzi((Status)result);
    }

    public void zzi(Status status)
    {
        if (!status.isSuccess())
        {
            zzw.zzs("DriveContentsImpl", "Error discarding contents");
            return;
        } else
        {
            zzw.zzq("DriveContentsImpl", "Contents discarded");
            return;
        }
    }

    back(zzs zzs1)
    {
        zzTR = zzs1;
        super();
    }
}
