// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            ComparisonFilter, Operator

public class zza
    implements android.os.Parcelable.Creator
{

    public zza()
    {
    }

    static void zza(ComparisonFilter comparisonfilter, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1000, comparisonfilter.zzFG);
        zzb.zza(parcel, 1, comparisonfilter.zzWw, i, false);
        zzb.zza(parcel, 2, comparisonfilter.zzWx, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzbj(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzcC(i);
    }

    public ComparisonFilter zzbj(Parcel parcel)
    {
        MetadataBundle metadatabundle = null;
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        Operator operator = null;
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

                case 1: // '\001'
                    operator = (Operator)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, Operator.CREATOR);
                    break;

                case 2: // '\002'
                    metadatabundle = (MetadataBundle)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, MetadataBundle.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new ComparisonFilter(i, operator, metadatabundle);
            }
        } while (true);
    }

    public ComparisonFilter[] zzcC(int i)
    {
        return new ComparisonFilter[i];
    }
}
