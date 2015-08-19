// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.showmax.lib.api.model.user;

import android.os.Parcel;

// Referenced classes of package com.showmax.lib.api.model.user:
//            UserProfile

static final class 
    implements android.os.ator
{

    public UserProfile createFromParcel(Parcel parcel)
    {
        return new UserProfile(parcel, null);
    }

    public volatile Object createFromParcel(Parcel parcel)
    {
        return createFromParcel(parcel);
    }

    public UserProfile[] newArray(int i)
    {
        return new UserProfile[i];
    }

    public volatile Object[] newArray(int i)
    {
        return newArray(i);
    }

    ()
    {
    }
}
