// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzo

public class zzn
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzo();
    private final int zzFG;
    private final String zzFO;
    private final zznv zzaaN;

    zzn(int i, IBinder ibinder, String s)
    {
        zzFG = i;
        zzaaN = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
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
        return String.format("DisableFitRequest", new Object[0]);
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzo.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzaaN.asBinder();
    }

}
