// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzns;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzab

public class zzaa
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzab();
    private final int zzFG;
    private final String zzFO;
    private final zzns zzabo;

    zzaa(int i, IBinder ibinder, String s)
    {
        zzFG = i;
        zzabo = com.google.android.gms.internal.zzns.zza.zzaP(ibinder);
        zzFO = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public String toString()
    {
        return String.format("ReadStatsRequest", new Object[0]);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzab.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzabo.asBinder();
    }

}
