// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzf;

// Referenced classes of package com.google.android.gms.games.internal:
//            IRoomServiceCallbacks

public interface IRoomService
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IRoomService
    {

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            boolean flag2 = false;
            boolean flag = false;
            switch (i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("com.google.android.gms.games.internal.IRoomService");
                return true;

            case 1001: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zza(parcel.readStrongBinder(), IRoomServiceCallbacks.Stub.zzbc(parcel.readStrongBinder()));
                return true;

            case 1002: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zznV();
                return true;

            case 1003: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zznW();
                return true;

            case 1004: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zze(parcel.readString(), parcel.readString(), parcel.readString());
                return true;

            case 1005: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zznX();
                return true;

            case 1006: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                if (parcel.readInt() != 0)
                {
                    parcel1 = DataHolder.CREATOR.zzA(parcel);
                } else
                {
                    parcel1 = null;
                }
                if (parcel.readInt() != 0)
                {
                    flag = true;
                }
                zza(parcel1, flag);
                return true;

            case 1007: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zznY();
                return true;

            case 1008: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                boolean flag1 = flag2;
                if (parcel.readInt() != 0)
                {
                    flag1 = true;
                }
                zzV(flag1);
                return true;

            case 1009: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zza(parcel.createByteArray(), parcel.readString(), parcel.readInt());
                return true;

            case 1010: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zza(parcel.createByteArray(), parcel.createStringArray());
                return true;

            case 1011: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zzw(parcel.readString(), parcel.readInt());
                return true;

            case 1012: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zzx(parcel.readString(), parcel.readInt());
                return true;

            case 1013: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zzcb(parcel.readString());
                return true;

            case 1014: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomService");
                zzcc(parcel.readString());
                return true;
            }
        }

        public Stub()
        {
            attachInterface(this, "com.google.android.gms.games.internal.IRoomService");
        }
    }

    private static class Stub.Proxy
        implements IRoomService
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zzV(boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            int i;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            zzle.transact(1008, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zza(IBinder ibinder, IRoomServiceCallbacks iroomservicecallbacks)
            throws RemoteException
        {
            Object obj;
            Parcel parcel;
            obj = null;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeStrongBinder(ibinder);
            ibinder = obj;
            if (iroomservicecallbacks == null)
            {
                break MISSING_BLOCK_LABEL_33;
            }
            ibinder = iroomservicecallbacks.asBinder();
            parcel.writeStrongBinder(ibinder);
            zzle.transact(1001, parcel, null, 1);
            parcel.recycle();
            return;
            ibinder;
            parcel.recycle();
            throw ibinder;
        }

        public void zza(DataHolder dataholder, boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            int i;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            if (dataholder == null) goto _L2; else goto _L1
_L1:
            parcel.writeInt(1);
            dataholder.writeToParcel(parcel, 0);
              goto _L3
_L5:
            parcel.writeInt(i);
            zzle.transact(1006, parcel, null, 1);
            parcel.recycle();
            return;
_L2:
            parcel.writeInt(0);
            break; /* Loop/switch isn't completed */
            dataholder;
            parcel.recycle();
            throw dataholder;
_L6:
            i = 0;
            if (true) goto _L4; else goto _L3
_L4:
            break; /* Loop/switch isn't completed */
_L3:
            if (!flag) goto _L6; else goto _L5
        }

        public void zza(byte abyte0[], String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeString(s);
            parcel.writeInt(i);
            zzle.transact(1009, parcel, null, 1);
            parcel.recycle();
            return;
            abyte0;
            parcel.recycle();
            throw abyte0;
        }

        public void zza(byte abyte0[], String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeByteArray(abyte0);
            parcel.writeStringArray(as);
            zzle.transact(1010, parcel, null, 1);
            parcel.recycle();
            return;
            abyte0;
            parcel.recycle();
            throw abyte0;
        }

        public void zzcb(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            zzle.transact(1013, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzcc(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            zzle.transact(1014, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zze(String s, String s1, String s2)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeString(s2);
            zzle.transact(1004, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zznV()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            zzle.transact(1002, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zznW()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            zzle.transact(1003, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zznX()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            zzle.transact(1005, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zznY()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            zzle.transact(1007, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zzw(String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeInt(i);
            zzle.transact(1011, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzx(String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomService");
            parcel.writeString(s);
            parcel.writeInt(i);
            zzle.transact(1012, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }
    }


    public abstract void zzV(boolean flag)
        throws RemoteException;

    public abstract void zza(IBinder ibinder, IRoomServiceCallbacks iroomservicecallbacks)
        throws RemoteException;

    public abstract void zza(DataHolder dataholder, boolean flag)
        throws RemoteException;

    public abstract void zza(byte abyte0[], String s, int i)
        throws RemoteException;

    public abstract void zza(byte abyte0[], String as[])
        throws RemoteException;

    public abstract void zzcb(String s)
        throws RemoteException;

    public abstract void zzcc(String s)
        throws RemoteException;

    public abstract void zze(String s, String s1, String s2)
        throws RemoteException;

    public abstract void zznV()
        throws RemoteException;

    public abstract void zznW()
        throws RemoteException;

    public abstract void zznX()
        throws RemoteException;

    public abstract void zznY()
        throws RemoteException;

    public abstract void zzw(String s, int i)
        throws RemoteException;

    public abstract void zzx(String s, int i)
        throws RemoteException;
}
