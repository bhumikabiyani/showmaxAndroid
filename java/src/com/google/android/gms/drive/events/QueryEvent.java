// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Parcel;

// Referenced classes of package com.google.android.gms.drive.events:
//            DriveEvent, zze

public class QueryEvent
    implements DriveEvent
{

    public static final zze CREATOR = new zze();
    final int zzFG;

    public QueryEvent()
    {
        this(1);
    }

    QueryEvent(int i)
    {
        zzFG = i;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getType()
    {
        return 3;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zze.zza(this, parcel, i);
    }

}
