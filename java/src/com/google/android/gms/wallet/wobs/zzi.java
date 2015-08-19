// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzf, zzg, zzl

public class zzi
    implements android.os.Parcelable.Creator
{

    public zzi()
    {
    }

    static void zza(zzf zzf1, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, zzf1.getVersionCode());
        zzb.zza(parcel, 2, zzf1.label, false);
        zzb.zza(parcel, 3, zzf1.zzaFf, i, false);
        zzb.zza(parcel, 4, zzf1.type, false);
        zzb.zza(parcel, 5, zzf1.zzaDG, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzfm(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzhM(i);
    }

    public zzf zzfm(Parcel parcel)
    {
        zzl zzl1 = null;
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        String s = null;
        zzg zzg1 = null;
        String s1 = null;
        do
        {
            if (parcel.dataPosition() < j)
            {
                int k = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(k))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, k);
                    break;

                case 1: // '\001'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
                    break;

                case 2: // '\002'
                    s1 = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
                    break;

                case 3: // '\003'
                    zzg1 = (zzg)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, zzg.CREATOR);
                    break;

                case 4: // '\004'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, k);
                    break;

                case 5: // '\005'
                    zzl1 = (zzl)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, zzl.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new zzf(i, s1, zzg1, s, zzl1);
            }
        } while (true);
    }

    public zzf[] zzhM(int i)
    {
        return new zzf[i];
    }
}
