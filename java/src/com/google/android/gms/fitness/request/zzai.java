// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.app.PendingIntent;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzaj

public class zzai
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaj();
    private final PendingIntent mPendingIntent;
    private final int zzFG;
    private final String zzFO;
    private final zznv zzaaN;

    zzai(int i, PendingIntent pendingintent, IBinder ibinder, String s)
    {
        zzFG = i;
        mPendingIntent = pendingintent;
        if (ibinder == null)
        {
            pendingintent = null;
        } else
        {
            pendingintent = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = pendingintent;
        zzFO = s;
    }

    public zzai(PendingIntent pendingintent, zznv zznv1, String s)
    {
        zzFG = 4;
        mPendingIntent = pendingintent;
        zzaaN = zznv1;
        zzFO = s;
    }

    private boolean zzb(zzai zzai1)
    {
        return zzw.equal(mPendingIntent, zzai1.mPendingIntent);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof zzai) && zzb((zzai)obj);
    }

    public String getPackageName()
    {
        return zzFO;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            mPendingIntent
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("pendingIntent", mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaj.zza(this, parcel, i);
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

}
