// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzi, zzl, zzg

public final class zzf
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzi();
    String label;
    String type;
    private final int zzFG;
    zzl zzaDG;
    zzg zzaFf;

    zzf()
    {
        zzFG = 1;
    }

    zzf(int i, String s, zzg zzg, String s1, zzl zzl)
    {
        zzFG = i;
        label = s;
        zzaFf = zzg;
        type = s1;
        zzaDG = zzl;
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
        zzi.zza(this, parcel, i);
    }

}
