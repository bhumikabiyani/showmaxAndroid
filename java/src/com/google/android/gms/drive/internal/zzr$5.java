// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzr, CancelPendingActionsRequest, zzbl, zzag

class lient extends a
{

    final zzr zzTL;
    final List zzTN;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new CancelPendingActionsRequest(zzTN), new zzbl(this));
    }

    lient(zzr zzr1, GoogleApiClient googleapiclient, List list)
    {
        zzTL = zzr1;
        zzTN = list;
        super(googleapiclient);
    }
}
