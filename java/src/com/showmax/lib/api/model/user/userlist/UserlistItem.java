// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;

import android.os.Parcel;
import android.os.Parcelable;

public class UserlistItem
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public UserlistItem createFromParcel(Parcel parcel)
        {
            return new UserlistItem(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UserlistItem[] newArray(int i)
        {
            return new UserlistItem[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final String USERLIST_DELIMITER = "|";
    private static final String USERLIST_DELIMITER_ESCAPED = "\\|";
    public String assetId;
    public int retainedResumeTime;

    private UserlistItem()
    {
    }

    private UserlistItem(Parcel parcel)
    {
        assetId = parcel.readString();
        retainedResumeTime = parcel.readInt();
    }


    public static UserlistItem deserialize(String s)
    {
        s = s.split("\\|");
        UserlistItem userlistitem = new UserlistItem();
        userlistitem.assetId = s[0];
        if (s.length > 1)
        {
            userlistitem.retainedResumeTime = Integer.parseInt(s[1]);
            return userlistitem;
        } else
        {
            userlistitem.retainedResumeTime = 0;
            return userlistitem;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public String serialize()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(assetId).append("|").append(retainedResumeTime);
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(assetId);
        parcel.writeInt(retainedResumeTime);
    }

}
