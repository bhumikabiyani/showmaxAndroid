// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class Image
    implements Parcelable
{
    public static final class Orientation extends Enum
    {

        private static final Orientation $VALUES[];
        public static final Orientation LANDSCAPE;
        public static final Orientation PORTRAIT;
        private static Orientation allValues[] = values();

        public static Orientation fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Orientation valueOf(String s)
        {
            return (Orientation)Enum.valueOf(com/showmax/lib/api/model/catalogue/Image$Orientation, s);
        }

        public static Orientation[] values()
        {
            return (Orientation[])$VALUES.clone();
        }

        static 
        {
            LANDSCAPE = new Orientation("LANDSCAPE", 0);
            PORTRAIT = new Orientation("PORTRAIT", 1);
            $VALUES = (new Orientation[] {
                LANDSCAPE, PORTRAIT
            });
        }

        private Orientation(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type HERO;
        public static final Type PICK;
        public static final Type POSTER;
        private static Type allValues[] = values();

        public static Type fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/showmax/lib/api/model/catalogue/Image$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            POSTER = new Type("POSTER", 0);
            HERO = new Type("HERO", 1);
            PICK = new Type("PICK", 2);
            $VALUES = (new Type[] {
                POSTER, HERO, PICK
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Image createFromParcel(Parcel parcel)
        {
            return new Image(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Image[] newArray(int i)
        {
            return new Image[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String id;
    public String language;
    public String link;
    public Orientation orientation;
    public Type type;

    private Image(Parcel parcel)
    {
        Object obj = null;
        super();
        id = parcel.readString();
        language = parcel.readString();
        link = parcel.readString();
        int i = parcel.readInt();
        Orientation orientation1;
        if (i == -1)
        {
            orientation1 = null;
        } else
        {
            orientation1 = Orientation.fromOrdinal(i);
        }
        orientation = orientation1;
        i = parcel.readInt();
        if (i == -1)
        {
            parcel = obj;
        } else
        {
            parcel = Type.fromOrdinal(i);
        }
        type = parcel;
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        byte byte0 = -1;
        parcel.writeString(id);
        parcel.writeString(language);
        parcel.writeString(link);
        if (orientation != null)
        {
            i = orientation.ordinal();
        } else
        {
            i = -1;
        }
        parcel.writeInt(i);
        i = byte0;
        if (type != null)
        {
            i = type.ordinal();
        }
        parcel.writeInt(i);
    }

}
