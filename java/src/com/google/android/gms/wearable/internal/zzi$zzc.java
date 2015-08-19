// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzi

public static class zzaGd
    implements com.google.android.gms.wearable.DeleteDataItemsResult
{

    private final Status zzHb;
    private final int zzaGd;

    public int getNumDeleted()
    {
        return zzaGd;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public aItemsResult(Status status, int i)
    {
        zzHb = status;
        zzaGd = i;
    }
}
