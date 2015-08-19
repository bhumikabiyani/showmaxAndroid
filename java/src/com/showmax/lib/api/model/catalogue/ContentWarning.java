// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;

public class ContentWarning
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public ContentWarning createFromParcel(Parcel parcel)
        {
            return new ContentWarning(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ContentWarning[] newArray(int i)
        {
            return new ContentWarning[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final byte PARCELABLE_FALSE = 0;
    private static final byte PARCELABLE_TRUE = 1;
    public boolean confirmation;
    public String link;
    public int timeout;

    private ContentWarning(Parcel parcel)
    {
        boolean flag = true;
        super();
        if (parcel.readByte() != 1)
        {
            flag = false;
        }
        confirmation = flag;
        link = parcel.readString();
        timeout = parcel.readInt();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        byte byte0;
        if (confirmation)
        {
            byte0 = 1;
        } else
        {
            byte0 = 0;
        }
        parcel.writeByte(byte0);
        parcel.writeString(link);
        parcel.writeInt(timeout);
    }

}
