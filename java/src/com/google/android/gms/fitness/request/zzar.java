// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzas, zzt, BleScanCallback

public class zzar
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzas();
    private final int zzFG;
    private final String zzFO;
    private final zznv zzaaN;
    private final zzt zzabH;

    zzar(int i, IBinder ibinder, IBinder ibinder1, String s)
    {
        zzFG = i;
        zzabH = zzt.zza.zzaV(ibinder);
        if (ibinder1 == null)
        {
            ibinder = null;
        } else
        {
            ibinder = com.google.android.gms.internal.zznv.zza.zzaS(ibinder1);
        }
        zzaaN = ibinder;
        zzFO = s;
    }

    public zzar(BleScanCallback blescancallback, zznv zznv1, String s)
    {
        this(((zzt) (zza.zza.zzlO().zzb(blescancallback))), zznv1, s);
    }

    public zzar(zzt zzt1, zznv zznv1, String s)
    {
        zzFG = 2;
        zzabH = zzt1;
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

    public void writeToParcel(Parcel parcel, int i)
    {
        zzas.zza(this, parcel, i);
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

    public IBinder zzmk()
    {
        return zzabH.asBinder();
    }

}
