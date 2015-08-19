// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.nearby.connection.AppMetadata;
import com.google.android.gms.nearby.connection.AppMetadataCreator;

public interface zzrm
    extends IInterface
{
    public static abstract class zza extends Binder
        implements zzrm
    {

        public static zzrm zzch(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            if (iinterface != null && (iinterface instanceof zzrm))
            {
                return (zzrm)iinterface;
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
                parcel1.writeString("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                return true;

            case 1001: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                onConnectionRequest(parcel.readString(), parcel.readString(), parcel.readString(), parcel.createByteArray());
                parcel1.writeNoException();
                return true;

            case 1002: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                onEndpointFound(parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1003: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                onEndpointLost(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1004: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                String s = parcel.readString();
                String s2 = parcel.readString();
                String s3 = parcel.readString();
                String s4 = parcel.readString();
                if (parcel.readInt() != 0)
                {
                    parcel = AppMetadata.CREATOR.createFromParcel(parcel);
                } else
                {
                    parcel = null;
                }
                zza(s, s2, s3, s4, parcel);
                parcel1.writeNoException();
                return true;

            case 1005: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzcw(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1006: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zza(parcel.readString(), parcel.readInt(), parcel.createByteArray());
                parcel1.writeNoException();
                return true;

            case 1007: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                String s1 = parcel.readString();
                byte abyte0[] = parcel.createByteArray();
                boolean flag;
                if (parcel.readInt() != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                onMessageReceived(s1, abyte0, flag);
                parcel1.writeNoException();
                return true;

            case 1008: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                onDisconnected(parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1009: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzi(parcel.readInt(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 1010: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzgs(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 1011: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzgt(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 1012: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzgu(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 1013: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzgv(parcel.readInt());
                parcel1.writeNoException();
                return true;

            case 1014: 
                parcel.enforceInterface("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
                zzgw(parcel.readInt());
                parcel1.writeNoException();
                return true;
            }
        }

        public zza()
        {
            attachInterface(this, "com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
        }
    }

    private static class zza.zza
        implements zzrm
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void onConnectionRequest(String s, String s1, String s2, byte abyte0[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeByteArray(abyte0);
            zzle.transact(1001, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void onDisconnected(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            zzle.transact(1008, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void onEndpointFound(String s, String s1, String s2, String s3)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            zzle.transact(1002, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void onEndpointLost(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            zzle.transact(1003, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void onMessageReceived(String s, byte abyte0[], boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            int i;
            i = 0;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            parcel.writeByteArray(abyte0);
            if (flag)
            {
                i = 1;
            }
            parcel.writeInt(i);
            zzle.transact(1007, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void zza(String s, int i, byte abyte0[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            parcel.writeInt(i);
            parcel.writeByteArray(abyte0);
            zzle.transact(1006, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void zza(String s, String s1, String s2, String s3, AppMetadata appmetadata)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            if (appmetadata == null)
            {
                break MISSING_BLOCK_LABEL_95;
            }
            parcel.writeInt(1);
            appmetadata.writeToParcel(parcel, 0);
_L1:
            zzle.transact(1004, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void zzcw(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeString(s);
            zzle.transact(1005, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void zzgs(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            zzle.transact(1010, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void zzgt(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            zzle.transact(1011, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void zzgu(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            zzle.transact(1012, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void zzgv(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            zzle.transact(1013, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void zzgw(int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            zzle.transact(1014, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel1.recycle();
            parcel.recycle();
            throw exception;
        }

        public void zzi(int i, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.nearby.internal.connection.INearbyConnectionCallbacks");
            parcel.writeInt(i);
            parcel.writeString(s);
            zzle.transact(1009, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        zza.zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void onConnectionRequest(String s, String s1, String s2, byte abyte0[])
        throws RemoteException;

    public abstract void onDisconnected(String s)
        throws RemoteException;

    public abstract void onEndpointFound(String s, String s1, String s2, String s3)
        throws RemoteException;

    public abstract void onEndpointLost(String s)
        throws RemoteException;

    public abstract void onMessageReceived(String s, byte abyte0[], boolean flag)
        throws RemoteException;

    public abstract void zza(String s, int i, byte abyte0[])
        throws RemoteException;

    public abstract void zza(String s, String s1, String s2, String s3, AppMetadata appmetadata)
        throws RemoteException;

    public abstract void zzcw(String s)
        throws RemoteException;

    public abstract void zzgs(int i)
        throws RemoteException;

    public abstract void zzgt(int i)
        throws RemoteException;

    public abstract void zzgu(int i)
        throws RemoteException;

    public abstract void zzgv(int i)
        throws RemoteException;

    public abstract void zzgw(int i)
        throws RemoteException;

    public abstract void zzi(int i, String s)
        throws RemoteException;
}
