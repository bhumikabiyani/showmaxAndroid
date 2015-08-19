// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataSourcesRequest

public static class zzabe
{

    private boolean zzabe;
    private DataType zzabg[];
    private int zzabh[] = {
        0, 1
    };

    static DataType[] zza(zzabe zzabe1)
    {
        return zzabe1.zzabg;
    }

    static int[] zzb(zzabg zzabg1)
    {
        return zzabg1.zzabh;
    }

    static boolean zzc(zzabh zzabh1)
    {
        return zzabh1.zzabe;
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
        return new DataSourcesRequest(this, null);
    }

    public transient zzabh setDataSourceTypes(int ai[])
    {
        zzabh = ai;
        return this;
    }

    public transient zzabh setDataTypes(DataType adatatype[])
    {
        zzabg = adatatype;
        return this;
    }

    public ()
    {
        zzabg = new DataType[0];
        zzabe = false;
    }
}
