// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.location.LocationRequest;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzac

public class zzad
    implements android.os.Parcelable.Creator
{

    public zzad()
    {
    }

    static void zza(zzac zzac1, Parcel parcel, int i)
    {
        int j = zzb.zzK(parcel);
        zzb.zza(parcel, 1, zzac1.getDataSource(), i, false);
        zzb.zzc(parcel, 1000, zzac1.getVersionCode());
        zzb.zza(parcel, 2, zzac1.getDataType(), i, false);
        zzb.zza(parcel, 3, zzac1.zzmg(), false);
        zzb.zzc(parcel, 4, zzac1.zzabq);
        zzb.zzc(parcel, 5, zzac1.zzabr);
        zzb.zza(parcel, 6, zzac1.zzlI());
        zzb.zza(parcel, 7, zzac1.zzmd());
        zzb.zza(parcel, 8, zzac1.zzmb(), i, false);
        zzb.zza(parcel, 9, zzac1.zzmc());
        zzb.zzc(parcel, 10, zzac1.getAccuracyMode());
        zzb.zzc(parcel, 11, zzac1.zzme(), false);
        zzb.zza(parcel, 12, zzac1.zzmf());
        zzb.zza(parcel, 13, zzac1.zzlQ(), false);
        zzb.zza(parcel, 14, zzac1.getPackageName(), false);
        zzb.zzH(parcel, j);
    }

    public Object createFromParcel(Parcel parcel)
    {
        return zzcq(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzdO(i);
    }

    public zzac zzcq(Parcel parcel)
    {
        int i1 = com.google.android.gms.common.internal.safeparcel.zza.zzJ(parcel);
        int l = 0;
        DataSource datasource = null;
        DataType datatype = null;
        android.os.IBinder ibinder1 = null;
        int k = 0;
        int j = 0;
        long l4 = 0L;
        long l3 = 0L;
        PendingIntent pendingintent = null;
        long l2 = 0L;
        int i = 0;
        java.util.ArrayList arraylist = null;
        long l1 = 0L;
        android.os.IBinder ibinder = null;
        String s = null;
        do
        {
            if (parcel.dataPosition() < i1)
            {
                int j1 = com.google.android.gms.common.internal.safeparcel.zza.zzI(parcel);
                switch (com.google.android.gms.common.internal.safeparcel.zza.zzaP(j1))
                {
                default:
                    com.google.android.gms.common.internal.safeparcel.zza.zzb(parcel, j1);
                    break;

                case 1: // '\001'
                    datasource = (DataSource)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, j1, DataSource.CREATOR);
                    break;

                case 1000: 
                    l = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, j1);
                    break;

                case 2: // '\002'
                    datatype = (DataType)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, j1, DataType.CREATOR);
                    break;

                case 3: // '\003'
                    ibinder1 = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, j1);
                    break;

                case 4: // '\004'
                    k = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, j1);
                    break;

                case 5: // '\005'
                    j = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, j1);
                    break;

                case 6: // '\006'
                    l4 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, j1);
                    break;

                case 7: // '\007'
                    l3 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, j1);
                    break;

                case 8: // '\b'
                    pendingintent = (PendingIntent)com.google.android.gms.common.internal.safeparcel.zza.zza(parcel, j1, PendingIntent.CREATOR);
                    break;

                case 9: // '\t'
                    l2 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, j1);
                    break;

                case 10: // '\n'
                    i = com.google.android.gms.common.internal.safeparcel.zza.zzg(parcel, j1);
                    break;

                case 11: // '\013'
                    arraylist = com.google.android.gms.common.internal.safeparcel.zza.zzc(parcel, j1, LocationRequest.CREATOR);
                    break;

                case 12: // '\f'
                    l1 = com.google.android.gms.common.internal.safeparcel.zza.zzi(parcel, j1);
                    break;

                case 13: // '\r'
                    ibinder = com.google.android.gms.common.internal.safeparcel.zza.zzp(parcel, j1);
                    break;

                case 14: // '\016'
                    s = com.google.android.gms.common.internal.safeparcel.zza.zzo(parcel, j1);
                    break;
                }
            } else
            if (parcel.dataPosition() != i1)
            {
                throw new com.google.android.gms.common.internal.safeparcel.zza.zza((new StringBuilder()).append("Overread allowed size end=").append(i1).toString(), parcel);
            } else
            {
                return new zzac(l, datasource, datatype, ibinder1, k, j, l4, l3, pendingintent, l2, i, arraylist, l1, ibinder, s);
            }
        } while (true);
    }

    public zzac[] zzdO(int i)
    {
        return new zzac[i];
    }
}
