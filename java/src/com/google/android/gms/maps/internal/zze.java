// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.maps.internal;

import android.graphics.Bitmap;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.internal.zzl;

public interface zze
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zze
    {

        public static zze zzbw(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.maps.internal.IInfoWindowRenderer");
            if (iinterface != null && (iinterface instanceof zze))
            {
                return (zze)iinterface;
            } else
            {
                return new zza(ibinder);
            }
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.maps.internal.IInfoWindowRenderer");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.maps.internal.IInfoWindowRenderer");
                parcel = zza(com.google.android.gms.maps.model.internal.zzl.zza.zzcb(parcel.readStrongBinder()), parcel.readInt(), parcel.readInt());
                parcel1.writeNoException();
                break;
            }
            if (parcel != null)
            {
                parcel1.writeInt(1);
                parcel.writeToParcel(parcel1, 1);
                return true;
            } else
            {
                parcel1.writeInt(0);
                return true;
            }
        }
    }

    private static class zza.zza
        implements zze
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public Bitmap zza(zzl zzl1, int i, int j)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            Parcel parcel1;
            obj = null;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.maps.internal.IInfoWindowRenderer");
            if (zzl1 == null)
            {
                break MISSING_BLOCK_LABEL_107;
            }
            zzl1 = zzl1.asBinder();
_L1:
            parcel.writeStrongBinder(zzl1);
            parcel.writeInt(i);
            parcel.writeInt(j);
            zzle.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            zzl1 = obj;
            if (parcel1.readInt() != 0)
            {
                zzl1 = (Bitmap)Bitmap.CREATOR.createFromParcel(parcel1);
            }
            parcel1.recycle();
            parcel.recycle();
            return zzl1;
            zzl1 = null;
              goto _L1
            zzl1;
            parcel1.recycle();
            parcel.recycle();
            throw zzl1;
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract Bitmap zza(zzl zzl, int i, int j)
        throws RemoteException;
}
