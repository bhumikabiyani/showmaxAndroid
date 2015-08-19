// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet:
//            zzp

public final class ProxyCard
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzp();
    private final int zzFG;
    String zzaEi;
    String zzaEj;
    int zzaEk;
    int zzaEl;

    ProxyCard(int i, String s, String s1, int j, int k)
    {
        zzFG = i;
        zzaEi = s;
        zzaEj = s1;
        zzaEk = j;
        zzaEl = k;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getCvn()
    {
        return zzaEj;
    }

    public int getExpirationMonth()
    {
        return zzaEk;
    }

    public int getExpirationYear()
    {
        return zzaEl;
    }

    public String getPan()
    {
        return zzaEi;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzp.zza(this, parcel, i);
    }

}
