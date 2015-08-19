// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Section

public class SectionList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public SectionList createFromParcel(Parcel parcel)
        {
            return new SectionList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public SectionList[] newArray(int i)
        {
            return new SectionList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public int count;
    public ArrayList items;
    public int remaining;

    private SectionList(Parcel parcel)
    {
        count = parcel.readInt();
        items = new ArrayList();
        parcel.readTypedList(items, Section.CREATOR);
        remaining = parcel.readInt();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(count);
        parcel.writeTypedList(items);
        parcel.writeInt(remaining);
    }

}
