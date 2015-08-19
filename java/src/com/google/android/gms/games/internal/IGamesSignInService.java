// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.games.internal:
//            IGamesSignInCallbacks

public interface IGamesSignInService
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IGamesSignInService
    {

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.games.internal.IGamesSignInService");
                return true;

            case 5001: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                parcel = zzbZ(parcel.readString());
                parcel1.writeNoException();
                parcel1.writeString(parcel);
                return true;

            case 5002: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                parcel = zzca(parcel.readString());
                parcel1.writeNoException();
                parcel1.writeString(parcel);
                return true;

            case 5009: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                String s = parcel.readString();
                boolean flag;
                if (parcel.readInt() != 0)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                parcel = zzh(s, flag);
                parcel1.writeNoException();
                parcel1.writeString(parcel);
                return true;

            case 5003: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5004: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 5005: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5006: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5007: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zzb(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 5008: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.readString(), parcel.readString(), parcel.createStringArray());
                parcel1.writeNoException();
                return true;

            case 9001: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zzx(parcel.readString(), parcel.readString());
                parcel1.writeNoException();
                return true;

            case 14001: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IGamesSignInService");
                zza(IGamesSignInCallbacks.Stub.zzba(parcel.readStrongBinder()), parcel.readString());
                parcel1.writeNoException();
                return true;
            }
        }

        public Stub()
        {
            attachInterface(this, "com.google.android.gms.games.internal.IGamesSignInService");
        }
    }

    private static class Stub.Proxy
        implements IGamesSignInService
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_68;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            zzle.transact(14001, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_80;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            zzle.transact(5006, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            zzle.transact(5005, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String s3, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeString(s3);
            parcel.writeStringArray(as);
            zzle.transact(5008, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String as[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_94;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            zzle.transact(5004, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String as[], String s3)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_101;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            parcel.writeStringArray(as);
            parcel.writeString(s3);
            zzle.transact(5003, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public void zzb(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            if (igamessignincallbacks == null)
            {
                break MISSING_BLOCK_LABEL_87;
            }
            igamessignincallbacks = igamessignincallbacks.asBinder();
_L1:
            parcel.writeStrongBinder(igamessignincallbacks);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            zzle.transact(5007, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            igamessignincallbacks = null;
              goto _L1
            igamessignincallbacks;
            parcel1.recycle();
            parcel.recycle();
            throw igamessignincallbacks;
        }

        public String zzbZ(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            zzle.transact(5001, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String zzca(String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            zzle.transact(5002, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public String zzh(String s, boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            int i;
            i = 0;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            if (flag)
            {
                i = 1;
            }
            parcel.writeInt(i);
            zzle.transact(5009, parcel, parcel1, 0);
            parcel1.readException();
            s = parcel1.readString();
            parcel1.recycle();
            parcel.recycle();
            return s;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }

        public void zzx(String s, String s1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IGamesSignInService");
            parcel.writeString(s);
            parcel.writeString(s1);
            zzle.transact(9001, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            s;
            parcel1.recycle();
            parcel.recycle();
            throw s;
        }
    }


    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s)
        throws RemoteException;

    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1)
        throws RemoteException;

    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
        throws RemoteException;

    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String s3, String as[])
        throws RemoteException;

    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String as[])
        throws RemoteException;

    public abstract void zza(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2, String as[], String s3)
        throws RemoteException;

    public abstract void zzb(IGamesSignInCallbacks igamessignincallbacks, String s, String s1, String s2)
        throws RemoteException;

    public abstract String zzbZ(String s)
        throws RemoteException;

    public abstract String zzca(String s)
        throws RemoteException;

    public abstract String zzh(String s, boolean flag)
        throws RemoteException;

    public abstract void zzx(String s, String s1)
        throws RemoteException;
}
