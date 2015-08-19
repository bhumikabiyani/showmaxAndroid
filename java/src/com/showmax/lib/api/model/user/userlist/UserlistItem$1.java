// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.user.userlist:
//            UserlistItem

static final class 
    implements android.os.tor
{

    public UserlistItem createFromParcel(Parcel parcel)
    {
        return new UserlistItem(parcel, null);
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

    ()
    {
    }
}
