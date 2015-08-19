// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.internal.OpenFileIntentSenderRequest;
import com.google.android.gms.drive.internal.zzag;
import com.google.android.gms.drive.internal.zzr;

// Referenced classes of package com.google.android.gms.drive:
//            Drive, DriveId

public class OpenFileActivityBuilder
{

    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private DriveId zzSA;
    private String zzSy;
    private String zzSz[];

    public OpenFileActivityBuilder()
    {
    }

    public IntentSender build(GoogleApiClient googleapiclient)
    {
        zzx.zza(googleapiclient.isConnected(), "Client must be connected");
        if (zzSz == null)
        {
            zzSz = new String[0];
        }
        try
        {
            googleapiclient = ((zzr)googleapiclient.zza(Drive.zzGR)).zzkF().zza(new OpenFileIntentSenderRequest(zzSy, zzSz, zzSA));
        }
        // Misplaced declaration of an exception variable
        catch (GoogleApiClient googleapiclient)
        {
            throw new RuntimeException("Unable to connect Drive Play Service", googleapiclient);
        }
        return googleapiclient;
    }

    public OpenFileActivityBuilder setActivityStartFolder(DriveId driveid)
    {
        zzSA = (DriveId)zzx.zzl(driveid);
        return this;
    }

    public OpenFileActivityBuilder setActivityTitle(String s)
    {
        zzSy = (String)zzx.zzl(s);
        return this;
    }

    public OpenFileActivityBuilder setMimeType(String as[])
    {
        boolean flag;
        if (as != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "mimeTypes may not be null");
        zzSz = as;
        return this;
    }
}
