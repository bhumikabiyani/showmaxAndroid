// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataSource;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzd

public class zzc
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    final int zzFG;
    public final long zzHf;
    public final DataSource zzYp;
    public final boolean zzabP;
    public final long zzabQ;
    public final long zzabR;

    zzc(int i, DataSource datasource, long l, boolean flag, long l1, 
            long l2)
    {
        zzFG = i;
        zzYp = datasource;
        zzHf = l;
        zzabP = flag;
        zzabQ = l1;
        zzabR = l2;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
    }

}
