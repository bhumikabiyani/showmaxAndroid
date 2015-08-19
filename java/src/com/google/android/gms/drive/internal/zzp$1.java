// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.query.Query;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzp, zzr, QueryRequest, zzag

class lient extends g
{

    final Query zzTw;
    final zzp zzTx;

    protected volatile void zza(com.google.android.gms.common.api.a a)
        throws RemoteException
    {
        zza((zzr)a);
    }

    protected void zza(zzr zzr1)
        throws RemoteException
    {
        zzr1.zzkF().zza(new QueryRequest(zzTw), new i(this));
    }

    lient(zzp zzp1, GoogleApiClient googleapiclient, Query query)
    {
        zzTx = zzp1;
        zzTw = query;
        super(googleapiclient);
    }
}
