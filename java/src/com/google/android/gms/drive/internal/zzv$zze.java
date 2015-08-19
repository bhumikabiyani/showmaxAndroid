// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveFolder;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzv

private static class zzUg
    implements com.google.android.gms.drive.der.DriveFolderResult
{

    private final Status zzHb;
    private final DriveFolder zzUg;

    public DriveFolder getDriveFolder()
    {
        return zzUg;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public FolderResult(Status status, DriveFolder drivefolder)
    {
        zzHb = status;
        zzUg = drivefolder;
    }
}
