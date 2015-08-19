// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.log;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.log:
//            AppGeneralLogEvent

static final class 
    implements android.os.pGeneralLogEvent._cls1
{

    public AppGeneralLogEvent createFromParcel(Parcel parcel)
    {
        return new AppGeneralLogEvent(parcel);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public AppGeneralLogEvent[] newArray(int i)
    {
        return new AppGeneralLogEvent[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
