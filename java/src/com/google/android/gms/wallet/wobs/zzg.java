// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzh

public final class zzg
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzh();
    private final int zzFG;
    String zzaDo;
    int zzaFg;
    String zzaFh;
    double zzaFi;
    long zzaFj;
    int zzaFk;

    zzg()
    {
        zzFG = 1;
        zzaFk = -1;
        zzaFg = -1;
        zzaFi = -1D;
    }

    zzg(int i, int j, String s, double d, String s1, long l, int k)
    {
        zzFG = i;
        zzaFg = j;
        zzaFh = s;
        zzaFi = d;
        zzaDo = s1;
        zzaFj = l;
        zzaFk = k;
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
        zzh.zza(this, parcel, i);
    }

}
