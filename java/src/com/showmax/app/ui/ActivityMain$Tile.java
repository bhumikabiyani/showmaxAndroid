// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.app.ui;

import android.os.Parcel;
import android.os.Parcelable;
import com.showmax.lib.api.model.catalogue.Asset;
import com.showmax.lib.api.model.catalogue.Category;
import java.util.ArrayList;

// Referenced classes of package com.showmax.app.ui:
//            ActivityMain

public static class mAssets
    implements Parcelable
{

    public static final android.os. CREATOR = new android.os.Parcelable.Creator() {

        public ActivityMain.Tile createFromParcel(Parcel parcel)
        {
            return new ActivityMain.Tile(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public ActivityMain.Tile[] newArray(int i)
        {
            return new ActivityMain.Tile[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private ArrayList mAssets;
    private Category mCategory;
    private com.showmax.app.ui.widget.eType mTileType;

    public int describeContents()
    {
        return 0;
    }

    public ArrayList getAssets()
    {
        return mAssets;
    }

    public Category getCategory()
    {
        return mCategory;
    }

    public com.showmax.app.ui.widget.eType getTileType()
    {
        return mTileType;
    }

    public void setAssets(ArrayList arraylist)
    {
        mAssets = arraylist;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeSerializable(mTileType);
        parcel.writeParcelable(mCategory, i);
        parcel.writeTypedList(mAssets);
    }


    private ategory(Parcel parcel)
    {
        mTileType = (com.showmax.app.ui.widget.eType)parcel.readSerializable();
        mCategory = (Category)parcel.readParcelable(com/showmax/lib/api/model/catalogue/Category.getClassLoader());
        mAssets = new ArrayList();
        parcel.readTypedList(mAssets, Asset.CREATOR);
    }

    sset.CREATOR(Parcel parcel, sset.CREATOR creator)
    {
        this(parcel);
    }

    public ategory(com.showmax.app.ui.widget.eType etype)
    {
        this(etype, ((Category) (null)));
    }

    public ategory(com.showmax.app.ui.widget.eType etype, Category category)
    {
        this(etype, category, null);
    }

    public ategory(com.showmax.app.ui.widget.eType etype, Category category, ArrayList arraylist)
    {
        mTileType = etype;
        mCategory = category;
        mAssets = arraylist;
    }
}
