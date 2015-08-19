// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataReadRequest

public class zzg
    implements android.os.Parcelable.Creator
{

    public zzg()
    {
    }

    static void zza(DataReadRequest datareadrequest, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zzc(parcel, 1, datareadrequest.getDataTypes(), false);
        zzb.zzc(parcel, 1000, datareadrequest.getVersionCode());
        zzb.zzc(parcel, 2, datareadrequest.getDataSources(), false);
        zzb.zza(parcel, 3, datareadrequest.zzlp());
        zzb.zza(parcel, 4, datareadrequest.zzlq());
        zzb.zzc(parcel, 5, datareadrequest.getAggregatedDataTypes(), false);
        zzb.zzc(parcel, 6, datareadrequest.getAggregatedDataSources(), false);
        zzb.zzc(parcel, 7, datareadrequest.getBucketType());
        zzb.zza(parcel, 8, datareadrequest.zzlX());
        zzb.zza(parcel, 9, datareadrequest.getActivityDataSource(), i, false);
        zzb.zzc(parcel, 10, datareadrequest.getLimit());
        zzb.zza(parcel, 12, datareadrequest.zzlW());
        zzb.zza(parcel, 13, datareadrequest.zzlV());
        zzb.zza(parcel, 14, datareadrequest.zzlQ(), false);
        zzb.zza(parcel, 15, datareadrequest.getPackageName(), false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzce(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzdC(i);
    }

    public DataReadRequest zzce(Parcel parcel)
    {
        int l = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int k = 0;
        java.util.ArrayList arraylist3 = null;
        java.util.ArrayList arraylist2 = null;
        long l3 = 0L;
        long l2 = 0L;
        java.util.ArrayList arraylist1 = null;
        java.util.ArrayList arraylist = null;
        int j = 0;
        long l1 = 0L;
        DataSource datasource = null;
        int i = 0;
        boolean flag1 = false;
        boolean flag = false;
        android.os.IBinder ibinder = null;
        String s = null;
        do
        {
            if (parcel.dataPosition() < l)
            {
                int i1 = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(i1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, i1);
                    break;

                case 1: // '\001'
                    arraylist3 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1, DataType.CREATOR);
                    break;

                case 1000: 
                    k = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 2: // '\002'
                    arraylist2 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1, DataSource.CREATOR);
                    break;

                case 3: // '\003'
                    l3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i1);
                    break;

                case 4: // '\004'
                    l2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i1);
                    break;

                case 5: // '\005'
                    arraylist1 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1, DataType.CREATOR);
                    break;

                case 6: // '\006'
                    arraylist = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1, DataSource.CREATOR);
                    break;

                case 7: // '\007'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 8: // '\b'
                    l1 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, i1);
                    break;

                case 9: // '\t'
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, i1, DataSource.CREATOR);
                    break;

                case 10: // '\n'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, i1);
                    break;

                case 12: // '\f'
                    flag1 = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1);
                    break;

                case 13: // '\r'
                    flag = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, i1);
                    break;

                case 14: // '\016'
                    ibinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, i1);
                    break;

                case 15: // '\017'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, i1);
                    break;
                }
            } else
            if (parcel.dataPosition() != l)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(l).toString(), parcel);
            } else
            {
                return new DataReadRequest(k, arraylist3, arraylist2, l3, l2, arraylist1, arraylist, j, l1, datasource, i, flag1, flag, ibinder, s);
            }
        } while (true);
    }

    public DataReadRequest[] zzdC(int i)
    {
        return new DataReadRequest[i];
    }
}
