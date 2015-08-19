// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.StorageStats;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzbb

public class OnStorageStatsResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzbb();
    final int zzFG;
    StorageStats zzVa;

    OnStorageStatsResponse(int i, StorageStats storagestats)
    {
        zzFG = i;
        zzVa = storagestats;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzbb.zza(this, parcel, i);
    }

}
