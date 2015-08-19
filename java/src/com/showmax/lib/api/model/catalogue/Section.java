// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class Section
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Section createFromParcel(Parcel parcel)
        {
            return new Section(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Section[] newArray(int i)
        {
            return new Section[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String name;
    public String slug;

    private Section(Parcel parcel)
    {
        name = parcel.readString();
        slug = parcel.readString();
    }


    public Section(String s, String s1)
    {
        name = s;
        slug = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof Section))
        {
            obj = (Section)obj;
            if (((Section) (obj)).slug != null && ((Section) (obj)).slug.equals(slug))
            {
                return true;
            }
        }
        return false;
    }

    public int hashCode()
    {
        if ((new StringBuilder()).append(31).append(slug).toString() == null)
        {
            return 0;
        } else
        {
            return slug.hashCode();
        }
    }

    public String toString()
    {
        return slug;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(name);
        parcel.writeString(slug);
    }

}
