// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model:
//            AppPreflightResponseBody

static final class 
    implements android.os.ResponseBody._cls1
{

    public AppPreflightResponseBody createFromParcel(Parcel parcel)
    {
        return new AppPreflightResponseBody(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public AppPreflightResponseBody[] newArray(int i)
    {
        return new AppPreflightResponseBody[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
