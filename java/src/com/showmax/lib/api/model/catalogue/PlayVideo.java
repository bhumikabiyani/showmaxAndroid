// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class PlayVideo
    implements Parcelable
{
    public static final class Encoding extends Enum
    {

        private static final Encoding $VALUES[];
        public static final Encoding HLS;
        public static final Encoding WIDEVINE;
        private static Encoding allValues[] = values();

        public static Encoding fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Encoding valueOf(String s)
        {
            return (Encoding)Enum.valueOf(com/showmax/lib/api/model/catalogue/PlayVideo$Encoding, s);
        }

        public static Encoding[] values()
        {
            return (Encoding[])$VALUES.clone();
        }

        static 
        {
            HLS = new Encoding("HLS", 0);
            WIDEVINE = new Encoding("WIDEVINE", 1);
            $VALUES = (new Encoding[] {
                HLS, WIDEVINE
            });
        }

        private Encoding(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public PlayVideo createFromParcel(Parcel parcel)
        {
            return new PlayVideo(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public PlayVideo[] newArray(int i)
        {
            return new PlayVideo[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final byte PARCELABLE_FALSE = 0;
    private static final byte PARCELABLE_TRUE = 1;
    public boolean airplayAllowed;
    public int duration;
    public Encoding encoding;
    public String id;
    public String language;
    public Video.Type type;
    public String url;

    private PlayVideo(Parcel parcel)
    {
        Object obj1 = null;
        super();
        id = parcel.readString();
        duration = parcel.readInt();
        int i = parcel.readInt();
        Object obj;
        boolean flag;
        if (i == -1)
        {
            obj = null;
        } else
        {
            obj = Encoding.fromOrdinal(i);
        }
        encoding = ((Encoding) (obj));
        language = parcel.readString();
        i = parcel.readInt();
        if (i == -1)
        {
            obj = obj1;
        } else
        {
            obj = Video.Type.fromOrdinal(i);
        }
        type = ((Video.Type) (obj));
        if (parcel.readByte() == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        airplayAllowed = flag;
        url = parcel.readString();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        byte byte1 = -1;
        parcel.writeString(id);
        parcel.writeInt(duration);
        byte byte0;
        if (encoding != null)
        {
            i = encoding.ordinal();
        } else
        {
            i = -1;
        }
        parcel.writeInt(i);
        parcel.writeString(language);
        i = byte1;
        if (type != null)
        {
            i = type.ordinal();
        }
        parcel.writeInt(i);
        if (airplayAllowed)
        {
            byte0 = 1;
        } else
        {
            byte0 = 0;
        }
        parcel.writeByte(byte0);
        parcel.writeString(url);
    }

}
