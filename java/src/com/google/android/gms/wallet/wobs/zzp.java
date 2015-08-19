// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zzq, zzl, zzn

public final class zzp
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzq();
    private final int zzFG;
    String zzaFl;
    zzl zzaFo;
    zzn zzaFp;
    zzn zzaFq;
    String zzwG;

    zzp()
    {
        zzFG = 1;
    }

    zzp(int i, String s, String s1, zzl zzl, zzn zzn, zzn zzn1)
    {
        zzFG = i;
        zzaFl = s;
        zzwG = s1;
        zzaFo = zzl;
        zzaFp = zzn;
        zzaFq = zzn1;
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
        zzq.zza(this, parcel, i);
    }

}
