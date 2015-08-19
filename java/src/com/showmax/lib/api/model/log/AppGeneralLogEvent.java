// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.log:
//            LogEvent

public class AppGeneralLogEvent extends LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AppGeneralLogEvent createFromParcel(Parcel parcel)
        {
            return new AppGeneralLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AppGeneralLogEvent[] newArray(int i)
        {
            return new AppGeneralLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String lang;
    public String prevLang;

    protected AppGeneralLogEvent(Parcel parcel)
    {
        super(parcel);
        lang = parcel.readString();
        prevLang = parcel.readString();
    }

    public AppGeneralLogEvent(String s, String s1, Event.AppGeneralEvent appgeneralevent)
    {
        super(s, s1);
        eventCategory = Event.AppGeneralEvent.getEventCategory();
        event = appgeneralevent.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(lang);
        parcel.writeString(prevLang);
    }

}
