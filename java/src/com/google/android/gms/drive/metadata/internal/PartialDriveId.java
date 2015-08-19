// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.DriveId;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            zzl

public class PartialDriveId
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzl();
    final int zzFG;
    final String zzSh;
    final long zzSi;
    final int zzSj;

    PartialDriveId(int i, String s, long l, int j)
    {
        zzFG = i;
        zzSh = s;
        zzSi = l;
        zzSj = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzl.zza(this, parcel, i);
    }

    public DriveId zzt(long l)
    {
        return new DriveId(zzSh, zzSi, l, zzSj);
    }

}
