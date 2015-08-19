// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzaz

public class OnLoadRealtimeResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaz();
    final int zzFG;
    final boolean zzmE;

    OnLoadRealtimeResponse(int i, boolean flag)
    {
        zzFG = i;
        zzmE = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaz.zza(this, parcel, i);
    }

}
