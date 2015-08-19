// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.execution.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.execution.internal:
//            zza

public class ContentTransferInfoResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zza();
    final int zzFG;
    final int zzJp;
    final long zzTc;
    final long zzTd;
    final int zzrX;

    ContentTransferInfoResponse(int i, int j, int k, long l, long l1)
    {
        zzFG = i;
        zzJp = j;
        zzrX = k;
        zzTc = l;
        zzTd = l1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zza.zza(this, parcel, i);
    }

}
