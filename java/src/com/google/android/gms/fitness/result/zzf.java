// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzg

public class zzf
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzg();
    private final int zzFG;
    private final Status zzHb;
    private final List zzabS;

    zzf(int i, Status status, List list)
    {
        zzFG = i;
        zzHb = status;
        zzabS = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzg.zza(this, parcel, i);
    }

    List zzmr()
    {
        return zzabS;
    }

}
