// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzo

public class zzn
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzo();
    private final int zzFG;
    private final Status zzHb;
    private final long zzLk;

    zzn(int i, Status status, long l)
    {
        zzFG = i;
        zzHb = status;
        zzLk = l;
    }

    private boolean zzb(zzn zzn1)
    {
        return zzHb.equals(zzn1.zzHb) && zzw.equal(Long.valueOf(zzLk), Long.valueOf(zzn1.zzLk));
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof zzn) && zzb((zzn)obj);
    }

    public Status getStatus()
    {
        return zzHb;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzHb, Long.valueOf(zzLk)
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("timestamp", Long.valueOf(zzLk)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzo.zza(this, parcel, i);
    }

    public long zzmu()
    {
        return zzLk;
    }

}
