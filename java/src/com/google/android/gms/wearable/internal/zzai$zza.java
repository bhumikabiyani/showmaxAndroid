// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.PutDataRequest;
import com.google.android.gms.wearable.zze;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzai, zzb, zzau, zze, 
//            zzag

public static abstract class zza.zzle extends Binder
    implements zzai
{
    private static class zza
        implements zzai
    {

        private IBinder zzle;

        public IBinder asBinder()
        {
            return zzle;
        }

        public void zza(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(22, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zza(zzag zzag1, int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeInt(i);
            zzle.transact(28, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zza(zzag zzag1, Uri uri)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L6:
            zzle.transact(7, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, Asset asset)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (asset == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            asset.writeToParcel(parcel, 0);
_L6:
            zzle.transact(13, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, PutDataRequest putdatarequest)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (putdatarequest == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            putdatarequest.writeToParcel(parcel, 0);
_L6:
            zzle.transact(6, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, zzau zzau1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (zzau1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            zzau1.writeToParcel(parcel, 0);
_L6:
            zzle.transact(17, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, zzb zzb1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (zzb1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            zzb1.writeToParcel(parcel, 0);
_L6:
            zzle.transact(16, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, com.google.android.gms.wearable.internal.zze zze1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (zze1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            zze1.writeToParcel(parcel, 0);
_L6:
            zzle.transact(27, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, zze zze1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (zze1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            zze1.writeToParcel(parcel, 0);
_L6:
            zzle.transact(20, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zza(zzag zzag1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeString(s);
            zzle.transact(21, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zza(zzag zzag1, String s, String s1, byte abyte0[])
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_86;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeString(s);
            parcel.writeString(s1);
            parcel.writeByteArray(abyte0);
            zzle.transact(12, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzb(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(8, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzb(zzag zzag1, int i)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeInt(i);
            zzle.transact(29, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzb(zzag zzag1, Uri uri)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L6:
            zzle.transact(9, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zzb(zzag zzag1, zze zze1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (zze1 == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            zze1.writeToParcel(parcel, 0);
_L6:
            zzle.transact(2, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zzb(zzag zzag1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeString(s);
            zzle.transact(23, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzc(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(14, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzc(zzag zzag1, Uri uri)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null) goto _L2; else goto _L1
_L1:
            zzag1 = zzag1.asBinder();
_L5:
            parcel.writeStrongBinder(zzag1);
            if (uri == null) goto _L4; else goto _L3
_L3:
            parcel.writeInt(1);
            uri.writeToParcel(parcel, 0);
_L6:
            zzle.transact(11, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
_L2:
            zzag1 = null;
              goto _L5
_L4:
            parcel.writeInt(0);
              goto _L6
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
              goto _L5
        }

        public void zzc(zzag zzag1, String s)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_67;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            parcel.writeString(s);
            zzle.transact(24, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzd(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(15, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zze(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(18, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzf(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(19, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzg(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(25, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzh(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(26, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzi(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(30, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzj(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(3, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzk(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(4, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        public void zzl(zzag zzag1)
            throws RemoteException
        {
            Parcel parcel;
            Parcel parcel1;
            parcel = Parcel.obtain();
            parcel1 = Parcel.obtain();
            parcel.writeInterfaceToken("com.google.android.gms.wearable.internal.IWearableService");
            if (zzag1 == null)
            {
                break MISSING_BLOCK_LABEL_57;
            }
            zzag1 = zzag1.asBinder();
_L1:
            parcel.writeStrongBinder(zzag1);
            zzle.transact(5, parcel, parcel1, 0);
            parcel1.readException();
            parcel1.recycle();
            parcel.recycle();
            return;
            zzag1 = null;
              goto _L1
            zzag1;
            parcel1.recycle();
            parcel.recycle();
            throw zzag1;
        }

        zza(IBinder ibinder)
        {
            zzle = ibinder;
        }
    }


    public static zzai zzcR(IBinder ibinder)
    {
        if (ibinder == null)
        {
            return null;
        }
        android.os.IInterface iinterface = ibinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
        if (iinterface != null && (iinterface instanceof zzai))
        {
            return (zzai)iinterface;
        } else
        {
            return new zza(ibinder);
        }
    }

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
        throws RemoteException
    {
        zzag zzag = null;
        zzag zzag9 = null;
        Object obj2 = null;
        Object obj3 = null;
        Object obj4 = null;
        Object obj5 = null;
        Object obj6 = null;
        Object obj7 = null;
        Object obj8 = null;
        zze zze1 = null;
        switch (i)
        {
        default:
            return super.onTransact(i, parcel, parcel1, j);

        case 1598968902: 
            parcel1.writeString("com.google.android.gms.wearable.internal.IWearableService");
            return true;

        case 20: // '\024'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag = zzcP(parcel.readStrongBinder());
            if (parcel.readInt() != 0)
            {
                zze1 = (zze)zze.CREATOR.createFromParcel(parcel);
            }
            zza(zzag, zze1);
            parcel1.writeNoException();
            return true;

        case 21: // '\025'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zza(zzcP(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 22: // '\026'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zza(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 23: // '\027'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzb(zzcP(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 24: // '\030'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzc(zzcP(parcel.readStrongBinder()), parcel.readString());
            parcel1.writeNoException();
            return true;

        case 6: // '\006'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag9 = zzcP(parcel.readStrongBinder());
            Object obj = zzag;
            if (parcel.readInt() != 0)
            {
                obj = (PutDataRequest)PutDataRequest.CREATOR.createFromParcel(parcel);
            }
            zza(zzag9, ((PutDataRequest) (obj)));
            parcel1.writeNoException();
            return true;

        case 7: // '\007'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag1 = zzcP(parcel.readStrongBinder());
            Object obj1 = zzag9;
            if (parcel.readInt() != 0)
            {
                obj1 = (Uri)Uri.CREATOR.createFromParcel(parcel);
            }
            zza(zzag1, ((Uri) (obj1)));
            parcel1.writeNoException();
            return true;

        case 8: // '\b'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzb(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 9: // '\t'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag2 = zzcP(parcel.readStrongBinder());
            Uri uri = obj2;
            if (parcel.readInt() != 0)
            {
                uri = (Uri)Uri.CREATOR.createFromParcel(parcel);
            }
            zzb(zzag2, uri);
            parcel1.writeNoException();
            return true;

        case 11: // '\013'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag3 = zzcP(parcel.readStrongBinder());
            Uri uri1 = obj3;
            if (parcel.readInt() != 0)
            {
                uri1 = (Uri)Uri.CREATOR.createFromParcel(parcel);
            }
            zzc(zzag3, uri1);
            parcel1.writeNoException();
            return true;

        case 12: // '\f'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zza(zzcP(parcel.readStrongBinder()), parcel.readString(), parcel.readString(), parcel.createByteArray());
            parcel1.writeNoException();
            return true;

        case 13: // '\r'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag4 = zzcP(parcel.readStrongBinder());
            Asset asset = obj4;
            if (parcel.readInt() != 0)
            {
                asset = (Asset)Asset.CREATOR.createFromParcel(parcel);
            }
            zza(zzag4, asset);
            parcel1.writeNoException();
            return true;

        case 14: // '\016'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzc(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 15: // '\017'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzd(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 16: // '\020'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag5 = zzcP(parcel.readStrongBinder());
            zzb zzb1 = obj5;
            if (parcel.readInt() != 0)
            {
                zzb1 = (zzb)zzb.CREATOR.createFromParcel(parcel);
            }
            zza(zzag5, zzb1);
            parcel1.writeNoException();
            return true;

        case 17: // '\021'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag6 = zzcP(parcel.readStrongBinder());
            zzau zzau1 = obj6;
            if (parcel.readInt() != 0)
            {
                zzau1 = (zzau)zzau.CREATOR.createFromParcel(parcel);
            }
            zza(zzag6, zzau1);
            parcel1.writeNoException();
            return true;

        case 18: // '\022'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zze(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 19: // '\023'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzf(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 25: // '\031'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzg(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 26: // '\032'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzh(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 27: // '\033'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag7 = zzcP(parcel.readStrongBinder());
            com.google.android.gms.wearable.internal.zze zze2 = obj7;
            if (parcel.readInt() != 0)
            {
                zze2 = (com.google.android.gms.wearable.internal.zze)zze.CREATOR.createFromParcel(parcel);
            }
            zza(zzag7, zze2);
            parcel1.writeNoException();
            return true;

        case 28: // '\034'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zza(zzcP(parcel.readStrongBinder()), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 29: // '\035'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzb(zzcP(parcel.readStrongBinder()), parcel.readInt());
            parcel1.writeNoException();
            return true;

        case 30: // '\036'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzi(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 2: // '\002'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzag zzag8 = zzcP(parcel.readStrongBinder());
            zze zze3 = obj8;
            if (parcel.readInt() != 0)
            {
                zze3 = (zze)zze.CREATOR.createFromParcel(parcel);
            }
            zzb(zzag8, zze3);
            parcel1.writeNoException();
            return true;

        case 3: // '\003'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzj(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 4: // '\004'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzk(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;

        case 5: // '\005'
            parcel.enforceInterface("com.google.android.gms.wearable.internal.IWearableService");
            zzl(zzcP(parcel.readStrongBinder()));
            parcel1.writeNoException();
            return true;
        }
    }
}
