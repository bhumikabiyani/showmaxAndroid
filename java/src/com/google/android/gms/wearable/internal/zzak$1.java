// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzak, zzbd

class t extends zzg
{

    final byte zzGV[];
    final String zzaGr;
    final String zzaGs;
    final zzak zzaGt;

    protected Result createFailedResult(Status status)
    {
        return zzaT(status);
    }

    protected volatile void zza(com.google.android.gms.common.api. )
        throws RemoteException
    {
        zza((zzbd));
    }

    protected void zza(zzbd zzbd1)
        throws RemoteException
    {
        zzbd1.zza(this, zzaGr, zzaGs, zzGV);
    }

    protected com.google.android.gms.wearable.Api.SendMessageResult zzaT(Status status)
    {
        return new b(status, -1);
    }

    t(zzak zzak1, GoogleApiClient googleapiclient, String s, String s1, byte abyte0[])
    {
        zzaGt = zzak1;
        zzaGr = s;
        zzaGs = s1;
        zzGV = abyte0;
        super(googleapiclient);
    }
}
