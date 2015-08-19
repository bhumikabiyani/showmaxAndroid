// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzak

public static class zzRV
    implements com.google.android.gms.wearable.i.SendMessageResult
{

    private final Status zzHb;
    private final int zzRV;

    public int getRequestId()
    {
        return zzRV;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public sageResult(Status status, int i)
    {
        zzHb = status;
        zzRV = i;
    }
}
