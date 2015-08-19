// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.log:
//            LogEvent

public class UserLogEvent extends LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public UserLogEvent createFromParcel(Parcel parcel)
        {
            return new UserLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UserLogEvent[] newArray(int i)
        {
            return new UserLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String assetId;
    public String days;
    public String paymentInstrument;
    public String product;

    private UserLogEvent(Parcel parcel)
    {
        super(parcel);
        paymentInstrument = parcel.readString();
        product = parcel.readString();
        days = parcel.readString();
        assetId = parcel.readString();
    }


    public UserLogEvent(String s, String s1, Event.UserEvent userevent)
    {
        super(s, s1);
        eventCategory = Event.UserEvent.getEventCategory();
        event = userevent.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(paymentInstrument);
        parcel.writeString(product);
        parcel.writeString(days);
        parcel.writeString(assetId);
    }

}
