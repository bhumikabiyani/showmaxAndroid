// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, CreateFileIntentSenderRequest, zzag

public class zzi
{

    private DriveId zzSA;
    private String zzSy;
    protected MetadataChangeSet zzTm;
    private Integer zzTn;
    private final int zzTo;

    public zzi(int i)
    {
        zzTo = i;
    }

    public IntentSender build(GoogleApiClient googleapiclient)
    {
        zzx.zzb(zzTm, "Must provide initial metadata to CreateFileActivityBuilder.");
        zzx.zza(googleapiclient.isConnected(), "Client must be connected");
        googleapiclient = (zzr)googleapiclient.zza(Drive.zzGR);
        zzTm.zzkx().setContext(googleapiclient.getContext());
        int i;
        if (zzTn == null)
        {
            i = -1;
        } else
        {
            i = zzTn.intValue();
        }
        try
        {
            googleapiclient = googleapiclient.zzkF().zza(new CreateFileIntentSenderRequest(zzTm.zzkx(), i, zzSy, zzSA, zzTo));
        }
        // Misplaced declaration of an exception variable
        catch (GoogleApiClient googleapiclient)
        {
            throw new RuntimeException("Unable to connect Drive Play Service", googleapiclient);
        }
        return googleapiclient;
    }

    public void zza(DriveId driveid)
    {
        zzSA = (DriveId)zzx.zzl(driveid);
    }

    public void zza(MetadataChangeSet metadatachangeset)
    {
        zzTm = (MetadataChangeSet)zzx.zzl(metadatachangeset);
    }

    public void zzbD(int i)
    {
        zzTn = Integer.valueOf(i);
    }

    public void zzbx(String s)
    {
        zzSy = (String)zzx.zzl(s);
    }
}
