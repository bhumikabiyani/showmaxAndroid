// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            MultiDataBufferRef, AppContentAnnotation, AppContentAnnotationEntity, AppContentUtils

public final class AppContentAnnotationRef extends MultiDataBufferRef
    implements AppContentAnnotation
{

    AppContentAnnotationRef(ArrayList arraylist, int i)
    {
        super(arraylist, 2, i);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return AppContentAnnotationEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzmS();
    }

    public String getDescription()
    {
        return getString("annotation_description");
    }

    public String getId()
    {
        return getString("annotation_id");
    }

    public String getTitle()
    {
        return getString("annotation_title");
    }

    public int hashCode()
    {
        return AppContentAnnotationEntity.zza(this);
    }

    public String toString()
    {
        return AppContentAnnotationEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentAnnotationEntity)zzmS()).writeToParcel(parcel, i);
    }

    public String zzmM()
    {
        return getString("annotation_image_default_id");
    }

    public int zzmN()
    {
        return getInteger("annotation_image_height");
    }

    public Uri zzmO()
    {
        return zzbb("annotation_image_uri");
    }

    public Bundle zzmP()
    {
        return AppContentUtils.zzd(zzMd, zzadC, "annotation_modifiers", zzNQ);
    }

    public int zzmQ()
    {
        return getInteger("annotation_image_width");
    }

    public String zzmR()
    {
        return getString("annotation_layout_slot");
    }

    public AppContentAnnotation zzmS()
    {
        return new AppContentAnnotationEntity(this);
    }
}
