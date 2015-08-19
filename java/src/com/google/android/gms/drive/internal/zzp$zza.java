// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveContents;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzp

static class zzSa
    implements com.google.android.gms.drive..DriveContentsResult
{

    private final Status zzHb;
    private final DriveContents zzSa;

    public DriveContents getDriveContents()
    {
        return zzSa;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public tentsResult(Status status, DriveContents drivecontents)
    {
        zzHb = status;
        zzSa = drivecontents;
    }
}
