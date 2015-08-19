// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            MultiDataBufferRef, AppContentAction, AppContentActionEntity, AppContentUtils, 
//            AppContentAnnotation

public final class AppContentActionRef extends MultiDataBufferRef
    implements AppContentAction
{

    AppContentActionRef(ArrayList arraylist, int i)
    {
        super(arraylist, 1, i);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return AppContentActionEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzmL();
    }

    public Bundle getExtras()
    {
        return AppContentUtils.zzd(zzMd, zzadC, "action_data", zzNQ);
    }

    public String getId()
    {
        return getString("action_id");
    }

    public String getType()
    {
        return getString("action_type");
    }

    public int hashCode()
    {
        return AppContentActionEntity.zza(this);
    }

    public String toString()
    {
        return AppContentActionEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentActionEntity)zzmL()).writeToParcel(parcel, i);
    }

    public AppContentAnnotation zzmH()
    {
        ArrayList arraylist = AppContentUtils.zzb(zzMd, zzadC, "action_annotation", zzNQ);
        if (arraylist.size() == 1)
        {
            return (AppContentAnnotation)arraylist.get(0);
        } else
        {
            return null;
        }
    }

    public List zzmI()
    {
        return AppContentUtils.zzc(zzMd, zzadC, "action_conditions", zzNQ);
    }

    public String zzmJ()
    {
        return getString("action_content_description");
    }

    public String zzmK()
    {
        return getString("overflow_text");
    }

    public AppContentAction zzmL()
    {
        return new AppContentActionEntity(this);
    }
}
