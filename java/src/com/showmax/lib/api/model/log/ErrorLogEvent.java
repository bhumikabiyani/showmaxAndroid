// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.log:
//            LogEvent

public class ErrorLogEvent extends LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ErrorLogEvent createFromParcel(Parcel parcel)
        {
            return new ErrorLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ErrorLogEvent[] newArray(int i)
        {
            return new ErrorLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public int httpCode;
    public String screen;
    public String severity;
    public String url;

    private ErrorLogEvent(Parcel parcel)
    {
        super(parcel);
        httpCode = parcel.readInt();
        url = parcel.readString();
        severity = parcel.readString();
        screen = parcel.readString();
    }


    public ErrorLogEvent(String s, String s1, Event.ErrorEvent errorevent)
    {
        super(s, s1);
        eventCategory = Event.ErrorEvent.getEventCategory();
        event = errorevent.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(httpCode);
        parcel.writeString(url);
        parcel.writeString(severity);
        parcel.writeString(screen);
    }

}
