// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.fitness.data:
//            Subscription, DataSource, DataType

public static class zzZR
{

    private DataType zzYo;
    private DataSource zzYp;
    private long zzZQ;
    private int zzZR;

    static DataType zza(zzZR zzzr)
    {
        return zzzr.zzYo;
    }

    static DataSource zzb(zzYo zzyo)
    {
        return zzyo.zzYp;
    }

    static long zzc(zzYp zzyp)
    {
        return zzyp.zzZQ;
    }

    static int zzd(zzZQ zzzq)
    {
        return zzzq.zzZR;
    }

    public zzZR zzb(DataSource datasource)
    {
        zzYp = datasource;
        return this;
    }

    public zzYp zzb(DataType datatype)
    {
        zzYo = datatype;
        return this;
    }

    public Subscription zzlK()
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
        return new Subscription(this, null);
    }

    public ()
    {
        zzZQ = -1L;
        zzZR = 2;
    }
}
