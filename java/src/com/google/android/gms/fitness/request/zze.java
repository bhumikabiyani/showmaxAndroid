// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzf

public class zze
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzf();
    private final int zzFG;
    private final String zzFO;
    private final DataSet zzZP;
    private final zznv zzaaN;
    private final boolean zzaaS;

    zze(int i, DataSet dataset, IBinder ibinder, String s, boolean flag)
    {
        zzFG = i;
        zzZP = dataset;
        if (ibinder == null)
        {
            dataset = null;
        } else
        {
            dataset = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = dataset;
        zzFO = s;
        zzaaS = flag;
    }

    public zze(DataSet dataset, zznv zznv1, String s, boolean flag)
    {
        zzFG = 3;
        zzZP = dataset;
        zzaaN = zznv1;
        zzFO = s;
        zzaaS = flag;
    }

    private boolean zzb(zze zze1)
    {
        return zzw.equal(zzZP, zze1.zzZP);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof zze) && zzb((zze)obj);
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
            zzZP
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("dataSet", zzZP).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzf.zza(this, parcel, i);
    }

    public DataSet zzlH()
    {
        return zzZP;
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

    public boolean zzlU()
    {
        return zzaaS;
    }

}
