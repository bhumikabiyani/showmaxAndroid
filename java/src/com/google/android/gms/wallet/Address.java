// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wallet:
//            zza

public final class Address
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zza();
    String name;
    private final int zzFG;
    String zzaCP;
    String zzaCQ;
    String zzalB;
    String zzalD;
    boolean zzalE;
    String zzalF;
    String zzalu;
    String zzalv;
    String zzalw;
    String zzyc;

    Address()
    {
        zzFG = 1;
    }

    Address(int i, String s, String s1, String s2, String s3, String s4, String s5, 
            String s6, String s7, String s8, boolean flag, String s9)
    {
        zzFG = i;
        name = s;
        zzalu = s1;
        zzalv = s2;
        zzalw = s3;
        zzyc = s4;
        zzaCP = s5;
        zzaCQ = s6;
        zzalB = s7;
        zzalD = s8;
        zzalE = flag;
        zzalF = s9;
    }

    public int describeContents()
    {
        return 0;
    }

    public String getAddress1()
    {
        return zzalu;
    }

    public String getAddress2()
    {
        return zzalv;
    }

    public String getAddress3()
    {
        return zzalw;
    }

    public String getCity()
    {
        return zzaCP;
    }

    public String getCompanyName()
    {
        return zzalF;
    }

    public String getCountryCode()
    {
        return zzyc;
    }

    public String getName()
    {
        return name;
    }

    public String getPhoneNumber()
    {
        return zzalD;
    }

    public String getPostalCode()
    {
        return zzalB;
    }

    public String getState()
    {
        return zzaCQ;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public boolean isPostBox()
    {
        return zzalE;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zza.zza(this, parcel, i);
    }

}
