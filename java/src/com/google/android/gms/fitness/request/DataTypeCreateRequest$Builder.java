// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.data.Field;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.request:
//            DataTypeCreateRequest

public static class zzZd
{

    private String mName;
    private List zzZd;

    static String zza(zzZd zzzd)
    {
        return zzzd.mName;
    }

    static List zzb(mName mname)
    {
        return mname.zzZd;
    }

    public zzZd addField(Field field)
    {
        if (!zzZd.contains(field))
        {
            zzZd.add(field);
        }
        return this;
    }

    public zzZd addField(String s, int i)
    {
        boolean flag;
        if (s != null && !s.isEmpty())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "Invalid name specified");
        return addField(Field.zzn(s, i));
    }

    public DataTypeCreateRequest build()
    {
        boolean flag1 = true;
        boolean flag;
        if (mName != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Must set the name");
        if (!zzZd.isEmpty())
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zza(flag, "Must specify the data fields");
        return new DataTypeCreateRequest(this, null);
    }

    public zzZd setName(String s)
    {
        mName = s;
        return this;
    }

    public ()
    {
        zzZd = new ArrayList();
    }
}
