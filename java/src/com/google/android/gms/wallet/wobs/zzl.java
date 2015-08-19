// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzm

public final class zzl
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    private final int zzFG;
    long zzaFm;
    long zzaFn;

    zzl()
    {
        zzFG = 1;
    }

    zzl(int i, long l, long l1)
    {
        zzFG = i;
        zzaFm = l;
        zzaFn = l1;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

}
