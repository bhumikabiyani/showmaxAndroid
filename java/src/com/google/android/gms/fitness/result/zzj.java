// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzk

public class zzj
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzk();
    private final int zzFG;
    private final DataHolder zzMd;

    zzj(int i, DataHolder dataholder)
    {
        zzFG = i;
        zzMd = dataholder;
    }

    public int describeContents()
    {
        return 0;
    }

    public Status getStatus()
    {
        return new Status(zzMd.getStatusCode());
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzk.zza(this, parcel, i);
    }

    DataHolder zzms()
    {
        return zzMd;
    }

}
