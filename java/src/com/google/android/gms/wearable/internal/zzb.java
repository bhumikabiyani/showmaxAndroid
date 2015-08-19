// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzc, zzbe, zzah

public class zzb
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzc();
    final int zzFG;
    public final zzah zzaFN;
    public final IntentFilter zzaFO[];

    zzb(int i, IBinder ibinder, IntentFilter aintentfilter[])
    {
        zzFG = i;
        if (ibinder != null)
        {
            zzaFN = zzah.zza.zzcQ(ibinder);
        } else
        {
            zzaFN = null;
        }
        zzaFO = aintentfilter;
    }

    public zzb(zzbe zzbe1)
    {
        zzFG = 1;
        zzaFN = zzbe1;
        zzaFO = zzbe1.zzvm();
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzc.zza(this, parcel, i);
    }

    IBinder zzva()
    {
        if (zzaFN == null)
        {
            return null;
        } else
        {
            return zzaFN.asBinder();
        }
    }

}
