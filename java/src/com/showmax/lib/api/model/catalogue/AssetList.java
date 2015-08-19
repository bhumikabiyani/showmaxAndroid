// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

public class AssetList
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public AssetList createFromParcel(Parcel parcel)
        {
            return new AssetList(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AssetList[] newArray(int i)
        {
            return new AssetList[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    public int count;
    public ArrayList items;
    public int remaining;

    private AssetList(Parcel parcel)
    {
        count = parcel.readInt();
        items = new ArrayList();
        parcel.readTypedList(items, Asset.CREATOR);
        remaining = parcel.readInt();
    }


    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeInt(count);
        parcel.writeTypedList(items);
        parcel.writeInt(remaining);
    }

}
