// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzan

public static class zzaGB
    implements com.google.android.gms.wearable.etLocalNodeResult
{

    private final Status zzHb;
    private final Node zzaGB;

    public Node getNode()
    {
        return zzaGB;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public deResult(Status status, Node node)
    {
        zzHb = status;
        zzaGB = node;
    }
}
