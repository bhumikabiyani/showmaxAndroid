// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import java.util.Arrays;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zzi, PlusCommonExtras

public class zzh
    implements SafeParcelable
{

    public static final zzi CREATOR = new zzi();
    private final int zzFG;
    private final String zzHg;
    private final String zzauA[];
    private final String zzauB[];
    private final String zzauC[];
    private final String zzauD;
    private final String zzauE;
    private final String zzauF;
    private final String zzauG;
    private final PlusCommonExtras zzauH;

    zzh(int i, String s, String as[], String as1[], String as2[], String s1, String s2, 
            String s3, String s4, PlusCommonExtras pluscommonextras)
    {
        zzFG = i;
        zzHg = s;
        zzauA = as;
        zzauB = as1;
        zzauC = as2;
        zzauD = s1;
        zzauE = s2;
        zzauF = s3;
        zzauG = s4;
        zzauH = pluscommonextras;
    }

    public zzh(String s, String as[], String as1[], String as2[], String s1, String s2, String s3, 
            PlusCommonExtras pluscommonextras)
    {
        zzFG = 1;
        zzHg = s;
        zzauA = as;
        zzauB = as1;
        zzauC = as2;
        zzauD = s1;
        zzauE = s2;
        zzauF = s3;
        zzauG = null;
        zzauH = pluscommonextras;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof zzh)
        {
            if (zzFG == ((zzh) (obj = (zzh)obj)).zzFG && zzw.equal(zzHg, ((zzh) (obj)).zzHg) && Arrays.equals(zzauA, ((zzh) (obj)).zzauA) && Arrays.equals(zzauB, ((zzh) (obj)).zzauB) && Arrays.equals(zzauC, ((zzh) (obj)).zzauC) && zzw.equal(zzauD, ((zzh) (obj)).zzauD) && zzw.equal(zzauE, ((zzh) (obj)).zzauE) && zzw.equal(zzauF, ((zzh) (obj)).zzauF) && zzw.equal(zzauG, ((zzh) (obj)).zzauG) && zzw.equal(zzauH, ((zzh) (obj)).zzauH))
            {
                return true;
            }
        }
        return false;
    }

    public String getAccountName()
    {
        return zzHg;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(zzFG), zzHg, zzauA, zzauB, zzauC, zzauD, zzauE, zzauF, zzauG, zzauH
        });
    }

    public String toString()
    {
        return zzw.zzk(this).zza("versionCode", Integer.valueOf(zzFG)).zza("accountName", zzHg).zza("requestedScopes", zzauA).zza("visibleActivities", zzauB).zza("requiredFeatures", zzauC).zza("packageNameForAuth", zzauD).zza("callingPackageName", zzauE).zza("applicationName", zzauF).zza("extra", zzauH.toString()).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzi.zza(this, parcel, i);
    }

    public String[] zzrS()
    {
        return zzauA;
    }

    public String[] zzrT()
    {
        return zzauB;
    }

    public String[] zzrU()
    {
        return zzauC;
    }

    public String zzrV()
    {
        return zzauD;
    }

    public String zzrW()
    {
        return zzauE;
    }

    public String zzrX()
    {
        return zzauF;
    }

    public String zzrY()
    {
        return zzauG;
    }

    public PlusCommonExtras zzrZ()
    {
        return zzauH;
    }

    public Bundle zzsa()
    {
        Bundle bundle = new Bundle();
        bundle.setClassLoader(com/google/android/gms/plus/internal/PlusCommonExtras.getClassLoader());
        zzauH.zzu(bundle);
        return bundle;
    }

}
