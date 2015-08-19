// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzn, DataPoint, zzt, Value

public final class RawDataPoint
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzn();
    final int zzFG;
    public final long zzYG;
    public final long zzYH;
    public final Value zzYI[];
    public final long zzYK;
    public final long zzYL;
    public final int zzZJ;
    public final int zzZK;

    public RawDataPoint(int i, long l, long l1, Value avalue[], int j, 
            int k, long l2, long l3)
    {
        zzFG = i;
        zzYG = l;
        zzYH = l1;
        zzZJ = j;
        zzZK = k;
        zzYK = l2;
        zzYL = l3;
        zzYI = avalue;
    }

    RawDataPoint(DataPoint datapoint, List list)
    {
        zzFG = 4;
        zzYG = datapoint.getTimestamp(TimeUnit.NANOSECONDS);
        zzYH = datapoint.getStartTime(TimeUnit.NANOSECONDS);
        zzYI = datapoint.zzls();
        zzZJ = zzt.zza(datapoint.getDataSource(), list);
        zzZK = zzt.zza(datapoint.getOriginalDataSource(), list);
        zzYK = datapoint.zzlt();
        zzYL = datapoint.zzlu();
    }

    private boolean zza(RawDataPoint rawdatapoint)
    {
        return zzYG == rawdatapoint.zzYG && zzYH == rawdatapoint.zzYH && Arrays.equals(zzYI, rawdatapoint.zzYI) && zzZJ == rawdatapoint.zzZJ && zzZK == rawdatapoint.zzZK && zzYK == rawdatapoint.zzYK;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof RawDataPoint) && zza((RawDataPoint)obj);
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(zzYG), Long.valueOf(zzYH)
        });
    }

    public String toString()
    {
        return String.format("RawDataPoint{%s@[%s, %s](%d,%d)}", new Object[] {
            Arrays.toString(zzYI), Long.valueOf(zzYH), Long.valueOf(zzYG), Integer.valueOf(zzZJ), Integer.valueOf(zzZK)
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzn.zza(this, parcel, i);
    }

}
