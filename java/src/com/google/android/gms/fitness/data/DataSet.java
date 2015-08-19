// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmv;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzf, DataSource, RawDataPoint, DataPoint, 
//            DataType, RawDataSet

public final class DataSet
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzf();
    private final int zzFG;
    private boolean zzYF;
    private final List zzYM;
    private final List zzYN;
    private final DataType zzYo;
    private final DataSource zzYp;

    DataSet(int i, DataSource datasource, DataType datatype, List list, List list1, boolean flag)
    {
        zzYF = false;
        zzFG = i;
        zzYp = datasource;
        zzYo = datasource.getDataType();
        zzYF = flag;
        zzYM = new ArrayList(list.size());
        if (i < 2)
        {
            list1 = Collections.singletonList(datasource);
        }
        zzYN = list1;
        for (datasource = list.iterator(); datasource.hasNext(); zzYM.add(new DataPoint(zzYN, datatype)))
        {
            datatype = (RawDataPoint)datasource.next();
        }

    }

    public DataSet(DataSource datasource)
    {
        zzYF = false;
        zzFG = 3;
        zzYp = (DataSource)zzx.zzl(datasource);
        zzYo = datasource.getDataType();
        zzYM = new ArrayList();
        zzYN = new ArrayList();
        zzYN.add(zzYp);
    }

    public DataSet(RawDataSet rawdataset, List list)
    {
        this(zzmv.zzb(rawdataset), list);
    }

    public DataSet(com.google.android.gms.internal.zzxd.zzc zzc, List list)
    {
        zzYF = false;
        zzFG = 3;
        zzYp = (DataSource)zzd(list, zzc.zzaID);
        zzYo = zzYp.getDataType();
        zzYN = list;
        zzYF = zzc.zzaIx;
        zzc = zzmu.zza(((DataSource)zzd(list, zzc.zzaID)).zzly().zzaIf, zzc.zzaIK);
        zzYM = new ArrayList(zzc.size());
        for (zzc = zzc.iterator(); zzc.hasNext(); zzYM.add(new DataPoint(zzYN, list)))
        {
            list = (RawDataPoint)zzc.next();
        }

    }

    public static DataSet create(DataSource datasource)
    {
        zzx.zzb(datasource, "DataSource should be specified");
        return new DataSet(datasource);
    }

    private boolean zza(DataSet dataset)
    {
        return zzw.equal(getDataType(), dataset.getDataType()) && zzw.equal(zzYp, dataset.zzYp) && zzw.equal(zzYM, dataset.zzYM) && zzYF == dataset.zzYF;
    }

    private static Object zzd(List list, int i)
    {
        if (i >= 0 && i < list.size())
        {
            return list.get(i);
        } else
        {
            return null;
        }
    }

    public void add(DataPoint datapoint)
    {
        DataSource datasource = datapoint.getDataSource();
        zzx.zzb(datasource.getStreamIdentifier().equals(zzYp.getStreamIdentifier()), "Conflicting data sources found %s vs %s", new Object[] {
            datasource, zzYp
        });
        zzx.zzb(datapoint.getDataType().getName().equals(getDataType().getName()), "Conflicting data types found %s vs %s", new Object[] {
            datapoint.getDataType(), getDataType()
        });
        boolean flag;
        if (datapoint.getTimestamp(TimeUnit.NANOSECONDS) > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Data point does not have the timestamp set: %s", new Object[] {
            datapoint
        });
        if (datapoint.getStartTime(TimeUnit.NANOSECONDS) <= datapoint.getEndTime(TimeUnit.NANOSECONDS))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Data point with start time greater than end time found: %s", new Object[] {
            datapoint
        });
        zzb(datapoint);
    }

    public void addAll(Iterable iterable)
    {
        for (iterable = iterable.iterator(); iterable.hasNext(); add((DataPoint)iterable.next())) { }
    }

    public DataPoint createDataPoint()
    {
        return DataPoint.create(zzYp);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof DataSet) && zza((DataSet)obj);
    }

    public List getDataPoints()
    {
        return Collections.unmodifiableList(zzYM);
    }

    public DataSource getDataSource()
    {
        return zzYp;
    }

    public DataType getDataType()
    {
        return zzYp.getDataType();
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp
        });
    }

    public String toString()
    {
        Object obj = zzlw();
        String s = zzYp.toDebugString();
        if (zzYM.size() >= 10)
        {
            obj = String.format("%d data points, first 5: %s", new Object[] {
                Integer.valueOf(zzYM.size()), ((List) (obj)).subList(0, 5)
            });
        }
        return String.format("DataSet{%s %s}", new Object[] {
            s, obj
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzf.zza(this, parcel, i);
    }

    public void zzb(DataPoint datapoint)
    {
        zzYM.add(datapoint);
        datapoint = datapoint.getOriginalDataSource();
        if (datapoint != null && !zzYN.contains(datapoint))
        {
            zzYN.add(datapoint);
        }
    }

    public void zzb(Iterable iterable)
    {
        for (iterable = iterable.iterator(); iterable.hasNext(); zzb((DataPoint)iterable.next())) { }
    }

    List zzk(List list)
    {
        ArrayList arraylist = new ArrayList(zzYM.size());
        for (Iterator iterator = zzYM.iterator(); iterator.hasNext(); arraylist.add(new RawDataPoint((DataPoint)iterator.next(), list))) { }
        return arraylist;
    }

    public boolean zzlo()
    {
        return zzYF;
    }

    List zzlw()
    {
        return zzk(zzYN);
    }

    List zzlx()
    {
        return zzYN;
    }

}
