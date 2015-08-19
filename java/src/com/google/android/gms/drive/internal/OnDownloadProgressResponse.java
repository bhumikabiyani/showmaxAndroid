// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzar

public class OnDownloadProgressResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzar();
    final int zzFG;
    final long zzUR;
    final long zzUS;

    OnDownloadProgressResponse(int i, long l, long l1)
    {
        zzFG = i;
        zzUR = l;
        zzUS = l1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzar.zza(this, parcel, i);
    }

    public long zzkO()
    {
        return zzUR;
    }

    public long zzkP()
    {
        return zzUS;
    }

}
