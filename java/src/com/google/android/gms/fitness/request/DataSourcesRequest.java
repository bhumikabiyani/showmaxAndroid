// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zzls;
import com.google.android.gms.internal.zznh;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzj

public class DataSourcesRequest
    implements SafeParcelable
{
    public static class Builder
    {

        private boolean zzabe;
        private DataType zzabg[];
        private int zzabh[] = {
            0, 1
        };

        static DataType[] zza(Builder builder)
        {
            return builder.zzabg;
        }

        static int[] zzb(Builder builder)
        {
            return builder.zzabh;
        }

        static boolean zzc(Builder builder)
        {
            return builder.zzabe;
        }

        public DataSourcesRequest build()
        {
            boolean flag1 = true;
            boolean flag;
            if (zzabg.length > 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must add at least one data type");
            if (zzabh.length > 0)
            {
                flag = flag1;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must add at least one data source type");
            return new DataSourcesRequest(this);
        }

        public transient Builder setDataSourceTypes(int ai[])
        {
            zzabh = ai;
            return this;
        }

        public transient Builder setDataTypes(DataType adatatype[])
        {
            zzabg = adatatype;
            return this;
        }

        public Builder()
        {
            zzabg = new DataType[0];
            zzabe = false;
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new zzj();
    private final int zzFG;
    private final String zzFO;
    private final List zzYA;
    private final List zzabd;
    private final boolean zzabe;
    private final zznh zzabf;

    DataSourcesRequest(int i, List list, List list1, boolean flag, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYA = list;
        zzabd = list1;
        zzabe = flag;
        if (ibinder == null)
        {
            list = null;
        } else
        {
            list = com.google.android.gms.internal.zznh.zza.zzaE(ibinder);
        }
        zzabf = list;
        zzFO = s;
    }

    private DataSourcesRequest(Builder builder)
    {
        this(((List) (zzls.zzb(Builder.zza(builder)))), Arrays.asList(zzls.zza(Builder.zzb(builder))), Builder.zzc(builder), null, null);
    }


    public DataSourcesRequest(DataSourcesRequest datasourcesrequest, zznh zznh1, String s)
    {
        this(datasourcesrequest.zzYA, datasourcesrequest.zzabd, datasourcesrequest.zzabe, zznh1, s);
    }

    public DataSourcesRequest(List list, List list1, boolean flag, zznh zznh1, String s)
    {
        zzFG = 3;
        zzYA = list;
        zzabd = list1;
        zzabe = flag;
        zzabf = zznh1;
        zzFO = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public List getDataTypes()
    {
        return Collections.unmodifiableList(zzYA);
    }

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public String toString()
    {
        com.google.android.gms.common.internal.zzw.zza zza = zzw.zzk(this).zza("dataTypes", zzYA).zza("sourceTypes", zzabd);
        if (zzabe)
        {
            zza.zza("includeDbOnlySources", "true");
        }
        return zza.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzj.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzabf == null)
        {
            return null;
        } else
        {
            return zzabf.asBinder();
        }
    }

    public List zzlY()
    {
        return zzabd;
    }

    public boolean zzlZ()
    {
        return zzabe;
    }

}
