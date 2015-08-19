// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFile;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzv

private static class zzUf
    implements com.google.android.gms.drive.der.DriveFileResult
{

    private final Status zzHb;
    private final DriveFile zzUf;

    public DriveFile getDriveFile()
    {
        return zzUf;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public FileResult(Status status, DriveFile drivefile)
    {
        zzHb = status;
        zzUf = drivefile;
    }
}
