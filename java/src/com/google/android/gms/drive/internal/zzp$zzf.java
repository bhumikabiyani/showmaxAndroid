// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.MetadataBuffer;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzp

static class zzTB
    implements com.google.android.gms.drive..MetadataBufferResult
{

    private final Status zzHb;
    private final MetadataBuffer zzTA;
    private final boolean zzTB;

    public MetadataBuffer getMetadataBuffer()
    {
        return zzTA;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public BufferResult(Status status, MetadataBuffer metadatabuffer, boolean flag)
    {
        zzHb = status;
        zzTA = metadatabuffer;
        zzTB = flag;
    }
}
