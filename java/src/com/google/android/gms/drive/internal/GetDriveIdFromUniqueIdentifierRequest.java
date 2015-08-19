// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzae

public class GetDriveIdFromUniqueIdentifierRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzae();
    final int zzFG;
    final boolean zzUA;
    final String zzUz;

    GetDriveIdFromUniqueIdentifierRequest(int i, String s, boolean flag)
    {
        zzFG = i;
        zzUz = s;
        zzUA = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzae.zza(this, parcel, i);
    }

}
