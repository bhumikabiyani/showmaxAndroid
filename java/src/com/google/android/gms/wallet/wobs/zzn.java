// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzo

public final class zzn
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzo();
    String description;
    private final int zzFG;
    String zzatp;

    zzn()
    {
        zzFG = 1;
    }

    zzn(int i, String s, String s1)
    {
        zzFG = i;
        zzatp = s;
        description = s1;
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
        zzo.zza(this, parcel, i);
    }

}
