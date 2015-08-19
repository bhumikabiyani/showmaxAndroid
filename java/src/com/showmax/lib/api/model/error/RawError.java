// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.error;

import android.os.Parcel;
import android.os.Parcelable;

public class RawError
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public RawError createFromParcel(Parcel parcel)
        {
            return new RawError(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public RawError[] newArray(int i)
        {
            return new RawError[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String message;
    public int status;
    public String url;

    public RawError()
    {
    }

    private RawError(Parcel parcel)
    {
        message = parcel.readString();
        url = parcel.readString();
        status = parcel.readInt();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(message);
        parcel.writeString(url);
        parcel.writeInt(status);
    }

}
