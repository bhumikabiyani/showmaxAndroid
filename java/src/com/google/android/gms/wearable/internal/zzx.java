// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wearable.zze;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzw

public class zzx
    implements android.os.Parcelable.Creator
{

    public zzx()
    {
    }

    static void zza(zzw zzw1, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, zzw1.versionCode);
        zzb.zzc(parcel, 2, zzw1.statusCode);
        zzb.zza(parcel, 3, zzw1.zzaGj, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzfA(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzia(i);
    }

    public zzw zzfA(Parcel parcel)
    {
        int j = 0;
        int k = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        zze azze[] = null;
        int i = 0;
        do
        {
            if (parcel.dataPosition() < k)
            {
                int l = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(l))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, l);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 2: // '\002'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, l);
                    break;

                case 3: // '\003'
                    azze = (zze[])com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, l, zze.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != k)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(k).toString(), parcel);
            } else
            {
                return new zzw(i, j, azze);
            }
        } while (true);
    }

    public zzw[] zzia(int i)
    {
        return new zzw[i];
    }
}
