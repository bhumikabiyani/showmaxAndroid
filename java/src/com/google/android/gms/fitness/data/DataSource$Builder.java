// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.content.Context;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.fitness.data:
//            DataSource, zza, Device, DataType

public static final class zzYQ
{

    private String mName;
    private int zzJp;
    private Device zzYO;
    private zza zzYP;
    private String zzYQ;
    private DataType zzYo;

    static DataType zza(zzYQ zzyq)
    {
        return zzyq.zzYo;
    }

    static int zzb(zzYo zzyo)
    {
        return zzyo.zzJp;
    }

    static String zzc(zzJp zzjp)
    {
        return zzjp.mName;
    }

    static Device zzd(mName mname)
    {
        return mname.zzYO;
    }

    static zza zze(zzYO zzyo)
    {
        return zzyo.zzYP;
    }

    static String zzf(zzYP zzyp)
    {
        return zzyp.zzYQ;
    }

    public DataSource build()
    {
        boolean flag1 = true;
        boolean flag;
        if (zzYo != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Must set data type");
        if (zzJp >= 0)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Must set data source type");
        return new DataSource(this, null);
    }

    public zzJp setAppPackageName(Context context)
    {
        return setAppPackageName(context.getPackageName());
    }

    public setAppPackageName setAppPackageName(String s)
    {
        zzYP = com.google.android.gms.fitness.data.zza.zzbI(s);
        return this;
    }

    public zzYP setDataType(DataType datatype)
    {
        zzYo = datatype;
        return this;
    }

    public zzYo setDevice(Device device)
    {
        zzYO = device;
        return this;
    }

    public zzYO setName(String s)
    {
        mName = s;
        return this;
    }

    public mName setObfuscated(boolean flag)
    {
        return this;
    }

    public mName setStreamName(String s)
    {
        boolean flag;
        if (s != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Must specify a valid stream name");
        zzYQ = s;
        return this;
    }

    public zzYQ setType(int i)
    {
        zzJp = i;
        return this;
    }

    public zzJp zzb(zza zza1)
    {
        zzYP = zza1;
        return this;
    }

    public ()
    {
        zzJp = -1;
        zzYQ = "";
    }
}
