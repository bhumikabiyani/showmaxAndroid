// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.result;

import android.os.Parcel;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataType;

// Referenced classes of package com.google.android.gms.fitness.result:
//            zzh

public class DataTypeResult
    implements Result, SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzh();
    private final int zzFG;
    private final Status zzHb;
    private final DataType zzYo;

    DataTypeResult(int i, Status status, DataType datatype)
    {
        zzFG = i;
        zzHb = status;
        zzYo = datatype;
    }

    public DataTypeResult(Status status, DataType datatype)
    {
        zzFG = 2;
        zzHb = status;
        zzYo = datatype;
    }

    public static DataTypeResult zzD(Status status)
    {
        return new DataTypeResult(status, null);
    }

    private boolean zzb(DataTypeResult datatyperesult)
    {
        return zzHb.equals(datatyperesult.zzHb) && zzw.equal(zzYo, datatyperesult.zzYo);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof DataTypeResult) && zzb((DataTypeResult)obj);
    }

    public DataType getDataType()
    {
        return zzYo;
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
            zzHb, zzYo
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("status", zzHb).zza("dataType", zzYo).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzh.zza(this, parcel, i);
    }

}
