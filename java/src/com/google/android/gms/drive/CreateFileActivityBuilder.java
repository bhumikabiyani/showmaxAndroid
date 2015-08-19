// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.internal.zzi;
import com.google.android.gms.drive.internal.zzs;
import com.google.android.gms.internal.zzlz;

// Referenced classes of package com.google.android.gms.drive:
//            Drive, DriveContents, Contents, DriveId, 
//            MetadataChangeSet

public class CreateFileActivityBuilder
{

    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private final zzi zzRZ = new zzi(0);
    private DriveContents zzSa;
    private boolean zzSb;

    public CreateFileActivityBuilder()
    {
    }

    public IntentSender build(GoogleApiClient googleapiclient)
    {
        zzx.zzb(Boolean.valueOf(zzSb), "Must call setInitialDriveContents to CreateFileActivityBuilder.");
        boolean flag;
        if (googleapiclient.zza(Drive.SCOPE_FILE) || googleapiclient.zza(Drive.zzSc))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "The apiClient must have suitable scope to create files");
        if (zzSa != null)
        {
            zzlz.zza(zzSa.getParcelFileDescriptor());
            zzSa.zzkr();
        }
        return zzRZ.build(googleapiclient);
    }

    public CreateFileActivityBuilder setActivityStartFolder(DriveId driveid)
    {
        zzRZ.zza(driveid);
        return this;
    }

    public CreateFileActivityBuilder setActivityTitle(String s)
    {
        zzRZ.zzbx(s);
        return this;
    }

    public CreateFileActivityBuilder setInitialDriveContents(DriveContents drivecontents)
    {
        if (drivecontents != null)
        {
            if (!(drivecontents instanceof zzs))
            {
                throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
            }
            if (drivecontents.getDriveId() != null)
            {
                throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
            }
            if (drivecontents.zzks())
            {
                throw new IllegalArgumentException("DriveContents are already closed.");
            }
            zzRZ.zzbD(drivecontents.zzkq().getRequestId());
            zzSa = drivecontents;
        } else
        {
            zzRZ.zzbD(1);
        }
        zzSb = true;
        return this;
    }

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet metadatachangeset)
    {
        zzRZ.zza(metadatachangeset);
        return this;
    }
}
