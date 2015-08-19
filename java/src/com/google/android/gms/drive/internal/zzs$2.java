// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.Contents;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzs, zzr, CloseContentsAndUpdateMetadataRequest, zzbl, 
//            zzag

class lient extends a
{

    final zzs zzTR;
    final MetadataChangeSet zzTS;
    final ExecutionOptions zzTT;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzTS.zzkx().setContext(zzr1.getContext());
        zzr1.zzkF().zza(new CloseContentsAndUpdateMetadataRequest(zzs.zza(zzTR).getDriveId(), zzTS.zzkx(), zzs.zza(zzTR), zzTT), new zzbl(this));
    }

    lient(zzs zzs1, GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, ExecutionOptions executionoptions)
    {
        zzTR = zzs1;
        zzTS = metadatachangeset;
        zzTT = executionoptions;
        super(googleapiclient);
    }
}
