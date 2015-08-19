// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zzf

public class PlusCommonExtras
    implements SafeParcelable
{

    public static final zzf CREATOR = new zzf();
    public static String TAG = "PlusCommonExtras";
    private final int zzFG;
    private String zzaux;
    private String zzauy;

    public PlusCommonExtras()
    {
        zzFG = 1;
        zzaux = "";
        zzauy = "";
    }

    PlusCommonExtras(int i, String s, String s1)
    {
        zzFG = i;
        zzaux = s;
        zzauy = s1;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof PlusCommonExtras)
        {
            if (zzFG == ((PlusCommonExtras) (obj = (PlusCommonExtras)obj)).zzFG && zzw.equal(zzaux, ((PlusCommonExtras) (obj)).zzaux) && zzw.equal(zzauy, ((PlusCommonExtras) (obj)).zzauy))
            {
                return true;
            }
        }
        return false;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(zzFG), zzaux, zzauy
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("versionCode", Integer.valueOf(zzFG)).zza("Gpsrc", zzaux).zza("ClientCallingPackage", zzauy).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzf.zza(this, parcel, i);
    }

    public String zzrQ()
    {
        return zzaux;
    }

    public String zzrR()
    {
        return zzauy;
    }

    public void zzu(Bundle bundle)
    {
        bundle.putByteArray("android.gms.plus.internal.PlusCommonExtras.extraPlusCommon", zzc.zza(this));
    }

}
