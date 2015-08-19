// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;

import android.os.Parcel;
import android.os.Parcelable;

public class Address
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Address createFromParcel(Parcel parcel)
        {
            return new Address(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Address[] newArray(int i)
        {
            return new Address[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String city;
    public String country;
    public String street;
    public String zip;

    private Address(Parcel parcel)
    {
        street = parcel.readString();
        city = parcel.readString();
        zip = parcel.readString();
        country = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(street);
        parcel.writeString(city);
        parcel.writeString(zip);
        parcel.writeString(country);
    }

}
