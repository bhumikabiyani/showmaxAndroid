// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            FilterHolder, ComparisonFilter, FieldOnlyFilter, LogicalFilter, 
//            NotFilter, InFilter, MatchAllFilter, HasFilter, 
//            FullTextSearchFilter

public class zzd
    implements android.os.Parcelable.Creator
{

    public zzd()
    {
    }

    static void zza(FilterHolder filterholder, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zza(parcel, 1, filterholder.zzWA, i, false);
        zzb.zzc(parcel, 1000, filterholder.zzFG);
        zzb.zza(parcel, 2, filterholder.zzWB, i, false);
        zzb.zza(parcel, 3, filterholder.zzWC, i, false);
        zzb.zza(parcel, 4, filterholder.zzWD, i, false);
        zzb.zza(parcel, 5, filterholder.zzWE, i, false);
        zzb.zza(parcel, 6, filterholder.zzWF, i, false);
        zzb.zza(parcel, 7, filterholder.zzWG, i, false);
        zzb.zza(parcel, 8, filterholder.zzWH, i, false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzbm(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzcF(i);
    }

    public FilterHolder zzbm(Parcel parcel)
    {
        FullTextSearchFilter fulltextsearchfilter = null;
        int j = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int i = 0;
        HasFilter hasfilter = null;
        MatchAllFilter matchallfilter = null;
        InFilter infilter = null;
        NotFilter notfilter = null;
        LogicalFilter logicalfilter = null;
        FieldOnlyFilter fieldonlyfilter = null;
        ComparisonFilter comparisonfilter = null;
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
                    comparisonfilter = (ComparisonFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, ComparisonFilter.CREATOR);
                    break;

                case 1000: 
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, k);
                    break;

                case 2: // '\002'
                    fieldonlyfilter = (FieldOnlyFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, FieldOnlyFilter.CREATOR);
                    break;

                case 3: // '\003'
                    logicalfilter = (LogicalFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, LogicalFilter.CREATOR);
                    break;

                case 4: // '\004'
                    notfilter = (NotFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, NotFilter.CREATOR);
                    break;

                case 5: // '\005'
                    infilter = (InFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, InFilter.CREATOR);
                    break;

                case 6: // '\006'
                    matchallfilter = (MatchAllFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, MatchAllFilter.CREATOR);
                    break;

                case 7: // '\007'
                    hasfilter = (HasFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, HasFilter.CREATOR);
                    break;

                case 8: // '\b'
                    fulltextsearchfilter = (FullTextSearchFilter)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, k, FullTextSearchFilter.CREATOR);
                    break;
                }
            } else
            if (parcel.dataPosition() != j)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(j).toString(), parcel);
            } else
            {
                return new FilterHolder(i, comparisonfilter, fieldonlyfilter, logicalfilter, notfilter, infilter, matchallfilter, hasfilter, fulltextsearchfilter);
            }
        } while (true);
    }

    public FilterHolder[] zzcF(int i)
    {
        return new FilterHolder[i];
    }
}