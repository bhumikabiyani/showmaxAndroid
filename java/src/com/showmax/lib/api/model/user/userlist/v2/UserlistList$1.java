// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user.userlist.v2;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.user.userlist.v2:
//            UserlistList

static final class 
    implements android.os.tor
{

    public UserlistList createFromParcel(Parcel parcel)
    {
        return new UserlistList(parcel, null);
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

    ()
    {
    }
}
