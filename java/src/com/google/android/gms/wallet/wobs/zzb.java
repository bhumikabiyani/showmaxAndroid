// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzc

public final class zzb
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzc();
    String label;
    String value;
    private final int zzFG;

    zzb()
    {
        zzFG = 1;
    }

    zzb(int i, String s, String s1)
    {
        zzFG = i;
        label = s;
        value = s1;
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
        zzc.zza(this, parcel, i);
    }

}
