// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.DataItem;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzi

public static class zzaGc
    implements com.google.android.gms.wearable.DataItemResult
{

    private final Status zzHb;
    private final DataItem zzaGc;

    public DataItem getDataItem()
    {
        return zzaGc;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public esult(Status status, DataItem dataitem)
    {
        zzHb = status;
        zzaGc = dataitem;
    }
}
