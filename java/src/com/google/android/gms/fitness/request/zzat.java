// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzau

public class zzat
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzau();
    private final int zzFG;
    private final String zzFO;
    private final zznv zzaaN;
    private final Subscription zzabJ;
    private final boolean zzabK;

    zzat(int i, Subscription subscription, boolean flag, IBinder ibinder, String s)
    {
        zzFG = i;
        zzabJ = subscription;
        zzabK = flag;
        if (ibinder == null)
        {
            subscription = null;
        } else
        {
            subscription = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = subscription;
        zzFO = s;
    }

    public zzat(Subscription subscription, boolean flag, zznv zznv1, String s)
    {
        zzFG = 2;
        zzabJ = subscription;
        zzabK = flag;
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
        return zzw.zzk(this).zza("subscription", zzabJ).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzau.zza(this, parcel, i);
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

    public Subscription zzml()
    {
        return zzabJ;
    }

    public boolean zzmm()
    {
        return zzabK;
    }

}
