// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.drive:
//            zzi

public class StorageStats
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzi();
    final int zzFG;
    final long zzSD;
    final long zzSE;
    final long zzSF;
    final long zzSG;
    final int zzSH;

    StorageStats(int i, long l, long l1, long l2, 
            long l3, int j)
    {
        zzFG = i;
        zzSD = l;
        zzSE = l1;
        zzSF = l2;
        zzSG = l3;
        zzSH = j;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzi.zza(this, parcel, i);
    }

}
