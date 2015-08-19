// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.ICancelToken;
import com.google.android.gms.internal.zzkw;
import com.google.android.gms.internal.zzlk;
import java.util.List;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zzd, zzb

private static class zzle
    implements zzd
{

    private IBinder zzle;

    public IBinder asBinder()
    {
        return zzle;
    }

    public String getAccountName()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        String s;
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        zzle.transact(5, parcel, parcel1, 0);
        parcel1.readException();
        s = parcel1.readString();
        parcel1.recycle();
        parcel.recycle();
        return s;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public ICancelToken zza(zzb zzb1, int i, int j, int k, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeInt(i);
        parcel.writeInt(j);
        parcel.writeInt(k);
        parcel.writeString(s);
        zzle.transact(16, parcel, parcel1, 0);
        parcel1.readException();
        zzb1 = com.google.android.gms.common.internal..zza.zzS(parcel1.readStrongBinder());
        parcel1.recycle();
        parcel.recycle();
        return zzb1;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zza(zzlk zzlk1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzlk1 == null)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        parcel.writeInt(1);
        zzlk1.writeToParcel(parcel, 0);
_L1:
        zzle.transact(4, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        parcel.writeInt(0);
          goto _L1
        zzlk1;
        parcel1.recycle();
        parcel.recycle();
        throw zzlk1;
    }

    public void zza(zzb zzb1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        zzle.transact(8, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zza(zzb zzb1, int i, String s, Uri uri, String s1, String s2)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null) goto _L2; else goto _L1
_L1:
        zzb1 = zzb1.asBinder();
_L5:
        parcel.writeStrongBinder(zzb1);
        parcel.writeInt(i);
        parcel.writeString(s);
        if (uri == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        uri.writeToParcel(parcel, 0);
_L6:
        parcel.writeString(s1);
        parcel.writeString(s2);
        zzle.transact(14, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        zzb1 = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
          goto _L5
    }

    public void zza(zzb zzb1, Uri uri, Bundle bundle)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null) goto _L2; else goto _L1
_L1:
        zzb1 = zzb1.asBinder();
_L5:
        parcel.writeStrongBinder(zzb1);
        if (uri == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        uri.writeToParcel(parcel, 0);
_L6:
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        parcel.writeInt(1);
        bundle.writeToParcel(parcel, 0);
_L7:
        zzle.transact(9, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        zzb1 = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
        parcel.writeInt(0);
          goto _L7
    }

    public void zza(zzb zzb1, zzlk zzlk1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null) goto _L2; else goto _L1
_L1:
        zzb1 = zzb1.asBinder();
_L5:
        parcel.writeStrongBinder(zzb1);
        if (zzlk1 == null) goto _L4; else goto _L3
_L3:
        parcel.writeInt(1);
        zzlk1.writeToParcel(parcel, 0);
_L6:
        zzle.transact(45, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        zzb1 = null;
          goto _L5
_L4:
        parcel.writeInt(0);
          goto _L6
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
          goto _L5
    }

    public void zza(zzb zzb1, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        zzle.transact(1, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zza(zzb zzb1, String s, String s1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        parcel.writeString(s1);
        zzle.transact(2, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zza(zzb zzb1, List list)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeStringList(list);
        zzle.transact(34, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zza(String s, zzkw zzkw1, zzkw zzkw2)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        parcel.writeString(s);
        if (zzkw1 == null) goto _L2; else goto _L1
_L1:
        parcel.writeInt(1);
        zzkw1.writeToParcel(parcel, 0);
_L3:
        if (zzkw2 == null)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        parcel.writeInt(1);
        zzkw2.writeToParcel(parcel, 0);
_L4:
        zzle.transact(46, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
_L2:
        parcel.writeInt(0);
          goto _L3
        s;
        parcel1.recycle();
        parcel.recycle();
        throw s;
        parcel.writeInt(0);
          goto _L4
    }

    public void zzb(zzb zzb1)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        zzle.transact(19, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zzb(zzb zzb1, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        zzle.transact(3, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zzc(zzb zzb1, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        zzle.transact(18, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zzcE(String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        parcel.writeString(s);
        zzle.transact(17, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        s;
        parcel1.recycle();
        parcel.recycle();
        throw s;
    }

    public void zzd(zzb zzb1, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        zzle.transact(40, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zze(zzb zzb1, String s)
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        if (zzb1 == null)
        {
            break MISSING_BLOCK_LABEL_67;
        }
        zzb1 = zzb1.asBinder();
_L1:
        parcel.writeStrongBinder(zzb1);
        parcel.writeString(s);
        zzle.transact(44, parcel, parcel1, 0);
        parcel1.readException();
        parcel1.recycle();
        parcel.recycle();
        return;
        zzb1 = null;
          goto _L1
        zzb1;
        parcel1.recycle();
        parcel.recycle();
        throw zzb1;
    }

    public void zzrK()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        zzle.transact(6, parcel, parcel1, 0);
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

    public String zzrL()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        String s;
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        zzle.transact(41, parcel, parcel1, 0);
        parcel1.readException();
        s = parcel1.readString();
        parcel1.recycle();
        parcel.recycle();
        return s;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public boolean zzrM()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        boolean flag;
        flag = false;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        int i;
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        zzle.transact(42, parcel, parcel1, 0);
        parcel1.readException();
        i = parcel1.readInt();
        if (i != 0)
        {
            flag = true;
        }
        parcel1.recycle();
        parcel.recycle();
        return flag;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    public String zzrN()
        throws RemoteException
    {
        Parcel parcel;
        Parcel parcel1;
        parcel = Parcel.obtain();
        parcel1 = Parcel.obtain();
        String s;
        parcel.writeInterfaceToken("com.google.android.gms.plus.internal.IPlusService");
        zzle.transact(43, parcel, parcel1, 0);
        parcel1.readException();
        s = parcel1.readString();
        parcel1.recycle();
        parcel.recycle();
        return s;
        Exception exception;
        exception;
        parcel1.recycle();
        parcel.recycle();
        throw exception;
    }

    en(IBinder ibinder)
    {
        zzle = ibinder;
    }
}
