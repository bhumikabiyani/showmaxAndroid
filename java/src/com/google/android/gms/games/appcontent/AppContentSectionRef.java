// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.appcontent:
//            MultiDataBufferRef, AppContentSection, AppContentSectionEntity, AppContentUtils, 
//            AppContentCardRef

public final class AppContentSectionRef extends MultiDataBufferRef
    implements AppContentSection
{

    private final int zzadF;

    AppContentSectionRef(ArrayList arraylist, int i, int j)
    {
        super(arraylist, 0, i);
        zzadF = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return AppContentSectionEntity.zza(this, obj);
    }

    public Object freeze()
    {
        return zznf();
    }

    public List getActions()
    {
        return zzng();
    }

    public Bundle getExtras()
    {
        return AppContentUtils.zzd(zzMd, zzadC, "section_data", zzNQ);
    }

    public String getId()
    {
        return getString("section_id");
    }

    public String getTitle()
    {
        return getString("section_title");
    }

    public String getType()
    {
        return getString("section_type");
    }

    public int hashCode()
    {
        return AppContentSectionEntity.zza(this);
    }

    public String toString()
    {
        return AppContentSectionEntity.zzb(this);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        ((AppContentSectionEntity)zznf()).writeToParcel(parcel, i);
    }

    public String zzmJ()
    {
        return getString("section_content_description");
    }

    public List zzmT()
    {
        return zznh();
    }

    public String zzmV()
    {
        return getString("section_subtitle");
    }

    public List zznd()
    {
        return zzni();
    }

    public String zzne()
    {
        return getString("section_card_type");
    }

    public AppContentSection zznf()
    {
        return new AppContentSectionEntity(this);
    }

    public ArrayList zzng()
    {
        return AppContentUtils.zza(zzMd, zzadC, "section_actions", zzNQ);
    }

    public ArrayList zznh()
    {
        return AppContentUtils.zzb(zzMd, zzadC, "section_annotations", zzNQ);
    }

    public ArrayList zzni()
    {
        ArrayList arraylist = new ArrayList(zzadF);
        for (int i = 0; i < zzadF; i++)
        {
            arraylist.add(new AppContentCardRef(zzadC, zzNQ + i));
        }

        return arraylist;
    }
}
