// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

public class LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public LogEvent createFromParcel(Parcel parcel)
        {
            return new LogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public LogEvent[] newArray(int i)
        {
            return new LogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String clientId;
    public String event;
    public String eventCategory;
    public String message;
    public long timestamp;
    public String userId;
    public String version;

    protected LogEvent(Parcel parcel)
    {
        timestamp = parcel.readLong();
        version = parcel.readString();
        eventCategory = parcel.readString();
        event = parcel.readString();
        userId = parcel.readString();
        clientId = parcel.readString();
        message = parcel.readString();
    }

    public LogEvent(String s, String s1)
    {
        if (s == null || s.isEmpty())
        {
            throw new IllegalArgumentException("version must not be empty");
        } else
        {
            version = s;
            clientId = s1;
            timestamp = System.currentTimeMillis();
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(timestamp);
        parcel.writeString(version);
        parcel.writeString(eventCategory);
        parcel.writeString(event);
        parcel.writeString(userId);
        parcel.writeString(clientId);
        parcel.writeString(message);
    }

}
