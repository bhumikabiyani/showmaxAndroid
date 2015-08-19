// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public class Category
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Category createFromParcel(Parcel parcel)
        {
            return new Category(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Category[] newArray(int i)
        {
            return new Category[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public ArrayList childCategories;
    public String id;
    public String link;
    public Category parentCategory;
    public String title;

    private Category(Parcel parcel)
    {
        id = parcel.readString();
        link = parcel.readString();
        title = parcel.readString();
        childCategories = new ArrayList();
        parcel.readTypedList(childCategories, CREATOR);
        parentCategory = (Category)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Category.getClassLoader());
    }


    public Category(String s, String s1)
    {
        id = s;
        title = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof Category))
        {
            obj = (Category)obj;
            if (((Category) (obj)).id != null && ((Category) (obj)).id.equals(id))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        int k = 0;
        int i;
        int j;
        if (id != null)
        {
            i = id.hashCode();
        } else
        {
            i = 0;
        }
        if (link != null)
        {
            j = link.hashCode();
        } else
        {
            j = 0;
        }
        if (title != null)
        {
            k = title.hashCode();
        }
        return (i * 31 + j) * 31 + k;
    }

    public String toString()
    {
        if (id != null)
        {
            return id;
        } else
        {
            return super.toString();
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(id);
        parcel.writeString(link);
        parcel.writeString(title);
        parcel.writeTypedList(childCategories);
        parcel.writeParcelable(parentCategory, i);
    }

}
