// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.games.internal:
//            IGamesSignInService, IGamesSignInCallbacks

private static class 
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
