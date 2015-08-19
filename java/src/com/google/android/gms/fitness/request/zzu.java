// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zzoj;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzv

public class zzu
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzv();
    private final int zzFG;
    private final String zzFO;
    private final zzoj zzabk;

    zzu(int i, IBinder ibinder, String s)
    {
        zzFG = i;
        zzabk = com.google.android.gms.internal.zzoj.zza.zzaU(ibinder);
        zzFO = s;
    }

    public zzu(zzoj zzoj1, String s)
    {
        zzFG = 1;
        zzabk = zzoj1;
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
        return String.format("ListClaimedBleDevicesRequest", new Object[0]);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzv.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzabk.asBinder();
    }

}
