// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist.v2;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.model.catalogue.Asset;

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
    private static final String USERLIST_ITEM_DELIMITER = "|";
    private static final String USERLIST_ITEM_DELIMITER_ESCAPED = "\\|";
    public Asset assetData;
    public String assetId;
    public String encodingTaskId;
    public int progress;
    public String subtitlesId;

    public UserlistItem()
    {
    }

    private UserlistItem(Parcel parcel)
    {
        progress = parcel.readInt();
        assetId = parcel.readString();
        encodingTaskId = parcel.readString();
        subtitlesId = parcel.readString();
        assetData = (Asset)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Asset.getClassLoader());
    }


    public UserlistItem(Asset asset, int i)
    {
        assetData = asset;
    }

    public static UserlistItem deserialize(String s)
    {
        s = s.split("\\|", -1);
        UserlistItem userlistitem = new UserlistItem();
        if (userlistitem.assetData == null)
        {
            userlistitem.assetData = new Asset();
        }
        userlistitem.assetId = s[0];
        userlistitem.assetData.id = s[0];
        userlistitem.encodingTaskId = s[1];
        userlistitem.progress = Integer.parseInt(s[2]);
        return userlistitem;
    }

    public int describeContents()
    {
        return 0;
    }

    public String serialize()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append(assetId).append("|");
        if (encodingTaskId == null || encodingTaskId.isEmpty())
        {
            stringbuilder.append("");
        } else
        {
            stringbuilder.append(encodingTaskId);
        }
        stringbuilder.append("|").append(progress);
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(progress);
        parcel.writeString(assetId);
        parcel.writeString(encodingTaskId);
        parcel.writeString(subtitlesId);
        parcel.writeParcelable(assetData, i);
    }

}
