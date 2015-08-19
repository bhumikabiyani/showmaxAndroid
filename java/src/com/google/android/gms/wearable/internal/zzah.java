// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzal, zzao, zze

public interface zzah
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zzah
    {

        public static zzah zzcQ(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableListener");
            if (iinterface != null && (iinterface instanceof zzah))
            {
                return (zzah)iinterface;
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
            Object obj2 = null;
            Object obj3 = null;
            Object obj4 = null;
            Object obj = null;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.wearable.internal.IWearableListener");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                parcel1 = obj;
                if (parcel.readInt() != 0)
                {
                    parcel1 = DataHolder.CREATOR.zzA(parcel);
                }
                zzab(parcel1);
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                parcel1 = obj1;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (zzal)zzal.CREATOR.createFromParcel(parcel);
                }
                zza(parcel1);
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                parcel1 = obj2;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (zzao)zzao.CREATOR.createFromParcel(parcel);
                }
                zza(parcel1);
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                parcel1 = obj3;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (zzao)zzao.CREATOR.createFromParcel(parcel);
                }
                zzb(parcel1);
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableListener");
                parcel1 = obj4;
                break;
            }
            if (parcel.readInt() != 0)
            {
                parcel1 = (zze)zze.CREATOR.createFromParcel(parcel);
            }
            zza(parcel1);
            return true;
        }

        public zza()
        {
            attachInterface(this, "com.google.android.gms.wearable.internal.IWearableListener");
        }
    }

    private static class zza.zza
        implements zzah
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(zzal zzal1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (zzal1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            parcel.writeInt(1);
            zzal1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(2, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzal1;
            parcel.recycle();
            throw zzal1;
        }

        public void zza(zzao zzao1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (zzao1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            parcel.writeInt(1);
            zzao1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(3, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzao1;
            parcel.recycle();
            throw zzao1;
        }

        public void zza(zze zze1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (zze1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            parcel.writeInt(1);
            zze1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(5, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zze1;
            parcel.recycle();
            throw zze1;
        }

        public void zzab(DataHolder dataholder)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (dataholder == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            parcel.writeInt(1);
            dataholder.writeToParcel(parcel, 0);
_L1:
            zzle.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            dataholder;
            parcel.recycle();
            throw dataholder;
        }

        public void zzb(zzao zzao1)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableListener");
            if (zzao1 == null)
            {
                break MISSING_BLOCK_LABEL_44;
            }
            parcel.writeInt(1);
            zzao1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(4, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzao1;
            parcel.recycle();
            throw zzao1;
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void zza(zzal zzal)
        throws RemoteException;

    public abstract void zza(zzao zzao)
        throws RemoteException;

    public abstract void zza(zze zze)
        throws RemoteException;

    public abstract void zzab(DataHolder dataholder)
        throws RemoteException;

    public abstract void zzb(zzao zzao)
        throws RemoteException;
}
