// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zze

public class DataSourcesResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zze();
    private final int zzFG;
    private final Status zzHb;
    private final List zzaaO;

    DataSourcesResult(int i, List list, Status status)
    {
        zzFG = i;
        zzaaO = Collections.unmodifiableList(list);
        zzHb = status;
    }

    public DataSourcesResult(List list, Status status)
    {
        zzFG = 3;
        zzaaO = Collections.unmodifiableList(list);
        zzHb = status;
    }

    public static DataSourcesResult zzC(Status status)
    {
        return new DataSourcesResult(Collections.emptyList(), status);
    }

    private boolean zzb(DataSourcesResult datasourcesresult)
    {
        return zzHb.equals(datasourcesresult.zzHb) && zzw.equal(zzaaO, datasourcesresult.zzaaO);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataSourcesResult) && zzb((DataSourcesResult)obj);
    }

    public List getDataSources()
    {
        return zzaaO;
    }

    public List getDataSources(DataType datatype)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = zzaaO.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            DataSource datasource = (DataSource)iterator.next();
            if (datasource.getDataType().equals(datatype))
            {
                arraylist.add(datasource);
            }
        } while (true);
        return Collections.unmodifiableList(arraylist);
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
            zzHb, zzaaO
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("dataSets", zzaaO).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zze.zza(this, parcel, i);
    }

}
