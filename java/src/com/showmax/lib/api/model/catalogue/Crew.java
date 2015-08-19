// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class Crew
    implements Parcelable
{
    public static final class Role extends Enum
    {

        private static final Role $VALUES[];
        public static final Role COMPOSER;
        public static final Role DIRECTOR;
        public static final Role WRITER;
        private static Role allValues[] = values();

        public static Role fromOrdinal(int i)
        {
            return allValues[i];
        }

        public static Role valueOf(String s)
        {
            return (Role)Enum.valueOf(com/showmax/lib/api/model/catalogue/Crew$Role, s);
        }

        public static Role[] values()
        {
            return (Role[])$VALUES.clone();
        }

        static 
        {
            DIRECTOR = new Role("DIRECTOR", 0);
            WRITER = new Role("WRITER", 1);
            COMPOSER = new Role("COMPOSER", 2);
            $VALUES = (new Role[] {
                DIRECTOR, WRITER, COMPOSER
            });
        }

        private Role(String s, int i)
        {
            super(s, i);
        }
    }


    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public Crew createFromParcel(Parcel parcel)
        {
            return new Crew(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public Crew[] newArray(int i)
        {
            return new Crew[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public String name;
    public Role role;

    private Crew(Parcel parcel)
    {
        name = parcel.readString();
        int i = parcel.readInt();
        if (i == -1)
        {
            parcel = null;
        } else
        {
            parcel = Role.fromOrdinal(i);
        }
        role = parcel;
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(name);
        if (role != null)
        {
            i = role.ordinal();
        } else
        {
            i = -1;
        }
        parcel.writeInt(i);
    }

}
