// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.snapshot;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.data.zza;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.games.snapshot:
//            SnapshotMetadataChange, SnapshotMetadataChangeCreator

public final class SnapshotMetadataChangeEntity extends SnapshotMetadataChange
    implements SafeParcelable
{

    public static final SnapshotMetadataChangeCreator CREATOR = new SnapshotMetadataChangeCreator();
    private final int zzFG;
    private final String zzZO;
    private final Long zzakF;
    private final Uri zzakH;
    private final Long zzakI;
    private zza zzakJ;

    SnapshotMetadataChangeEntity()
    {
        this(5, null, null, null, null, null);
    }

    SnapshotMetadataChangeEntity(int i, String s, Long long1, zza zza1, Uri uri, Long long2)
    {
        boolean flag2 = true;
        boolean flag = true;
        super();
        zzFG = i;
        zzZO = s;
        zzakI = long1;
        zzakJ = zza1;
        zzakH = uri;
        zzakF = long2;
        if (zzakJ != null)
        {
            if (zzakH != null)
            {
                flag = false;
            }
            zzx.zza(flag, "Cannot set both a URI and an image");
        } else
        if (zzakH != null)
        {
            boolean flag1;
            if (zzakJ == null)
            {
                flag1 = flag2;
            } else
            {
                flag1 = false;
            }
            zzx.zza(flag1, "Cannot set both a URI and an image");
            return;
        }
    }

    SnapshotMetadataChangeEntity(String s, Long long1, zza zza1, Uri uri, Long long2)
    {
        this(5, s, long1, zza1, uri, long2);
    }

    public int describeContents()
    {
        return 0;
    }

    public Bitmap getCoverImage()
    {
        if (zzakJ == null)
        {
            return null;
        } else
        {
            return zzakJ.zziv();
        }
    }

    public Uri getCoverImageUri()
    {
        return zzakH;
    }

    public String getDescription()
    {
        return zzZO;
    }

    public Long getPlayedTimeMillis()
    {
        return zzakI;
    }

    public Long getProgressValue()
    {
        return zzakF;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.games.snapshot.SnapshotMetadataChangeCreator.zza(this, parcel, i);
    }

    public zza zzpc()
    {
        return zzakJ;
    }

}
