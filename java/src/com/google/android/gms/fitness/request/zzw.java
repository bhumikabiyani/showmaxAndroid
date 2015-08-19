// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zznq;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzx

public class zzw
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzx();
    private final int zzFG;
    private final String zzFO;
    private final DataType zzYo;
    private final zznq zzabl;

    zzw(int i, DataType datatype, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYo = datatype;
        if (ibinder == null)
        {
            datatype = null;
        } else
        {
            datatype = com.google.android.gms.internal.zznq.zza.zzaN(ibinder);
        }
        zzabl = datatype;
        zzFO = s;
    }

    public zzw(DataType datatype, zznq zznq1, String s)
    {
        zzFG = 2;
        zzYo = datatype;
        zzabl = zznq1;
        zzFO = s;
    }

    public int describeContents()
    {
        return 0;
    }

    public DataType getDataType()
    {
        return zzYo;
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
        zzx.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzabl == null)
        {
            return null;
        } else
        {
            return zzabl.asBinder();
        }
    }

}
