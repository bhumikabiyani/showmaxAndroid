// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzi

public class zzh
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzi();
    final int zzFG;
    public final long zzHf;
    public final long zzYH;
    public final DataSource zzYp;
    public final int zzaaX;
    public final long zzabb;
    public final int zzabc;

    zzh(int i, DataSource datasource, long l, long l1, long l2, int j, int k)
    {
        zzFG = i;
        zzYp = datasource;
        zzHf = l;
        zzYH = l1;
        zzabb = l2;
        zzaaX = j;
        zzabc = k;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzi.zza(this, parcel, i);
    }

}
