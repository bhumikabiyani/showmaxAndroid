// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

// Referenced classes of package com.google.android.gms.wearable:
//            zzf

public class zze
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzf();
    private final String mName;
    final int zzFG;
    private final int zzJp;
    private final String zzYy;
    private final int zzaFt;
    private final boolean zzaFu;
    private boolean zzaFv;
    private String zzaFw;

    zze(int i, String s, String s1, int j, int k, boolean flag, boolean flag1, 
            String s2)
    {
        zzFG = i;
        mName = s;
        zzYy = s1;
        zzJp = j;
        zzaFt = k;
        zzaFu = flag;
        zzaFv = flag1;
        zzaFw = s2;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj instanceof zze)
        {
            if (zzw.equal(Integer.valueOf(zzFG), Integer.valueOf(((zze) (obj = (zze)obj)).zzFG)) && zzw.equal(mName, ((zze) (obj)).mName) && zzw.equal(zzYy, ((zze) (obj)).zzYy) && zzw.equal(Integer.valueOf(zzJp), Integer.valueOf(((zze) (obj)).zzJp)) && zzw.equal(Integer.valueOf(zzaFt), Integer.valueOf(((zze) (obj)).zzaFt)) && zzw.equal(Boolean.valueOf(zzaFu), Boolean.valueOf(((zze) (obj)).zzaFu)))
            {
                return true;
            }
        }
        return false;
    }

    public String getAddress()
    {
        return zzYy;
    }

    public String getName()
    {
        return mName;
    }

    public int getRole()
    {
        return zzaFt;
    }

    public int getType()
    {
        return zzJp;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            Integer.valueOf(zzFG), mName, zzYy, Integer.valueOf(zzJp), Integer.valueOf(zzaFt), Boolean.valueOf(zzaFu)
        });
    }

    public boolean isConnected()
    {
        return zzaFv;
    }

    public boolean isEnabled()
    {
        return zzaFu;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder("ConnectionConfiguration[ ");
        stringbuilder.append((new StringBuilder()).append("mName=").append(mName).toString());
        stringbuilder.append((new StringBuilder()).append(", mAddress=").append(zzYy).toString());
        stringbuilder.append((new StringBuilder()).append(", mType=").append(zzJp).toString());
        stringbuilder.append((new StringBuilder()).append(", mRole=").append(zzaFt).toString());
        stringbuilder.append((new StringBuilder()).append(", mEnabled=").append(zzaFu).toString());
        stringbuilder.append((new StringBuilder()).append(", mIsConnected=").append(zzaFv).toString());
        stringbuilder.append((new StringBuilder()).append(", mEnabled=").append(zzaFw).toString());
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzf.zza(this, parcel, i);
    }

    public String zzuX()
    {
        return zzaFw;
    }

}
