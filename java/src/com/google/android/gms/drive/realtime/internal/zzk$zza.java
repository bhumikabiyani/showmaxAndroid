// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;

// Referenced classes of package com.google.android.gms.drive.realtime.internal:
//            zzk, ParcelableIndexReference

public static abstract class zza.zzle extends Binder
    implements zzk
{
    private static class zza
        implements zzk
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(ParcelableIndexReference parcelableindexreference)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
            if (parcelableindexreference == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            parcelableindexreference.writeToParcel(parcel, 0);
_L1:
            zzle.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            parcelableindexreference;
            parcel1.recycle();
            parcel.recycle();
            throw parcelableindexreference;
        }

        public void zzm(Status status)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
            if (status == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            zzle.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            status;
            parcel1.recycle();
            parcel.recycle();
            throw status;
        }

        zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public static zzk zzao(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
        if (iinterface != null && (iinterface instanceof zzk))
        {
            return (zzk)iinterface;
        } else
        {
            return new zza(ibinder);
        }
    }

    public IBinder asBinder()
    {
        return this;
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        Object obj1 = null;
        Object obj = null;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
            return true;

        case 1: // '\001'
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
            if (parcel.readInt() != 0)
            {
                obj = (ParcelableIndexReference)ParcelableIndexReference.CREATOR.createFromParcel(parcel);
            }
            zza(((ParcelableIndexReference) (obj)));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.drive.realtime.internal.IIndexReferenceCallback");
            obj = obj1;
            break;
        }
        if (parcel.readInt() != 0)
        {
            obj = Status.CREATOR.createFromParcel(parcel);
        }
        zzm(((Status) (obj)));
        parcel1.writeNoException();
        return true;
    }
}
