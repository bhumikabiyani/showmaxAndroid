// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;

// Referenced classes of package com.google.android.gms.drive.query.internal:
//            AbstractFilter, zzh, zze, zzf

public class HasFilter extends AbstractFilter
{

    public static final zzh CREATOR = new zzh();
    final int zzFG;
    final MetadataBundle zzWx;
    final MetadataField zzWy;

    HasFilter(int i, MetadataBundle metadatabundle)
    {
        zzFG = i;
        zzWx = metadatabundle;
        zzWy = zze.zzb(metadatabundle);
    }

    public HasFilter(SearchableMetadataField searchablemetadatafield, Object obj)
    {
        this(1, MetadataBundle.zza(searchablemetadatafield, obj));
    }

    public int describeContents()
    {
        return 0;
    }

    public Object getValue()
    {
        return zzWx.zza(zzWy);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzh.zza(this, parcel, i);
    }

    public Object zza(zzf zzf1)
    {
        return zzf1.zzd(zzWy, getValue());
    }

}
