// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy, zzr, UpdateMetadataRequest, zzag

class lient extends d
{

    final MetadataChangeSet zzUa;
    final zzy zzUm;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzUa.zzkx().setContext(zzr1.getContext());
        zzr1.zzkF().zza(new UpdateMetadataRequest(zzUm.zzRX, zzUa.zzkx()), new b(this));
    }

    lient(zzy zzy1, GoogleApiClient googleapiclient, MetadataChangeSet metadatachangeset)
    {
        zzUm = zzy1;
        zzUa = metadatachangeset;
        super(zzy1, googleapiclient, null);
    }
}
