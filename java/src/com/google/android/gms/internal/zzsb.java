// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.internal:
//            zzsa, zzrw, zzrr

public class zzsb
    implements android.os.Parcelable.Creator
{

    public zzsb()
    {
    }

    static void zza(zzsa zzsa1, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, zzsa1.versionCode);
        zzb.zza(parcel, 2, zzsa1.zzatk, i, false);
        zzb.zza(parcel, 3, zzsa1.zzatl, i, false);
        zzb.zza(parcel, 4, zzsa1.zzrq(), false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzeo(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzgA(i);
    }

    public zzsa zzeo(Parcel parcel)
    {
        android.os.IBinder ibinder;
        Object obj;
        Object obj1;
        int i;
        int j;
        ibinder = null;
        j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        i = 0;
        obj1 = null;
        obj = null;
_L7:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_185;
        }
        k = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
        com.google.android.gms.common.internal.safeparcel.zza.zzaP(k);
        JVM INSTR tableswitch 1 4: default 68
    //                   1 97
    //                   2 118
    //                   3 142
    //                   4 165;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_165;
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k);
        Object obj2 = obj1;
        obj1 = obj;
        obj = obj2;
_L8:
        Object obj3 = obj1;
        obj1 = obj;
        obj = obj3;
        if (true) goto _L7; else goto _L6
_L6:
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L8
_L3:
        zzrw zzrw1 = (zzrw)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, zzrw.CREATOR);
        obj = obj1;
        obj1 = zzrw1;
          goto _L8
_L4:
        zzrr zzrr1 = (zzrr)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, zzrr.CREATOR);
        obj1 = obj;
        obj = zzrr1;
          goto _L8
        ibinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, k);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L8
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new zzsa(i, ((zzrw) (obj)), ((zzrr) (obj1)), ibinder);
        }
    }

    public zzsa[] zzgA(int i)
    {
        return new zzsa[i];
    }
}
