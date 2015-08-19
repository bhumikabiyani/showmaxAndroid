// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.log:
//            UserLogEvent

static final class 
    implements android.os.tor
{

    public UserLogEvent createFromParcel(Parcel parcel)
    {
        return new UserLogEvent(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public UserLogEvent[] newArray(int i)
    {
        return new UserLogEvent[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
