// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

public class AppPreflightRequestBody
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AppPreflightRequestBody createFromParcel(Parcel parcel)
        {
            return new AppPreflightRequestBody(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AppPreflightRequestBody[] newArray(int i)
        {
            return new AppPreflightRequestBody[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String deviceId;
    public ArrayList drm;
    public String language;
    public String store;
    public long timestamp;
    public String userAgent;
    public String userId;
    public String version;

    public AppPreflightRequestBody()
    {
    }

    private AppPreflightRequestBody(Parcel parcel)
    {
        timestamp = parcel.readLong();
        version = parcel.readString();
        userId = parcel.readString();
        language = parcel.readString();
        store = parcel.readString();
        deviceId = parcel.readString();
        userAgent = parcel.readString();
        drm = new ArrayList();
        parcel.readStringList(drm);
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(timestamp);
        parcel.writeString(version);
        parcel.writeString(userId);
        parcel.writeString(language);
        parcel.writeString(store);
        parcel.writeString(deviceId);
        parcel.writeString(userAgent);
        parcel.writeStringList(drm);
    }

}
