// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.games.internal:
//            IRoomServiceCallbacks, ConnectionInfo

private static class zzle
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

    (IBinder ibinder)
    {
        zzle = ibinder;
    }
}
