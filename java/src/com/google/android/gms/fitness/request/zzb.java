// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzc

public class zzb
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzc();
    private final int zzFG;
    private final String zzFO;
    private final String zzaaL;
    private final BleDevice zzaaM;
    private final zznv zzaaN;

    zzb(int i, String s, BleDevice bledevice, IBinder ibinder, String s1)
    {
        zzFG = i;
        zzaaL = s;
        zzaaM = bledevice;
        if (ibinder == null)
        {
            s = null;
        } else
        {
            s = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = s;
        zzFO = s1;
    }

    public zzb(String s, BleDevice bledevice, zznv zznv1, String s1)
    {
        zzFG = 3;
        zzaaL = s;
        zzaaM = bledevice;
        zzaaN = zznv1;
        zzFO = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getDeviceAddress()
    {
        return zzaaL;
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
        return String.format("ClaimBleDeviceRequest{%s %s}", new Object[] {
            zzaaL, zzaaM
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzc.zza(this, parcel, i);
    }

    public BleDevice zzlP()
    {
        return zzaaM;
    }

    public IBinder zzlQ()
    {
        if (zzaaN == null)
        {
            return null;
        } else
        {
            return zzaaN.asBinder();
        }
    }

}
