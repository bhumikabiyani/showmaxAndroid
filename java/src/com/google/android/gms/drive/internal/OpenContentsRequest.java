// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzbd

public class OpenContentsRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzbd();
    final int zzFG;
    final int zzRW;
    final DriveId zzTh;
    final int zzVb;

    OpenContentsRequest(int i, DriveId driveid, int j, int k)
    {
        zzFG = i;
        zzTh = driveid;
        zzRW = j;
        zzVb = k;
    }

    public OpenContentsRequest(DriveId driveid, int i, int j)
    {
        this(1, driveid, i, j);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzbd.zza(this, parcel, i);
    }

}
