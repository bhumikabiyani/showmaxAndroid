// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Asset

static final class 
    implements android.os.le.Creator
{

    public Asset createFromParcel(Parcel parcel)
    {
        return new Asset(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public Asset[] newArray(int i)
    {
        return new Asset[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
