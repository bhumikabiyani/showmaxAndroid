// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package com.showmax.lib.api.model.log:
//            LogEvent

public class PlaybackLogEvent extends LogEvent
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public PlaybackLogEvent createFromParcel(Parcel parcel)
        {
            return new PlaybackLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public PlaybackLogEvent[] newArray(int i)
        {
            return new PlaybackLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public boolean fullscreen;
    public int position;
    public int previousPosition;
    public String previousProfile;
    public String profile;
    public float startUpTime;
    public String subtitlesId;
    public float throughput;
    public float transferTime;
    public String videoId;

    protected PlaybackLogEvent(Parcel parcel)
    {
        super(parcel);
        videoId = parcel.readString();
        position = parcel.readInt();
        previousPosition = parcel.readInt();
        startUpTime = parcel.readFloat();
        subtitlesId = parcel.readString();
        profile = parcel.readString();
        previousProfile = parcel.readString();
        throughput = parcel.readFloat();
        transferTime = parcel.readFloat();
        boolean flag;
        if (parcel.readInt() == 0)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        fullscreen = flag;
    }

    public PlaybackLogEvent(String s, String s1, Event.PlaybackEvent playbackevent)
    {
        super(s, s1);
        eventCategory = Event.PlaybackEvent.getEventCategory();
        event = playbackevent.toString();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        super.writeToParcel(parcel, i);
        parcel.writeString(videoId);
        parcel.writeInt(position);
        parcel.writeInt(previousPosition);
        parcel.writeFloat(startUpTime);
        parcel.writeString(subtitlesId);
        parcel.writeString(profile);
        parcel.writeString(previousProfile);
        parcel.writeFloat(throughput);
        parcel.writeFloat(transferTime);
        if (fullscreen)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        parcel.writeInt(i);
    }

}
