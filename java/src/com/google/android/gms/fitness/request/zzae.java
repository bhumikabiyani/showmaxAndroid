// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.zzk;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzaf

public class zzae
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaf();
    private final PendingIntent mPendingIntent;
    private final int zzFG;
    private final String zzFO;
    private final zznv zzaaN;
    private final zzk zzabp;

    zzae(int i, IBinder ibinder, PendingIntent pendingintent, IBinder ibinder1, String s)
    {
        zzFG = i;
        if (ibinder == null)
        {
            ibinder = null;
        } else
        {
            ibinder = com.google.android.gms.fitness.data.zzk.zza.zzav(ibinder);
        }
        zzabp = ibinder;
        mPendingIntent = pendingintent;
        zzaaN = com.google.android.gms.internal.zznv.zza.zzaS(ibinder1);
        zzFO = s;
    }

    public zzae(zzk zzk1, PendingIntent pendingintent, zznv zznv1, String s)
    {
        zzFG = 3;
        zzabp = zzk1;
        mPendingIntent = pendingintent;
        zzaaN = zznv1;
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
        return String.format("SensorUnregistrationRequest{%s}", new Object[] {
            zzabp
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaf.zza(this, parcel, i);
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

    public PendingIntent zzmb()
    {
        return mPendingIntent;
    }

    IBinder zzmg()
    {
        if (zzabp == null)
        {
            return null;
        } else
        {
            return zzabp.asBinder();
        }
    }

}
