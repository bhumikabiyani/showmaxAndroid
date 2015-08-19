// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;

import android.os.Parcel;
import android.os.Parcelable;

public class BrandingPartner
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public BrandingPartner createFromParcel(Parcel parcel)
        {
            return new BrandingPartner(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public BrandingPartner[] newArray(int i)
        {
            return new BrandingPartner[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String help;
    public String logoDark;
    public String logoLight;
    public String name;
    public String subscription;

    private BrandingPartner(Parcel parcel)
    {
        name = parcel.readString();
        logoDark = parcel.readString();
        logoLight = parcel.readString();
        help = parcel.readString();
        subscription = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public String toString()
    {
        return name;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(name);
        parcel.writeString(logoDark);
        parcel.writeString(logoLight);
        parcel.writeString(help);
        parcel.writeString(subscription);
    }

}
