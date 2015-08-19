// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public class Advertisement
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Advertisement createFromParcel(Parcel parcel)
        {
            return new Advertisement(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Advertisement[] newArray(int i)
        {
            return new Advertisement[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public Asset asset;
    public String description;
    public String image;
    public String url;

    private Advertisement(Parcel parcel)
    {
        url = parcel.readString();
        image = parcel.readString();
        asset = (Asset)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Asset.getClassLoader());
        description = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(url);
        parcel.writeString(image);
        parcel.writeParcelable(asset, i);
        parcel.writeString(description);
    }

}
