// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zzni;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzm

public class zzl
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    private final String mName;
    private final int zzFG;
    private final String zzFO;
    private final zzni zzabi;

    zzl(int i, String s, IBinder ibinder, String s1)
    {
        zzFG = i;
        mName = s;
        if (ibinder == null)
        {
            s = null;
        } else
        {
            s = com.google.android.gms.internal.zzni.zza.zzaF(ibinder);
        }
        zzabi = s;
        zzFO = s1;
    }

    public zzl(String s, zzni zzni1, String s1)
    {
        zzFG = 2;
        mName = s;
        zzabi = zzni1;
        zzFO = s1;
    }

    private boolean zzb(zzl zzl1)
    {
        return zzw.equal(mName, zzl1.mName);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof zzl) && zzb((zzl)obj);
    }

    public String getName()
    {
        return mName;
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
            mName
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("name", mName).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        return zzabi.asBinder();
    }

}
