// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzk, DataPoint

private static class zzle
    implements zzk
{

    private IBinder zzle;

    public IBinder asBinder()
    {
        return zzle;
    }

    public void zzc(DataPoint datapoint)
        throws RemoteException
    {
        Parcel parcel = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.fitness.data.IDataSourceListener");
        if (datapoint == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        parcel.writeInt(1);
        datapoint.writeToParcel(parcel, 0);
_L1:
        zzle.transact(1, parcel, null, 1);
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        datapoint;
        parcel.recycle();
        throw datapoint;
    }

    (IBinder ibinder)
    {
        zzle = ibinder;
    }
}
