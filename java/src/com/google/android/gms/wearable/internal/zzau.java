// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzav, zzah

public class zzau
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzav();
    final int zzFG;
    public final zzah zzaFN;

    zzau(int i, IBinder ibinder)
    {
        zzFG = i;
        if (ibinder != null)
        {
            zzaFN = zzah.zza.zzcQ(ibinder);
            return;
        } else
        {
            zzaFN = null;
            return;
        }
    }

    public zzau(zzah zzah1)
    {
        zzFG = 1;
        zzaFN = zzah1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzav.zza(this, parcel, i);
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
