// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzv, zzr, CreateFolderRequest, zzag

class lient extends f
{

    final MetadataChangeSet zzUa;
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
        zzr1.zzkF().zza(new CreateFolderRequest(zzUe.getDriveId(), zzUa.zzkx()), new b(this));
    }

    lient(zzv zzv1, GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset)
    {
        zzUe = zzv1;
        zzUa = metadatachangeset;
        super(googleapiclient);
    }
}
