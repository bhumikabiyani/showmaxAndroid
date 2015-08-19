// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.log:
//            LogEvent

public class UiNavigationLogEvent extends LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public UiNavigationLogEvent createFromParcel(Parcel parcel)
        {
            return new UiNavigationLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UiNavigationLogEvent[] newArray(int i)
        {
            return new UiNavigationLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String assetId;
    public String category;
    public int count;
    public String keyword;
    public String section;

    protected UiNavigationLogEvent(Parcel parcel)
    {
        super(parcel);
        section = parcel.readString();
        keyword = parcel.readString();
        count = parcel.readInt();
        category = parcel.readString();
        assetId = parcel.readString();
    }

    public UiNavigationLogEvent(String s, String s1, Event.UiNavigationEvent uinavigationevent)
    {
        super(s, s1);
        eventCategory = Event.UiNavigationEvent.getEventCategory();
        event = uinavigationevent.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(section);
        parcel.writeString(keyword);
        parcel.writeInt(count);
        parcel.writeString(category);
        parcel.writeString(assetId);
    }

}
