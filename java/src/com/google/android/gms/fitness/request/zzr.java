// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zznw;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzs

public class zzr
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzs();
    private final int zzFG;
    private final String zzFO;
    private final zznw zzabj;

    zzr(int i, IBinder ibinder, String s)
    {
        zzFG = i;
        zzabj = com.google.android.gms.internal.zznw.zza.zzaT(ibinder);
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
        return String.format("GetSyncInfoRequest {%d, %s, %s}", new Object[] {
            Integer.valueOf(zzFG), zzabj, zzFO
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzs.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzabj.asBinder();
    }

}
