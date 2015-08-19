// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzr, Session, DataSet

public class zzq
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzr();
    final int zzFG;
    private final Session zzYs;
    private final DataSet zzZP;

    zzq(int i, Session session, DataSet dataset)
    {
        zzFG = i;
        zzYs = session;
        zzZP = dataset;
    }

    private boolean zza(zzq zzq1)
    {
        return zzw.equal(zzYs, zzq1.zzYs) && zzw.equal(zzZP, zzq1.zzZP);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof zzq) && zza((zzq)obj);
    }

    public Session getSession()
    {
        return zzYs;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzYs, zzZP
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("session", zzYs).zza("dataSet", zzZP).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzr.zza(this, parcel, i);
    }

    public DataSet zzlH()
    {
        return zzZP;
    }

}
