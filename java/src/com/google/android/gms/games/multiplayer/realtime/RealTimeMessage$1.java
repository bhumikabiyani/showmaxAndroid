// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.multiplayer.realtime;

import android.os.Parcel;

// Referenced classes of package com.google.android.gms.games.multiplayer.realtime:
//            RealTimeMessage

static final class I
    implements android.os.
{

    public Object createFromParcel(Parcel parcel)
    {
        return zzdg(parcel);
    }

    public Object[] newArray(int i)
    {
        return zzeX(i);
    }

    public RealTimeMessage zzdg(Parcel parcel)
    {
        return new RealTimeMessage(parcel, null);
    }

    public RealTimeMessage[] zzeX(int i)
    {
        return new RealTimeMessage[i];
    }

    I()
    {
    }
}
