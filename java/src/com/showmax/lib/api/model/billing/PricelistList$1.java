// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.billing;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.billing:
//            PricelistList

static final class 
    implements android.os.or
{

    public PricelistList createFromParcel(Parcel parcel)
    {
        return new PricelistList(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public PricelistList[] newArray(int i)
    {
        return new PricelistList[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
