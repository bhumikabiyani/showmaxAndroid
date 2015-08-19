// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.model.user.userlist:
//            Userlist

public class UserlistList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public UserlistList createFromParcel(Parcel parcel)
        {
            return new UserlistList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public UserlistList[] newArray(int i)
        {
            return new UserlistList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public int count;
    public ArrayList items;

    private UserlistList(Parcel parcel)
    {
        count = parcel.readInt();
        items = new ArrayList();
        parcel.readTypedList(items, Userlist.CREATOR);
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(count);
        parcel.writeTypedList(items);
    }

}
