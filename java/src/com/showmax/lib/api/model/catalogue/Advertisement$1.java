// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.catalogue;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.catalogue:
//            Advertisement

static final class _cls9
    implements android.os.or
{

    public Advertisement createFromParcel(Parcel parcel)
    {
        return new Advertisement(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public Advertisement[] newArray(int i)
    {
        return new Advertisement[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    _cls9()
    {
    }
}
