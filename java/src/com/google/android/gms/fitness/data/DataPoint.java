// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.content.Intent;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzmo;
import com.google.android.gms.internal.zzmu;
import com.google.android.gms.internal.zzmx;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zze, DataSource, DataType, Value, 
//            Field, RawDataPoint

public final class DataPoint
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zze();
    private final int zzFG;
    private long zzYG;
    private long zzYH;
    private final Value zzYI[];
    private DataSource zzYJ;
    private long zzYK;
    private long zzYL;
    private final DataSource zzYp;

    DataPoint(int i, DataSource datasource, long l, long l1, Value avalue[], 
            DataSource datasource1, long l2, long l3)
    {
        zzFG = i;
        zzYp = datasource;
        zzYJ = datasource1;
        zzYG = l;
        zzYH = l1;
        zzYI = avalue;
        zzYK = l2;
        zzYL = l3;
    }

    private DataPoint(DataSource datasource)
    {
        zzFG = 4;
        zzYp = (DataSource)zzx.zzb(datasource, "Data source cannot be null");
        datasource = datasource.getDataType().getFields();
        zzYI = new Value[datasource.size()];
        datasource = datasource.iterator();
        for (int i = 0; datasource.hasNext(); i++)
        {
            Field field = (Field)datasource.next();
            zzYI[i] = new Value(field.getFormat());
        }

    }

    public DataPoint(DataSource datasource, DataSource datasource1, com.google.android.gms.internal.zzxd.zzb zzb)
    {
        this(4, datasource, zza(Long.valueOf(zzb.zzaIA), 0L), zza(Long.valueOf(zzb.zzaIB), 0L), zzmx.zza(datasource.zzly().zzaIf, zzb.zzaIC), datasource1, zza(Long.valueOf(zzb.zzaIH), 0L), zza(Long.valueOf(zzb.zzaII), 0L));
    }

    DataPoint(List list, RawDataPoint rawdatapoint)
    {
        this(list, zzmu.zzb(rawdatapoint));
    }

    DataPoint(List list, com.google.android.gms.internal.zzxd.zzb zzb)
    {
        this(zzc(list, zzb.zzaID), zzc(list, zzb.zzaIF), zzb);
    }

    public static DataPoint create(DataSource datasource)
    {
        return new DataPoint(datasource);
    }

    public static DataPoint extract(Intent intent)
    {
        if (intent == null)
        {
            return null;
        } else
        {
            return (DataPoint)com.google.android.gms.common.internal.safeparcel.zzc.zza(intent, "com.google.android.gms.fitness.EXTRA_DATA_POINT", CREATOR);
        }
    }

    private static long zza(Long long1, long l)
    {
        if (long1 != null)
        {
            l = long1.longValue();
        }
        return l;
    }

    private boolean zza(DataPoint datapoint)
    {
        return zzw.equal(zzYp, datapoint.zzYp) && zzYG == datapoint.zzYG && zzYH == datapoint.zzYH && Arrays.equals(zzYI, datapoint.zzYI) && zzw.equal(zzYJ, datapoint.zzYJ);
    }

    private static DataSource zzc(List list, int i)
    {
        if (i >= 0 && i < list.size())
        {
            return (DataSource)list.get(i);
        } else
        {
            return null;
        }
    }

    private void zzdi(int i)
    {
        List list = getDataType().getFields();
        int j = list.size();
        boolean flag;
        if (i == j)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Attempting to insert %s values, but needed %s: %s", new Object[] {
            Integer.valueOf(i), Integer.valueOf(j), list
        });
    }

    private boolean zzlr()
    {
        return getDataType() == DataType.TYPE_LOCATION_SAMPLE;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataPoint) && zza((DataPoint)obj);
    }

    public DataSource getDataSource()
    {
        return zzYp;
    }

    public DataType getDataType()
    {
        return zzYp.getDataType();
    }

    public long getEndTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzYG, TimeUnit.NANOSECONDS);
    }

    public DataSource getOriginalDataSource()
    {
        return zzYJ;
    }

    public long getStartTime(TimeUnit timeunit)
    {
        return timeunit.convert(zzYH, TimeUnit.NANOSECONDS);
    }

    public long getTimestamp(TimeUnit timeunit)
    {
        return timeunit.convert(zzYG, TimeUnit.NANOSECONDS);
    }

    public long getTimestampNanos()
    {
        return zzYG;
    }

    public Value getValue(Field field)
    {
        int i = getDataType().indexOf(field);
        return zzYI[i];
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, Long.valueOf(zzYG), Long.valueOf(zzYH)
        });
    }

    public transient DataPoint setFloatValues(float af[])
    {
        zzdi(af.length);
        for (int i = 0; i < af.length; i++)
        {
            zzYI[i].setFloat(af[i]);
        }

        return this;
    }

    public transient DataPoint setIntValues(int ai[])
    {
        zzdi(ai.length);
        for (int i = 0; i < ai.length; i++)
        {
            zzYI[i].setInt(ai[i]);
        }

        return this;
    }

    public DataPoint setTimeInterval(long l, long l1, TimeUnit timeunit)
    {
        zzYH = timeunit.toNanos(l);
        zzYG = timeunit.toNanos(l1);
        return this;
    }

    public DataPoint setTimestamp(long l, TimeUnit timeunit)
    {
        zzYG = timeunit.toNanos(l);
        if (zzlr() && zzmo.zza(timeunit))
        {
            Log.w("Fitness", "Storing location at more than millisecond granularity is not supported. Extra precision is lost as the value is converted to milliseconds.");
            zzYG = zzmo.zza(zzYG, TimeUnit.NANOSECONDS, TimeUnit.MILLISECONDS);
        }
        return this;
    }

    public String toString()
    {
        String s1 = Arrays.toString(zzYI);
        long l = zzYH;
        long l1 = zzYG;
        long l2 = zzYK;
        long l3 = zzYL;
        String s2 = zzYp.toDebugString();
        String s;
        if (zzYJ != null)
        {
            s = zzYJ.toDebugString();
        } else
        {
            s = "N/A";
        }
        return String.format("DataPoint{%s@[%s, %s,raw=%s,insert=%s](%s %s)}", new Object[] {
            s1, Long.valueOf(l), Long.valueOf(l1), Long.valueOf(l2), Long.valueOf(l3), s2, s
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zze.zza(this, parcel, i);
    }

    public Value[] zzls()
    {
        return zzYI;
    }

    public long zzlt()
    {
        return zzYK;
    }

    public long zzlu()
    {
        return zzYL;
    }

    public long zzlv()
    {
        return zzYH;
    }

}
