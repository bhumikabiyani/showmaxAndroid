// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class Ratings
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Ratings createFromParcel(Parcel parcel)
        {
            return new Ratings(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Ratings[] newArray(int i)
        {
            return new Ratings[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String fcc;
    public String icflix;
    public String mpaa;

    private Ratings(Parcel parcel)
    {
        mpaa = parcel.readString();
        fcc = parcel.readString();
        icflix = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public String getRatingId()
    {
        if (mpaa != null && !mpaa.isEmpty())
        {
            return mpaa;
        }
        if (fcc != null && !fcc.isEmpty())
        {
            return fcc;
        } else
        {
            return null;
        }
    }

    public String getRatingText()
    {
        if (icflix != null && !icflix.isEmpty())
        {
            return icflix.replace("_", " ");
        } else
        {
            return null;
        }
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(mpaa);
        parcel.writeString(fcc);
        parcel.writeString(icflix);
    }

}
