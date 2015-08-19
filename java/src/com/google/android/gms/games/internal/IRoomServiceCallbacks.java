// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.games.internal:
//            ConnectionInfo, ConnectionInfoCreator

public interface IRoomServiceCallbacks
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IRoomServiceCallbacks
    {

        public static IRoomServiceCallbacks zzbc(IBinder ibinder)
        {
            if (ibinder == null)
            {
                return null;
            }
            IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            if (iinterface != null && (iinterface instanceof IRoomServiceCallbacks))
            {
                return (IRoomServiceCallbacks)iinterface;
            } else
            {
                return new Proxy(ibinder);
            }
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
                parcel1.writeString("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                return true;

            case 1001: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzc(parcel.readInt(), parcel.readInt(), parcel.readString());
                return true;

            case 1002: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zza(parcel.readString(), parcel.createByteArray(), parcel.readInt());
                return true;

            case 1003: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzcd(parcel.readString());
                return true;

            case 1004: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzce(parcel.readString());
                return true;

            case 1005: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzcf(parcel.readString());
                return true;

            case 1006: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzcg(parcel.readString());
                return true;

            case 1007: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzch(parcel.readString());
                return true;

            case 1008: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zza(parcel.readString(), parcel.createStringArray());
                return true;

            case 1009: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzb(parcel.readString(), parcel.createStringArray());
                return true;

            case 1010: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzc(parcel.readString(), parcel.createStringArray());
                return true;

            case 1011: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzd(parcel.readString(), parcel.createStringArray());
                return true;

            case 1012: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zze(parcel.readString(), parcel.createStringArray());
                return true;

            case 1013: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzf(parcel.readString(), parcel.createStringArray());
                return true;

            case 1014: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                onP2PConnected(parcel.readString());
                return true;

            case 1015: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                onP2PDisconnected(parcel.readString());
                return true;

            case 1016: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zznZ();
                return true;

            case 1017: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzg(parcel.readString(), parcel.createStringArray());
                return true;

            case 1018: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzc(parcel.readString(), parcel.createByteArray());
                return true;

            case 1019: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzci(parcel.readString());
                return true;

            case 1020: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzeG(parcel.readInt());
                return true;

            case 1021: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzbb(parcel.readStrongBinder());
                return true;

            case 1022: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                parcel1 = obj;
                if (parcel.readInt() != 0)
                {
                    parcel1 = ConnectionInfo.CREATOR.zzcX(parcel);
                }
                zza(parcel1);
                return true;

            case 1023: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzoa();
                return true;

            case 1024: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                parcel1 = obj1;
                if (parcel.readInt() != 0)
                {
                    parcel1 = (ParcelFileDescriptor)ParcelFileDescriptor.CREATOR.createFromParcel(parcel);
                }
                zza(parcel1, parcel.readInt());
                return true;

            case 1025: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                zzy(parcel.readString(), parcel.readInt());
                return true;

            case 1026: 
                parcel.enforceInterface("com.google.android.gms.games.internal.IRoomServiceCallbacks");
                parcel1 = parcel.readString();
                break;
            }
            boolean flag;
            if (parcel.readInt() != 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzi(parcel1, flag);
            return true;
        }

        public Stub()
        {
            attachInterface(this, "com.google.android.gms.games.internal.IRoomServiceCallbacks");
        }
    }

    private static class Stub.Proxy
        implements IRoomServiceCallbacks
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void onP2PConnected(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1014, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void onP2PDisconnected(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1015, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zza(ParcelFileDescriptor parcelfiledescriptor, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            if (parcelfiledescriptor == null)
            {
                break MISSING_BLOCK_LABEL_51;
            }
            parcel.writeInt(1);
            parcelfiledescriptor.writeToParcel(parcel, 0);
_L1:
            parcel.writeInt(i);
            zzle.transact(1024, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            parcelfiledescriptor;
            parcel.recycle();
            throw parcelfiledescriptor;
        }

        public void zza(ConnectionInfo connectioninfo)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            if (connectioninfo == null)
            {
                break MISSING_BLOCK_LABEL_46;
            }
            parcel.writeInt(1);
            connectioninfo.writeToParcel(parcel, 0);
_L1:
            zzle.transact(1022, parcel, null, 1);
            parcel.recycle();
            return;
            parcel.writeInt(0);
              goto _L1
            connectioninfo;
            parcel.recycle();
            throw connectioninfo;
        }

        public void zza(String s, byte abyte0[], int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeByteArray(abyte0);
            parcel.writeInt(i);
            zzle.transact(1002, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zza(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1008, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzb(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1009, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzbb(IBinder ibinder)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeStrongBinder(ibinder);
            zzle.transact(1021, parcel, null, 1);
            parcel.recycle();
            return;
            ibinder;
            parcel.recycle();
            throw ibinder;
        }

        public void zzc(int i, int j, String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeInt(i);
            parcel.writeInt(j);
            parcel.writeString(s);
            zzle.transact(1001, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzc(String s, byte abyte0[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeByteArray(abyte0);
            zzle.transact(1018, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzc(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1010, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzcd(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1003, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzce(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1004, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzcf(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1005, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzcg(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1006, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzch(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1007, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzci(String s)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            zzle.transact(1019, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzd(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1011, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zze(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1012, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzeG(int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeInt(i);
            zzle.transact(1020, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zzf(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1013, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzg(String s, String as[])
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeStringArray(as);
            zzle.transact(1017, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zzi(String s, boolean flag)
            throws RemoteException
        {
            Parcel parcel;
            int i;
            i = 1;
            parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            if (!flag)
            {
                i = 0;
            }
            parcel.writeInt(i);
            zzle.transact(1026, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        public void zznZ()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            zzle.transact(1016, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zzoa()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            zzle.transact(1023, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        public void zzy(String s, int i)
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.games.internal.IRoomServiceCallbacks");
            parcel.writeString(s);
            parcel.writeInt(i);
            zzle.transact(1025, parcel, null, 1);
            parcel.recycle();
            return;
            s;
            parcel.recycle();
            throw s;
        }

        Stub.Proxy(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public abstract void onP2PConnected(String s)
        throws RemoteException;

    public abstract void onP2PDisconnected(String s)
        throws RemoteException;

    public abstract void zza(ParcelFileDescriptor parcelfiledescriptor, int i)
        throws RemoteException;

    public abstract void zza(ConnectionInfo connectioninfo)
        throws RemoteException;

    public abstract void zza(String s, byte abyte0[], int i)
        throws RemoteException;

    public abstract void zza(String s, String as[])
        throws RemoteException;

    public abstract void zzb(String s, String as[])
        throws RemoteException;

    public abstract void zzbb(IBinder ibinder)
        throws RemoteException;

    public abstract void zzc(int i, int j, String s)
        throws RemoteException;

    public abstract void zzc(String s, byte abyte0[])
        throws RemoteException;

    public abstract void zzc(String s, String as[])
        throws RemoteException;

    public abstract void zzcd(String s)
        throws RemoteException;

    public abstract void zzce(String s)
        throws RemoteException;

    public abstract void zzcf(String s)
        throws RemoteException;

    public abstract void zzcg(String s)
        throws RemoteException;

    public abstract void zzch(String s)
        throws RemoteException;

    public abstract void zzci(String s)
        throws RemoteException;

    public abstract void zzd(String s, String as[])
        throws RemoteException;

    public abstract void zze(String s, String as[])
        throws RemoteException;

    public abstract void zzeG(int i)
        throws RemoteException;

    public abstract void zzf(String s, String as[])
        throws RemoteException;

    public abstract void zzg(String s, String as[])
        throws RemoteException;

    public abstract void zzi(String s, boolean flag)
        throws RemoteException;

    public abstract void zznZ()
        throws RemoteException;

    public abstract void zzoa()
        throws RemoteException;

    public abstract void zzy(String s, int i)
        throws RemoteException;
}
