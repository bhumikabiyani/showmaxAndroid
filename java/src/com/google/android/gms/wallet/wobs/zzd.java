// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzls;
import java.util.ArrayList;

// Referenced classes of package com.google.android.gms.wallet.wobs:
//            zze

public final class zzd
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zze();
    private final int zzFG;
    String zzaFc;
    String zzaFd;
    ArrayList zzaFe;

    zzd()
    {
        zzFG = 1;
        zzaFe = zzls.zzkb();
    }

    zzd(int i, String s, String s1, ArrayList arraylist)
    {
        zzFG = i;
        zzaFc = s;
        zzaFd = s1;
        zzaFe = arraylist;
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
        zze.zza(this, parcel, i);
    }

}
