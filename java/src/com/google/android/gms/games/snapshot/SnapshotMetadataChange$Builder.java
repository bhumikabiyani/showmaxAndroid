// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.zza;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadataChange, SnapshotMetadataChangeEntity, SnapshotMetadata

public static final class 
{

    private String zzZO;
    private Long zzakE;
    private Long zzakF;
    private zza zzakG;
    private Uri zzakH;

    public SnapshotMetadataChange build()
    {
        return new SnapshotMetadataChangeEntity(zzZO, zzakE, zzakG, zzakH, zzakF);
    }

    public zzakF fromMetadata(SnapshotMetadata snapshotmetadata)
    {
        zzZO = snapshotmetadata.getDescription();
        zzakE = Long.valueOf(snapshotmetadata.getPlayedTime());
        zzakF = Long.valueOf(snapshotmetadata.getProgressValue());
        if (zzakE.longValue() == -1L)
        {
            zzakE = null;
        }
        zzakH = snapshotmetadata.getCoverImageUri();
        if (zzakH != null)
        {
            zzakG = null;
        }
        return this;
    }

    public zzakG setCoverImage(Bitmap bitmap)
    {
        zzakG = new zza(bitmap);
        zzakH = null;
        return this;
    }

    public zzakH setDescription(String s)
    {
        zzZO = s;
        return this;
    }

    public zzZO setPlayedTimeMillis(long l)
    {
        zzakE = Long.valueOf(l);
        return this;
    }

    public zzakE setProgressValue(long l)
    {
        zzakF = Long.valueOf(l);
        return this;
    }

    public ()
    {
    }
}
