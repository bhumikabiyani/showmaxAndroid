// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzaw

public class zzav
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaw();
    private final int zzFG;
    private final String zzFO;
    private final String zzaaL;
    private final zznv zzaaN;

    zzav(int i, String s, IBinder ibinder, String s1)
    {
        zzFG = i;
        zzaaL = s;
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

    public zzav(String s, zznv zznv1, String s1)
    {
        zzFG = 4;
        zzaaL = s;
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
        return String.format("UnclaimBleDeviceRequest{%s}", new Object[] {
            zzaaL
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaw.zza(this, parcel, i);
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
