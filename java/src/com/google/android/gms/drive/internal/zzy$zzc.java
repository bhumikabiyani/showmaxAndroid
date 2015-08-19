// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.Metadata;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzy

private static class zzUo
    implements com.google.android.gms.drive.ource.MetadataResult
{

    private final Status zzHb;
    private final Metadata zzUo;

    public Metadata getMetadata()
    {
        return zzUo;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public adataResult(Status status, Metadata metadata)
    {
        zzHb = status;
        zzUo = metadata;
    }
}
