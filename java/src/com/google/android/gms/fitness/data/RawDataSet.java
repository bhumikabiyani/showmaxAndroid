// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzo, DataSet, zzt

public final class RawDataSet
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzo();
    final int zzFG;
    public final boolean zzYF;
    public final int zzZJ;
    public final int zzZL;
    public final List zzZM;

    public RawDataSet(int i, int j, int k, List list, boolean flag)
    {
        zzFG = i;
        zzZJ = j;
        zzZL = k;
        zzZM = list;
        zzYF = flag;
    }

    public RawDataSet(DataSet dataset, List list, List list1)
    {
        zzFG = 3;
        zzZM = dataset.zzk(list);
        zzYF = dataset.zzlo();
        zzZJ = zzt.zza(dataset.getDataSource(), list);
        zzZL = zzt.zza(dataset.getDataType(), list1);
    }

    private boolean zza(RawDataSet rawdataset)
    {
        return zzZJ == rawdataset.zzZJ && zzYF == rawdataset.zzYF && zzw.equal(zzZM, rawdataset.zzZM);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof RawDataSet) && zza((RawDataSet)obj);
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(zzZJ)
        });
    }

    public String toString()
    {
        return String.format("RawDataSet{%s@[%s]}", new Object[] {
            Integer.valueOf(zzZJ), zzZM
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzo.zza(this, parcel, i);
    }

}
