// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.error;

import android.os.Parcel;
import android.os.Parcelable;

public class ApiError
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ApiError createFromParcel(Parcel parcel)
        {
            return new ApiError(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ApiError[] newArray(int i)
        {
            return new ApiError[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String errorCode;
    public String language;
    public String message;
    public int status;

    private ApiError(Parcel parcel)
    {
        language = parcel.readString();
        errorCode = parcel.readString();
        message = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(language);
        parcel.writeString(errorCode);
        parcel.writeString(message);
    }

}
