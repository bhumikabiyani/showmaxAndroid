// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzai

public class zzaj
    implements android.os.Parcelable.Creator
{

    public zzaj()
    {
    }

    static void zza(zzai zzai1, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zza(parcel, 1, zzai1.zzmb(), i, false);
        zzb.zzc(parcel, 1000, zzai1.getVersionCode());
        zzb.zza(parcel, 2, zzai1.zzlQ(), false);
        zzb.zza(parcel, 3, zzai1.getPackageName(), false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzcu(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzdT(i);
    }

    public zzai zzcu(Parcel parcel)
    {
        String s;
        Object obj;
        Object obj1;
        int i;
        int j;
        s = null;
        j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        i = 0;
        obj1 = null;
        obj = null;
_L7:
        int k;
        if (parcel.dataPosition() >= j)
        {
            break MISSING_BLOCK_LABEL_191;
        }
        k = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
        com.google.android.gms.common.internal.safeparcel.zza.zzaP(k);
        JVM INSTR lookupswitch 4: default 80
    //                   1: 109
    //                   2: 154
    //                   3: 171
    //                   1000: 133;
           goto _L1 _L2 _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_171;
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
        PendingIntent pendingintent = (PendingIntent)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, PendingIntent.CREATOR);
        obj = obj1;
        obj1 = pendingintent;
          goto _L8
_L5:
        i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
        Object obj4 = obj;
        obj = obj1;
        obj1 = obj4;
          goto _L8
_L3:
        android.os.IBinder ibinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, k);
        obj1 = obj;
        obj = ibinder;
          goto _L8
        s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
        Object obj5 = obj;
        obj = obj1;
        obj1 = obj5;
          goto _L8
        if (parcel.dataPosition() != j)
        {
            throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
        } else
        {
            return new zzai(i, ((PendingIntent) (obj)), ((android.os.IBinder) (obj1)), s);
        }
    }

    public zzai[] zzdT(int i)
    {
        return new zzai[i];
    }
}
