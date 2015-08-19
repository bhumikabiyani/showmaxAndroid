// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzp

private static class zzRX
    implements com.google.android.gms.drive..DriveIdResult
{

    private final Status zzHb;
    private final DriveId zzRX;

    public DriveId getDriveId()
    {
        return zzRX;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public esult(Status status, DriveId driveid)
    {
        zzHb = status;
        zzRX = driveid;
    }
}
