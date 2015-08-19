// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.internal.zznv;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzay

public class zzax
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzay();
    private final int zzFG;
    private final String zzFO;
    private final DataType zzYo;
    private final DataSource zzYp;
    private final zznv zzaaN;

    zzax(int i, DataType datatype, DataSource datasource, IBinder ibinder, String s)
    {
        zzFG = i;
        zzYo = datatype;
        zzYp = datasource;
        if (ibinder == null)
        {
            datatype = null;
        } else
        {
            datatype = com.google.android.gms.internal.zznv.zza.zzaS(ibinder);
        }
        zzaaN = datatype;
        zzFO = s;
    }

    public zzax(DataType datatype, DataSource datasource, zznv zznv1, String s)
    {
        zzFG = 2;
        zzYo = datatype;
        zzYp = datasource;
        zzaaN = zznv1;
        zzFO = s;
    }

    private boolean zzb(zzax zzax1)
    {
        return zzw.equal(zzYp, zzax1.zzYp) && zzw.equal(zzYo, zzax1.zzYo);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof zzax) && zzb((zzax)obj);
    }

    public DataSource getDataSource()
    {
        return zzYp;
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

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYp, zzYo
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzay.zza(this, parcel, i);
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

}
