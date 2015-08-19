// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.zznu;

// Referenced classes of package com.google.android.gms.fitness.request:
//            zzan

public class zzam
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzan();
    private final String mName;
    private final int zzFG;
    private final String zzFO;
    private final String zzZN;
    private final zznu zzabG;

    zzam(int i, String s, String s1, IBinder ibinder, String s2)
    {
        zzFG = i;
        mName = s;
        zzZN = s1;
        if (ibinder == null)
        {
            s = null;
        } else
        {
            s = com.google.android.gms.internal.zznu.zza.zzaR(ibinder);
        }
        zzabG = s;
        zzFO = s2;
    }

    public zzam(String s, String s1, zznu zznu1, String s2)
    {
        zzFG = 2;
        mName = s;
        zzZN = s1;
        zzabG = zznu1;
        zzFO = s2;
    }

    private boolean zzb(zzam zzam1)
    {
        return zzw.equal(mName, zzam1.mName) && zzw.equal(zzZN, zzam1.zzZN);
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return obj == this || (obj instanceof zzam) && zzb((zzam)obj);
    }

    public String getIdentifier()
    {
        return zzZN;
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
            mName, zzZN
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("name", mName).zza("identifier", zzZN).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzan.zza(this, parcel, i);
    }

    public IBinder zzlQ()
    {
        if (zzabG == null)
        {
            return null;
        } else
        {
            return zzabG.asBinder();
        }
    }

}
