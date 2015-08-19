// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataEvent;
import com.google.android.gms.wearable.DataItem;

public class zzj
    implements DataEvent
{

    private int zzJp;
    private DataItem zzaGc;

    public zzj(DataEvent dataevent)
    {
        zzJp = dataevent.getType();
        zzaGc = (DataItem)dataevent.getDataItem().freeze();
    }

    public Object freeze()
    {
        return zzvh();
    }

    public DataItem getDataItem()
    {
        return zzaGc;
    }

    public int getType()
    {
        return zzJp;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public DataEvent zzvh()
    {
        return this;
    }
}
