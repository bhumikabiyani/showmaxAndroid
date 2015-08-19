// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.request:
//            StartBleScanRequest, zzt, BleScanCallback

public static class zzabI
{

    private zzt zzabH;
    private int zzabI;
    private DataType zzabg[];

    static DataType[] zza(zzabI zzabi)
    {
        return zzabi.zzabg;
    }

    static zzt zzb(zzabg zzabg1)
    {
        return zzabg1.zzabH;
    }

    static int zzc(zzabH zzabh)
    {
        return zzabh.zzabI;
    }

    public StartBleScanRequest build()
    {
        boolean flag;
        if (zzabH != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Must set BleScanCallback");
        return new StartBleScanRequest(this, null);
    }

    public zzabH setBleScanCallback(BleScanCallback blescancallback)
    {
        zza(zza().zza(blescancallback));
        return this;
    }

    public transient zza setDataTypes(DataType adatatype[])
    {
        zzabg = adatatype;
        return this;
    }

    public zzabg setTimeoutSecs(int i)
    {
        boolean flag1 = true;
        boolean flag;
        if (i > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Stop time must be greater than zero");
        if (i <= 60)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Stop time must be less than 1 minute");
        zzabI = i;
        return this;
    }

    public zzabI zza(zzt zzt)
    {
        zzabH = zzt;
        return this;
    }

    public ()
    {
        zzabg = new DataType[0];
        zzabI = 10;
    }
}
