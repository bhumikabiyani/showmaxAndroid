// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            MatchAllFilter

public class zzk
    implements android.os.Parcelable.Creator
{

    public zzk()
    {
    }

    static void zza(MatchAllFilter matchallfilter, Parcel parcel, int i)
    {
        i = zzb.zzK(parcel);
        zzb.zzc(parcel, 1000, matchallfilter.zzFG);
        zzb.zzH(parcel, i);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzbr(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzcK(i);
    }

    public MatchAllFilter zzbr(Parcel parcel)
    {
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
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

                case 1000: 
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new MatchAllFilter(i);
            }
        } while (true);
    }

    public MatchAllFilter[] zzcK(int i)
    {
        return new MatchAllFilter[i];
    }
}
