// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.service;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.zzk;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.fitness.service:
//            zza, zzb, SensorEventDispatcher

public class FitnessSensorServiceRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zza();
    public static final int UNSPECIFIED = -1;
    private final int zzFG;
    private final DataSource zzYp;
    private final long zzabX;
    private final long zzabY;
    private final zzk zzabp;

    FitnessSensorServiceRequest(int i, DataSource datasource, IBinder ibinder, long l, long l1)
    {
        zzFG = i;
        zzYp = datasource;
        zzabp = com.google.android.gms.fitness.data.zzk.zza.zzav(ibinder);
        zzabX = l;
        zzabY = l1;
    }

    private boolean zza(FitnessSensorServiceRequest fitnesssensorservicerequest)
    {
        return zzw.equal(zzYp, fitnesssensorservicerequest.zzYp) && zzabX == fitnesssensorservicerequest.zzabX && zzabY == fitnesssensorservicerequest.zzabY;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof FitnessSensorServiceRequest) && zza((FitnessSensorServiceRequest)obj);
    }

    public long getBatchInterval(TimeUnit timeunit)
    {
        return timeunit.convert(zzabY, TimeUnit.MICROSECONDS);
    }

    public DataSource getDataSource()
    {
        return zzYp;
    }

    public SensorEventDispatcher getDispatcher()
    {
        return new zzb(zzabp);
    }

    public long getSamplingRate(TimeUnit timeunit)
    {
        if (zzabX == -1L)
        {
            return -1L;
        } else
        {
            return timeunit.convert(zzabX, TimeUnit.MICROSECONDS);
        }
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, Long.valueOf(zzabX), Long.valueOf(zzabY)
        });
    }

    public String toString()
    {
        return String.format("FitnessSensorServiceRequest{%s}", new Object[] {
            zzYp
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.fitness.service.zza.zza(this, parcel, i);
    }

    public long zzlI()
    {
        return zzabX;
    }

    IBinder zzmg()
    {
        return zzabp.asBinder();
    }

    public long zzmw()
    {
        return zzabY;
    }

}
