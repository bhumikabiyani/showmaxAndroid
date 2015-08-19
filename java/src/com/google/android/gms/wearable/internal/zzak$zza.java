// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzak, zzbd

private static final class Listener extends zzg
{

    private IntentFilter zzaGb[];
    private com.google.android.gms.wearable.i.MessageListener zzaGv;

    public Result createFailedResult(Status status)
    {
        return zzb(status);
    }

    protected volatile void zza(com.google.android.gms.common.api.ak.zza zza1)
        throws RemoteException
    {
        zza((zzbd)zza1);
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zza(this, zzaGv, zzaGb);
        zzaGv = null;
        zzaGb = null;
    }

    public Status zzb(Status status)
    {
        zzaGv = null;
        zzaGb = null;
        return status;
    }

    private Listener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.i.MessageListener messagelistener, IntentFilter aintentfilter[])
    {
        super(googleapiclient);
        zzaGv = messagelistener;
        zzaGb = aintentfilter;
    }

    Listener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.i.MessageListener messagelistener, IntentFilter aintentfilter[], Listener listener)
    {
        this(googleapiclient, messagelistener, aintentfilter);
    }
}
