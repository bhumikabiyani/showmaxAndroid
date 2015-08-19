// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzm, Bucket, DataSet, RawDataSet, 
//            Session

public final class RawBucket
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    final int zzFG;
    public final long zzON;
    public final List zzYD;
    public final int zzYE;
    public final boolean zzYF;
    public final long zzYq;
    public final Session zzYs;
    public final int zzZI;

    public RawBucket(int i, long l, long l1, Session session, int j, 
            List list, int k, boolean flag)
    {
        zzFG = i;
        zzON = l;
        zzYq = l1;
        zzYs = session;
        zzZI = j;
        zzYD = list;
        zzYE = k;
        zzYF = flag;
    }

    public RawBucket(Bucket bucket, List list, List list1)
    {
        zzFG = 2;
        zzON = bucket.getStartTime(TimeUnit.MILLISECONDS);
        zzYq = bucket.getEndTime(TimeUnit.MILLISECONDS);
        zzYs = bucket.getSession();
        zzZI = bucket.zzln();
        zzYE = bucket.getBucketType();
        zzYF = bucket.zzlo();
        bucket = bucket.getDataSets();
        zzYD = new ArrayList(bucket.size());
        DataSet dataset;
        for (bucket = bucket.iterator(); bucket.hasNext(); zzYD.add(new RawDataSet(dataset, list, list1)))
        {
            dataset = (DataSet)bucket.next();
        }

    }

    private boolean zza(RawBucket rawbucket)
    {
        return zzON == rawbucket.zzON && zzYq == rawbucket.zzYq && zzZI == rawbucket.zzZI && zzw.equal(zzYD, rawbucket.zzYD) && zzYE == rawbucket.zzYE && zzYF == rawbucket.zzYF;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof RawBucket) && zza((RawBucket)obj);
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(zzON), Long.valueOf(zzYq), Integer.valueOf(zzYE)
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("startTime", Long.valueOf(zzON)).zza("endTime", Long.valueOf(zzYq)).zza("activity", Integer.valueOf(zzZI)).zza("dataSets", zzYD).zza("bucketType", Integer.valueOf(zzYE)).zza("serverHasMoreData", Boolean.valueOf(zzYF)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

}
