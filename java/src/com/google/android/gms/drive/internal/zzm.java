// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

public final class zzm extends Metadata
{

    private final MetadataBundle zzTv;

    public zzm(MetadataBundle metadatabundle)
    {
        zzTv = metadatabundle;
    }

    public Object freeze()
    {
        return zzkw();
    }

    public boolean isDataValid()
    {
        return zzTv != null;
    }

    public String toString()
    {
        return (new StringBuilder()).append("Metadata [mImpl=").append(zzTv).append("]").toString();
    }

    public Object zza(MetadataField metadatafield)
    {
        return zzTv.zza(metadatafield);
    }

    public Metadata zzkw()
    {
        return new zzm(MetadataBundle.zza(zzTv));
    }
}
