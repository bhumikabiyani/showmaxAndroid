// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            zzku, zzkt

private static class zzle
    implements zzku
{

    private IBinder zzle;

    public IBinder asBinder()
    {
        return zzle;
    }

    public void zza(zzkt zzkt1)
        throws RemoteException
    {
        IBinder ibinder;
        Parcel parcel;
        ibinder = null;
        parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.common.internal.service.ICommonService");
        if (zzkt1 == null)
        {
            break MISSING_BLOCK_LABEL_23;
        }
        ibinder = zzkt1.asBinder();
        parcel.writeStrongBinder(ibinder);
        zzle.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        zzkt1;
        parcel.recycle();
        throw zzkt1;
    }

    (IBinder ibinder)
    {
        zzle = ibinder;
    }
}
