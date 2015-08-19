// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy, zzr, SetResourceParentsRequest, zzbl, 
//            zzag

class lient extends a
{

    final zzy zzUm;
    final List zzUn;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new SetResourceParentsRequest(zzUm.zzRX, zzUn), new zzbl(this));
    }

    lient(zzy zzy1, GoogleApiClient googleapiclient, List list)
    {
        zzUm = zzy1;
        zzUn = list;
        super(googleapiclient);
    }
}
