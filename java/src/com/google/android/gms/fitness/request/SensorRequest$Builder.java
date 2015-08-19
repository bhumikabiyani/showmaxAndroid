// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.request:
//            SensorRequest

public static class zzaby
{

    private DataType zzYo;
    private DataSource zzYp;
    private long zzZQ;
    private int zzZR;
    private long zzabs;
    private long zzabt;
    private long zzaby;
    private boolean zzabz;

    static DataSource zza(zzaby zzaby1)
    {
        return zzaby1.zzYp;
    }

    static DataType zzb(zzYp zzyp)
    {
        return zzyp.zzYo;
    }

    static long zzc(zzYo zzyo)
    {
        return zzyo.zzZQ;
    }

    static long zzd(zzZQ zzzq)
    {
        return zzzq.zzabt;
    }

    static long zze(zzabt zzabt1)
    {
        return zzabt1.zzabs;
    }

    static int zzf(zzabs zzabs1)
    {
        return zzabs1.zzZR;
    }

    static long zzg(zzZR zzzr)
    {
        return zzzr.zzaby;
    }

    public SensorRequest build()
    {
label0:
        {
            boolean flag1 = false;
            boolean flag;
            if (zzYp != null || zzYo != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            zzx.zza(flag, "Must call setDataSource() or setDataType()");
            if (zzYo != null && zzYp != null)
            {
                flag = flag1;
                if (!zzYo.equals(zzYp.getDataType()))
                {
                    break label0;
                }
            }
            flag = true;
        }
        zzx.zza(flag, "Specified data type is incompatible with specified data source");
        return new SensorRequest(this, null);
    }

    public zzYp setAccuracyMode(int i)
    {
        zzZR = SensorRequest.zzdP(i);
        return this;
    }

    public zzZR setDataSource(DataSource datasource)
    {
        zzYp = datasource;
        return this;
    }

    public zzYp setDataType(DataType datatype)
    {
        zzYo = datatype;
        return this;
    }

    public zzYo setFastestRate(int i, TimeUnit timeunit)
    {
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Cannot use a negative interval");
        zzabz = true;
        zzabt = timeunit.toMicros(i);
        return this;
    }

    public zzabt setMaxDeliveryLatency(int i, TimeUnit timeunit)
    {
        boolean flag;
        if (i >= 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Cannot use a negative delivery interval");
        zzabs = timeunit.toMicros(i);
        return this;
    }

    public zzabs setSamplingRate(long l, TimeUnit timeunit)
    {
        boolean flag;
        if (l >= 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Cannot use a negative sampling interval");
        zzZQ = timeunit.toMicros(l);
        if (!zzabz)
        {
            zzabt = zzZQ / 2L;
        }
        return this;
    }

    public zzZQ setTimeout(long l, TimeUnit timeunit)
    {
        boolean flag1 = true;
        boolean flag;
        if (l > 0L)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid time out value specified: %d", new Object[] {
            Long.valueOf(l)
        });
        if (timeunit != null)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid time unit specified");
        zzaby = timeunit.toMicros(l);
        return this;
    }

    public ()
    {
        zzZQ = -1L;
        zzabt = 0L;
        zzabs = 0L;
        zzabz = false;
        zzZR = 2;
        zzaby = 0x7fffffffffffffffL;
    }
}
