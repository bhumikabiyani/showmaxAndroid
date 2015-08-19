// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            MultiDataBufferRef, AppContentCard, AppContentCardEntity, AppContentUtils

public final class AppContentCardRef extends MultiDataBufferRef
    implements AppContentCard
{

    AppContentCardRef(ArrayList arraylist, int i)
    {
        super(arraylist, 0, i);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return AppContentCardEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zzmX();
    }

    public List getActions()
    {
        return AppContentUtils.zza(zzMd, zzadC, "card_actions", zzNQ);
    }

    public String getDescription()
    {
        return getString("card_description");
    }

    public Bundle getExtras()
    {
        return AppContentUtils.zzd(zzMd, zzadC, "card_data", zzNQ);
    }

    public String getId()
    {
        return getString("card_id");
    }

    public String getTitle()
    {
        return getString("card_title");
    }

    public String getType()
    {
        return getString("card_type");
    }

    public int hashCode()
    {
        return AppContentCardEntity.zza(this);
    }

    public String toString()
    {
        return AppContentCardEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentCardEntity)zzmX()).writeToParcel(parcel, i);
    }

    public List zzmI()
    {
        return AppContentUtils.zzc(zzMd, zzadC, "card_conditions", zzNQ);
    }

    public String zzmJ()
    {
        return getString("card_content_description");
    }

    public List zzmT()
    {
        return AppContentUtils.zzb(zzMd, zzadC, "card_annotations", zzNQ);
    }

    public int zzmU()
    {
        return getInteger("card_current_steps");
    }

    public String zzmV()
    {
        return getString("card_subtitle");
    }

    public int zzmW()
    {
        return getInteger("card_total_steps");
    }

    public AppContentCard zzmX()
    {
        return new AppContentCardEntity(this);
    }
}
