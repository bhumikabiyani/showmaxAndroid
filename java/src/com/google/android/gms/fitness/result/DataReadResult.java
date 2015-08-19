// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.Bucket;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.RawBucket;
import com.google.android.gms.fitness.data.RawDataSet;
import com.google.android.gms.fitness.request.DataReadRequest;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzb

public class DataReadResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    private final int zzFG;
    private final Status zzHb;
    private final List zzYD;
    private final List zzYN;
    private final List zzabM;
    private int zzabN;
    private final List zzabO;

    DataReadResult(int i, List list, Status status, List list1, int j, List list2, List list3)
    {
        zzFG = i;
        zzHb = status;
        zzabN = j;
        zzYN = list2;
        zzabO = list3;
        zzYD = new ArrayList(list.size());
        for (list = list.iterator(); list.hasNext(); zzYD.add(new DataSet(status, list2)))
        {
            status = (RawDataSet)list.next();
        }

        zzabM = new ArrayList(list1.size());
        for (list = list1.iterator(); list.hasNext(); zzabM.add(new Bucket(status, list2)))
        {
            status = (RawBucket)list.next();
        }

    }

    public DataReadResult(List list, List list1, Status status)
    {
        zzFG = 5;
        zzYD = list;
        zzHb = status;
        zzabM = list1;
        zzabN = 1;
        zzYN = new ArrayList();
        zzabO = new ArrayList();
    }

    public static DataReadResult zza(Status status, DataReadRequest datareadrequest)
    {
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator = datareadrequest.getDataSources().iterator(); iterator.hasNext(); arraylist.add(DataSet.create((DataSource)iterator.next()))) { }
        DataType datatype;
        for (datareadrequest = datareadrequest.getDataTypes().iterator(); datareadrequest.hasNext(); arraylist.add(DataSet.create((new com.google.android.gms.fitness.data.DataSource.Builder()).setDataType(datatype).setType(1).setName("Default").build())))
        {
            datatype = (DataType)datareadrequest.next();
        }

        return new DataReadResult(arraylist, Collections.emptyList(), status);
    }

    private void zza(Bucket bucket, List list)
    {
label0:
        {
            for (Iterator iterator = list.iterator(); iterator.hasNext();)
            {
                list = (Bucket)iterator.next();
                if (list.zzb(bucket))
                {
                    for (bucket = bucket.getDataSets().iterator(); bucket.hasNext(); zza((DataSet)bucket.next(), list.getDataSets())) { }
                    break label0;
                }
            }

            zzabM.add(bucket);
        }
    }

    private void zza(DataSet dataset, List list)
    {
        for (Iterator iterator = list.iterator(); iterator.hasNext();)
        {
            DataSet dataset1 = (DataSet)iterator.next();
            if (dataset1.getDataSource().equals(dataset.getDataSource()))
            {
                dataset1.zzb(dataset.getDataPoints());
                return;
            }
        }

        list.add(dataset);
    }

    private boolean zzc(DataReadResult datareadresult)
    {
        return zzHb.equals(datareadresult.zzHb) && zzw.equal(zzYD, datareadresult.zzYD) && zzw.equal(zzabM, datareadresult.zzabM);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataReadResult) && zzc((DataReadResult)obj);
    }

    public List getBuckets()
    {
        return zzabM;
    }

    public DataSet getDataSet(DataSource datasource)
    {
        for (Iterator iterator = zzYD.iterator(); iterator.hasNext();)
        {
            DataSet dataset = (DataSet)iterator.next();
            if (datasource.equals(dataset.getDataSource()))
            {
                return dataset;
            }
        }

        throw new IllegalArgumentException(String.format("Attempting to read data for %s, which was not requested", new Object[] {
            datasource.getStreamIdentifier()
        }));
    }

    public DataSet getDataSet(DataType datatype)
    {
        for (Iterator iterator = zzYD.iterator(); iterator.hasNext();)
        {
            DataSet dataset = (DataSet)iterator.next();
            if (datatype.equals(dataset.getDataType()))
            {
                return dataset;
            }
        }

        throw new IllegalArgumentException(String.format("Attempting to read data for %s, which was not requested", new Object[] {
            datatype.getName()
        }));
    }

    public List getDataSets()
    {
        return zzYD;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzHb, zzYD, zzabM
        });
    }

    public String toString()
    {
        com.google.android.gms.common.internal.zzw.zza zza1 = zzw.zzk(this).zza("status", zzHb);
        Object obj;
        if (zzYD.size() > 5)
        {
            obj = (new StringBuilder()).append(zzYD.size()).append(" data sets").toString();
        } else
        {
            obj = zzYD;
        }
        zza1 = zza1.zza("dataSets", obj);
        if (zzabM.size() > 5)
        {
            obj = (new StringBuilder()).append(zzabM.size()).append(" buckets").toString();
        } else
        {
            obj = zzabM;
        }
        return zza1.zza("buckets", obj).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.result.zzb.zza(this, parcel, i);
    }

    public void zzb(DataReadResult datareadresult)
    {
        for (Iterator iterator = datareadresult.getDataSets().iterator(); iterator.hasNext(); zza((DataSet)iterator.next(), zzYD)) { }
        for (datareadresult = datareadresult.getBuckets().iterator(); datareadresult.hasNext(); zza((Bucket)datareadresult.next(), zzabM)) { }
    }

    List zzlx()
    {
        return zzYN;
    }

    public int zzmn()
    {
        return zzabN;
    }

    List zzmo()
    {
        ArrayList arraylist = new ArrayList(zzabM.size());
        for (Iterator iterator = zzabM.iterator(); iterator.hasNext(); arraylist.add(new RawBucket((Bucket)iterator.next(), zzYN, zzabO))) { }
        return arraylist;
    }

    List zzmp()
    {
        ArrayList arraylist = new ArrayList(zzYD.size());
        for (Iterator iterator = zzYD.iterator(); iterator.hasNext(); arraylist.add(new RawDataSet((DataSet)iterator.next(), zzYN, zzabO))) { }
        return arraylist;
    }

    List zzmq()
    {
        return zzabO;
    }

}
