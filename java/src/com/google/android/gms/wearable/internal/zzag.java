// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.StatusCreator;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzaa, zzac, zzae, zzas, 
//            zzaw, zzaz, zzs, zzu, 
//            zzw, zzy

public interface zzag
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zzag
    {

        public static zzag zzcP(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (iinterface != null && (iinterface instanceof zzag))
            {
                return (zzag)iinterface;
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
            Object obj5 = null;
            Object obj6 = null;
            Object obj7 = null;
            Object obj8 = null;
            Object obj9 = null;
            Object obj10 = null;
            Object obj11 = null;
            Object obj = null;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.wearable.internal.IWearableCallbacks");
                return true;

            case 2: // '\002'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                if (parcel.readInt() != 0)
                {
                    obj = (zzu)zzu.CREATOR.createFromParcel(parcel);
                }
                zza(((zzu) (obj)));
                parcel1.writeNoException();
                return true;

            case 13: // '\r'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj1;
                if (parcel.readInt() != 0)
                {
                    obj = (zzw)zzw.CREATOR.createFromParcel(parcel);
                }
                zza(((zzw) (obj)));
                parcel1.writeNoException();
                return true;

            case 3: // '\003'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj2;
                if (parcel.readInt() != 0)
                {
                    obj = (zzas)zzas.CREATOR.createFromParcel(parcel);
                }
                zza(((zzas) (obj)));
                parcel1.writeNoException();
                return true;

            case 4: // '\004'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj3;
                if (parcel.readInt() != 0)
                {
                    obj = (zzaa)zzaa.CREATOR.createFromParcel(parcel);
                }
                zza(((zzaa) (obj)));
                parcel1.writeNoException();
                return true;

            case 5: // '\005'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj4;
                if (parcel.readInt() != 0)
                {
                    obj = DataHolder.CREATOR.zzA(parcel);
                }
                zzac(((DataHolder) (obj)));
                parcel1.writeNoException();
                return true;

            case 6: // '\006'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj5;
                if (parcel.readInt() != 0)
                {
                    obj = (zzs)zzs.CREATOR.createFromParcel(parcel);
                }
                zza(((zzs) (obj)));
                parcel1.writeNoException();
                return true;

            case 7: // '\007'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj6;
                if (parcel.readInt() != 0)
                {
                    obj = (zzaw)zzaw.CREATOR.createFromParcel(parcel);
                }
                zza(((zzaw) (obj)));
                parcel1.writeNoException();
                return true;

            case 8: // '\b'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj7;
                if (parcel.readInt() != 0)
                {
                    obj = (zzac)zzac.CREATOR.createFromParcel(parcel);
                }
                zza(((zzac) (obj)));
                parcel1.writeNoException();
                return true;

            case 9: // '\t'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj8;
                if (parcel.readInt() != 0)
                {
                    obj = (zzae)zzae.CREATOR.createFromParcel(parcel);
                }
                zza(((zzae) (obj)));
                parcel1.writeNoException();
                return true;

            case 10: // '\n'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj9;
                if (parcel.readInt() != 0)
                {
                    obj = (zzy)zzy.CREATOR.createFromParcel(parcel);
                }
                zza(((zzy) (obj)));
                parcel1.writeNoException();
                return true;

            case 11: // '\013'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj10;
                if (parcel.readInt() != 0)
                {
                    obj = Status.CREATOR.createFromParcel(parcel);
                }
                zza(((Status) (obj)));
                parcel1.writeNoException();
                return true;

            case 12: // '\f'
                parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableCallbacks");
                obj = obj11;
                break;
            }
            if (parcel.readInt() != 0)
            {
                obj = (zzaz)zzaz.CREATOR.createFromParcel(parcel);
            }
            zza(((zzaz) (obj)));
            parcel1.writeNoException();
            return true;
        }

        public zza()
        {
            attachInterface(this, "com.google.android.gms.wearable.internal.IWearableCallbacks");
        }
    }

    private static class zza.zza
        implements zzag
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(Status status)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (status == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            status.writeToParcel(parcel, 0);
_L1:
            zzle.transact(11, parcel, parcel1, 0);
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

        public void zza(zzaa zzaa1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzaa1 == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            zzaa1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzaa1;
            parcel1.recycle();
            parcel.recycle();
            throw zzaa1;
        }

        public void zza(zzac zzac1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzac1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzac1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzac1;
            parcel1.recycle();
            parcel.recycle();
            throw zzac1;
        }

        public void zza(zzae zzae1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzae1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzae1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzae1;
            parcel1.recycle();
            parcel.recycle();
            throw zzae1;
        }

        public void zza(zzas zzas1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzas1 == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            zzas1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzas1;
            parcel1.recycle();
            parcel.recycle();
            throw zzas1;
        }

        public void zza(zzaw zzaw1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzaw1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzaw1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzaw1;
            parcel1.recycle();
            parcel.recycle();
            throw zzaw1;
        }

        public void zza(zzaz zzaz1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzaz1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzaz1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzaz1;
            parcel1.recycle();
            parcel.recycle();
            throw zzaz1;
        }

        public void zza(zzs zzs1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzs1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzs1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzs1;
            parcel1.recycle();
            parcel.recycle();
            throw zzs1;
        }

        public void zza(zzu zzu1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzu1 == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            zzu1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzu1;
            parcel1.recycle();
            parcel.recycle();
            throw zzu1;
        }

        public void zza(zzw zzw1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzw1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzw1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzw1;
            parcel1.recycle();
            parcel.recycle();
            throw zzw1;
        }

        public void zza(zzy zzy1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (zzy1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            parcel.writeInt(1);
            zzy1.writeToParcel(parcel, 0);
_L1:
            zzle.transact(10, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            zzy1;
            parcel1.recycle();
            parcel.recycle();
            throw zzy1;
        }

        public void zzac(DataHolder dataholder)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableCallbacks");
            if (dataholder == null)
            {
                break MISSING_BLOCK_LABEL_56;
            }
            parcel.writeInt(1);
            dataholder.writeToParcel(parcel, 0);
_L1:
            zzle.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            dataholder;
            parcel1.recycle();
            parcel.recycle();
            throw dataholder;
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void zza(Status status)
        throws RemoteException;

    public abstract void zza(zzaa zzaa)
        throws RemoteException;

    public abstract void zza(zzac zzac1)
        throws RemoteException;

    public abstract void zza(zzae zzae)
        throws RemoteException;

    public abstract void zza(zzas zzas)
        throws RemoteException;

    public abstract void zza(zzaw zzaw)
        throws RemoteException;

    public abstract void zza(zzaz zzaz)
        throws RemoteException;

    public abstract void zza(zzs zzs)
        throws RemoteException;

    public abstract void zza(zzu zzu)
        throws RemoteException;

    public abstract void zza(zzw zzw)
        throws RemoteException;

    public abstract void zza(zzy zzy)
        throws RemoteException;

    public abstract void zzac(DataHolder dataholder)
        throws RemoteException;
}
