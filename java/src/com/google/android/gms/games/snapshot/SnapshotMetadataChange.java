// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import com.google.android.gms.common.data.zza;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadataChangeEntity, SnapshotMetadata

public abstract class SnapshotMetadataChange
{
    public static final class Builder
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

        public Builder fromMetadata(SnapshotMetadata snapshotmetadata)
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

        public Builder setCoverImage(Bitmap bitmap)
        {
            zzakG = new zza(bitmap);
            zzakH = null;
            return this;
        }

        public Builder setDescription(String s)
        {
            zzZO = s;
            return this;
        }

        public Builder setPlayedTimeMillis(long l)
        {
            zzakE = Long.valueOf(l);
            return this;
        }

        public Builder setProgressValue(long l)
        {
            zzakF = Long.valueOf(l);
            return this;
        }

        public Builder()
        {
        }
    }


    public static final SnapshotMetadataChange EMPTY_CHANGE = new SnapshotMetadataChangeEntity();

    protected SnapshotMetadataChange()
    {
    }

    public abstract Bitmap getCoverImage();

    public abstract String getDescription();

    public abstract Long getPlayedTimeMillis();

    public abstract Long getProgressValue();

    public abstract zza zzpc();

}
