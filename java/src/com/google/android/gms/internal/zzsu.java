// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Intent;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public interface zzsu
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zzsu
    {

        public static zzsu zzcr(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
            if (iinterface != null && (iinterface instanceof zzsu))
            {
                return (zzsu)iinterface;
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
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
                i = parcel.readInt();
                break;
            }
            Bundle bundle;
            if (parcel.readInt() != 0)
            {
                bundle = (Bundle)Bundle.CREATOR.createFromParcel(parcel);
            } else
            {
                bundle = null;
            }
            j = parcel.readInt();
            if (parcel.readInt() != 0)
            {
                parcel = (Intent)Intent.CREATOR.createFromParcel(parcel);
            } else
            {
                parcel = null;
            }
            zza(i, bundle, j, parcel);
            parcel1.writeNoException();
            return true;
        }

        public zza()
        {
            attachInterface(this, "com.google.android.gms.panorama.internal.IPanoramaCallbacks");
        }
    }

    private static class zza.zza
        implements zzsu
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(int i, Bundle bundle, int j, Intent intent)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.panorama.internal.IPanoramaCallbacks");
            parcel.writeInt(i);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            bundle.writeToParcel(parcel, 0);
_L3:
            parcel.writeInt(j);
            if (intent == null)
            {
                break MISSING_BLOCK_LABEL_119;
            }
            parcel.writeInt(1);
            intent.writeToParcel(parcel, 0);
_L4:
            zzle.transact(1, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
              goto _L3
            bundle;
            parcel1.recycle();
            parcel.recycle();
            throw bundle;
            parcel.writeInt(0);
              goto _L4
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void zza(int i, Bundle bundle, int j, Intent intent)
        throws RemoteException;
}
