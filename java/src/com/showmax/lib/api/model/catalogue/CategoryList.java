// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Category

public class CategoryList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public CategoryList createFromParcel(Parcel parcel)
        {
            return new CategoryList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public CategoryList[] newArray(int i)
        {
            return new CategoryList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public ArrayList items;

    private CategoryList(Parcel parcel)
    {
        items = new ArrayList();
        parcel.readTypedList(items, Category.CREATOR);
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedList(items);
    }

}
