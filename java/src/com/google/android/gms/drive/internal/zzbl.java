// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzc

public class zzbl extends zzc
{

    private final com.google.android.gms.common.api.zza.zzb zzHa;

    public zzbl(com.google.android.gms.common.api.zza.zzb zzb)
    {
        zzHa = zzb;
    }

    public void onSuccess()
        throws RemoteException
    {
        zzHa.zzd(Status.zzNo);
    }

    public void zzm(Status status)
        throws RemoteException
    {
        zzHa.zzd(status);
    }
}
