// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzbm

public class TrashResourceRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzbm();
    final int zzFG;
    final DriveId zzTh;

    TrashResourceRequest(int i, DriveId driveid)
    {
        zzFG = i;
        zzTh = driveid;
    }

    public TrashResourceRequest(DriveId driveid)
    {
        this(1, driveid);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzbm.zza(this, parcel, i);
    }

}
