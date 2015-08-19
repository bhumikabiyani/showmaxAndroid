// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.FitnessActivities;
import com.google.android.gms.internal.zzmd;
import com.google.android.gms.internal.zzms;
import com.google.android.gms.internal.zzmw;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzd, DataSet, DataType, Session, 
//            RawBucket

public class Bucket
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    public static final int TYPE_ACTIVITY_SEGMENT = 4;
    public static final int TYPE_ACTIVITY_TYPE = 3;
    public static final int TYPE_SESSION = 2;
    public static final int TYPE_TIME = 1;
    public static final Comparator zzYB = new Comparator() {

        public int compare(Object obj, Object obj1)
        {
            return zza((Bucket)obj, (Bucket)obj1);
        }

        public int zza(Bucket bucket, Bucket bucket1)
        {
            return zzmd.compare(bucket.getStartTime(TimeUnit.MILLISECONDS), bucket1.getStartTime(TimeUnit.MILLISECONDS));
        }

    };
    private final int zzFG;
    private final long zzON;
    private final int zzYC;
    private final List zzYD;
    private final int zzYE;
    private boolean zzYF;
    private final long zzYq;
    private final Session zzYs;

    Bucket(int i, long l, long l1, Session session, int j, 
            List list, int k, boolean flag)
    {
        zzYF = false;
        zzFG = i;
        zzON = l;
        zzYq = l1;
        zzYs = session;
        zzYC = j;
        zzYD = list;
        zzYE = k;
        zzYF = flag;
    }

    public Bucket(RawBucket rawbucket, List list)
    {
        this(zzms.zzb(rawbucket), list);
    }

    public Bucket(com.google.android.gms.internal.zzxd.zza zza1, List list)
    {
        long l = zza1.zzaIq;
        long l1 = zza1.zzaIr;
        Session session;
        if (zza1.zzaIt == null)
        {
            session = null;
        } else
        {
            session = zzmw.zzZW.zza(zza1.zzaIt);
        }
        this(2, l, l1, session, zza1.zzaIu, zza(zza1.zzaIv, list), zza1.zzaIw, zza1.zzaIx);
    }

    private static List zza(com.google.android.gms.internal.zzxd.zzc azzc[], List list)
    {
        ArrayList arraylist = new ArrayList(azzc.length);
        int j = azzc.length;
        for (int i = 0; i < j; i++)
        {
            arraylist.add(new DataSet(azzc[i], list));
        }

        return arraylist;
    }

    private boolean zza(Bucket bucket)
    {
        return zzON == bucket.zzON && zzYq == bucket.zzYq && zzYC == bucket.zzYC && zzw.equal(zzYD, bucket.zzYD) && zzYE == bucket.zzYE && zzYF == bucket.zzYF;
    }

    public static String zzdg(int i)
    {
        switch (i)
        {
        default:
            return "bug";

        case 1: // '\001'
            return "time";

        case 3: // '\003'
            return "type";

        case 4: // '\004'
            return "segment";

        case 2: // '\002'
            return "session";

        case 0: // '\0'
            return "unknown";
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof Bucket) && zza((Bucket)obj);
    }

    public String getActivity()
    {
        return FitnessActivities.getName(zzYC);
    }

    public int getBucketType()
    {
        return zzYE;
    }

    public DataSet getDataSet(DataType datatype)
    {
        for (Iterator iterator = zzYD.iterator(); iterator.hasNext();)
        {
            DataSet dataset = (DataSet)iterator.next();
            if (dataset.getDataType().equals(datatype))
            {
                return dataset;
            }
        }

        return null;
    }

    public List getDataSets()
    {
        return zzYD;
    }

    public long getEndTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzYq, TimeUnit.MILLISECONDS);
    }

    public Session getSession()
    {
        return zzYs;
    }

    public long getStartTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzON, TimeUnit.MILLISECONDS);
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Long.valueOf(zzON), Long.valueOf(zzYq), Integer.valueOf(zzYC), Integer.valueOf(zzYE)
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("startTime", Long.valueOf(zzON)).zza("endTime", Long.valueOf(zzYq)).zza("activity", Integer.valueOf(zzYC)).zza("dataSets", zzYD).zza("bucketType", zzdg(zzYE)).zza("serverHasMoreData", Boolean.valueOf(zzYF)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
    }

    public boolean zzb(Bucket bucket)
    {
        return zzON == bucket.zzON && zzYq == bucket.zzYq && zzYC == bucket.zzYC && zzYE == bucket.zzYE;
    }

    public int zzln()
    {
        return zzYC;
    }

    public boolean zzlo()
    {
        if (zzYF)
        {
            return true;
        }
        for (Iterator iterator = zzYD.iterator(); iterator.hasNext();)
        {
            if (((DataSet)iterator.next()).zzlo())
            {
                return true;
            }
        }

        return false;
    }

    public long zzlp()
    {
        return zzON;
    }

    public long zzlq()
    {
        return zzYq;
    }

}
