// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.utils.LanguageUtils;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Subtitles

public class Video
    implements Parcelable
{
    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type MAIN;
        public static final Type TRAILER;
        private static Type allValues[] = values();

        public static Type fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/showmax/lib/api/model/catalogue/Video$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        static 
        {
            MAIN = new Type("MAIN", 0);
            TRAILER = new Type("TRAILER", 1);
            $VALUES = (new Type[] {
                MAIN, TRAILER
            });
        }

        private Type(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Video createFromParcel(Parcel parcel)
        {
            return new Video(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Video[] newArray(int i)
        {
            return new Video[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public int duration;
    public int height;
    public String id;
    public String language;
    public String link;
    public ArrayList subtitles;
    public Type type;
    public int width;

    private Video(Parcel parcel)
    {
        id = parcel.readString();
        duration = parcel.readInt();
        language = parcel.readString();
        link = parcel.readString();
        int i = parcel.readInt();
        Type type1;
        if (i == -1)
        {
            type1 = null;
        } else
        {
            type1 = Type.fromOrdinal(i);
        }
        type = type1;
        subtitles = new ArrayList();
        parcel.readTypedList(subtitles, Subtitles.CREATOR);
        width = parcel.readInt();
        height = parcel.readInt();
    }


    public int describeContents()
    {
        return 0;
    }

    public ArrayList getAvailableSubtitles()
    {
        LanguageUtils languageutils = LanguageUtils.getInstance();
        ArrayList arraylist = new ArrayList();
        Iterator iterator = subtitles.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            Language language1 = languageutils.parseLanguage(((Subtitles)iterator.next()).language);
            if (language1 != null)
            {
                arraylist.add(language1);
            }
        } while (true);
        return arraylist;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(id);
        parcel.writeInt(duration);
        parcel.writeString(language);
        parcel.writeString(link);
        if (type != null)
        {
            i = type.ordinal();
        } else
        {
            i = -1;
        }
        parcel.writeInt(i);
        parcel.writeTypedList(subtitles);
        parcel.writeInt(width);
        parcel.writeInt(height);
    }

}
