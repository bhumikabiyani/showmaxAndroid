// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzai, OnEventResponse

private static class zzle
    implements zzai
{

    private IBinder zzle;

    public IBinder asBinder()
    {
        return zzle;
    }

    public void zzc(OnEventResponse oneventresponse)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.drive.internal.IEventCallback");
        if (oneventresponse == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        parcel.writeInt(1);
        oneventresponse.writeToParcel(parcel, 0);
_L1:
        zzle.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        oneventresponse;
        parcel1.recycle();
        parcel.recycle();
        throw oneventresponse;
    }

    se(IBinder ibinder)
    {
        zzle = ibinder;
    }
}
