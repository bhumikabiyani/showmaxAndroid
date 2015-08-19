// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzv, zzr, CreateFileRequest, zzag

class lient extends d
{

    final MetadataChangeSet zzUa;
    final int zzUb;
    final int zzUc;
    final ExecutionOptions zzUd;
    final zzv zzUe;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzUa.zzkx().setContext(zzr1.getContext());
        CreateFileRequest createfilerequest = new CreateFileRequest(zzUe.getDriveId(), zzUa.zzkx(), zzUb, zzUc, zzUd);
        zzr1.zzkF().zza(createfilerequest, new a(this));
    }

    lient(zzv zzv1, GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset, int i, int j, ExecutionOptions executionoptions)
    {
        zzUe = zzv1;
        zzUa = metadatachangeset;
        zzUb = i;
        zzUc = j;
        zzUd = executionoptions;
        super(googleapiclient);
    }
}
