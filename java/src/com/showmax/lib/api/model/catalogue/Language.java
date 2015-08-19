// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class Language
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Language createFromParcel(Parcel parcel)
        {
            return new Language(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Language[] newArray(int i)
        {
            return new Language[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String iso6393;
    public String name;

    public Language()
    {
    }

    private Language(Parcel parcel)
    {
        name = parcel.readString();
        iso6393 = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != null && (obj instanceof Language))
        {
            obj = (Language)obj;
            if (((Language) (obj)).iso6393 != null && ((Language) (obj)).iso6393.equals(iso6393))
            {
                return true;
            }
        }
        return false;
    }

    public String toString()
    {
        return String.format("%s:%s", new Object[] {
            iso6393, name
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(name);
        parcel.writeString(iso6393);
    }

}
