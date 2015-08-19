// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzr, zzj

public final class zzk extends zzd
    implements DataEvent
{

    private final int zzadF;

    public zzk(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        zzadF = j;
    }

    public Object freeze()
    {
        return zzvh();
    }

    public DataItem getDataItem()
    {
        return new zzr(zzMd, zzNQ, zzadF);
    }

    public int getType()
    {
        return getInteger("event_type");
    }

    public DataEvent zzvh()
    {
        return new zzj(this);
    }
}
