// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzg;
import com.google.android.gms.wearable.internal.zzk;

// Referenced classes of package com.google.android.gms.wearable:
//            DataEvent

public class DataEventBuffer extends zzg
    implements Result
{

    private final Status zzHb;

    public DataEventBuffer(DataHolder dataholder)
    {
        super(dataholder);
        zzHb = new Status(dataholder.getStatusCode());
    }

    public Status getStatus()
    {
        return zzHb;
    }

    protected String zziB()
    {
        return "path";
    }

    protected Object zzj(int i, int j)
    {
        return zzv(i, j);
    }

    protected DataEvent zzv(int i, int j)
    {
        return new zzk(zzMd, i, j);
    }
}
