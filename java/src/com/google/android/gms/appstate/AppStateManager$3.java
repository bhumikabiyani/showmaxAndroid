// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.appstate;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzjl;

// Referenced classes of package com.google.android.gms.appstate:
//            AppStateManager

static final class e extends e
{

    final int zzGU;
    final byte zzGV[];

    protected volatile void zza(com.google.android.gms.common.api.<init> <init>1)
        throws RemoteException
    {
        zza((zzjl)<init>1);
    }

    protected void zza(zzjl zzjl1)
        throws RemoteException
    {
        zzjl1.zza(null, zzGU, zzGV);
    }

    e(GoogleApiClient googleapiclient, int i, byte abyte0[])
    {
        zzGU = i;
        zzGV = abyte0;
        super(googleapiclient);
    }
}
