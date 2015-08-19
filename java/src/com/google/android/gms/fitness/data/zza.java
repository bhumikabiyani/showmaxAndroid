// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.fitness.data:
//            zzb

public final class zza
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzb();
    public static final zza zzYv = new zza("com.google.android.gms", String.valueOf(0x6c42d8), null);
    private final int zzFG;
    private final String zzFO;
    private final String zzYw;
    private final String zzYx;

    zza(int i, String s, String s1, String s2)
    {
        zzFG = i;
        zzFO = (String)zzx.zzl(s);
        zzYw = "";
        zzYx = s2;
    }

    public zza(String s, String s1, String s2)
    {
        this(1, s, "", s2);
    }

    private boolean zza(zza zza1)
    {
        return zzFO.equals(zza1.zzFO) && zzw.equal(zzYw, zza1.zzYw) && zzw.equal(zzYx, zza1.zzYx);
    }

    public static zza zzbI(String s)
    {
        return zzd(s, null, null);
    }

    public static zza zzd(String s, String s1, String s2)
    {
        if ("com.google.android.gms".equals(s))
        {
            return zzYv;
        } else
        {
            return new zza(s, s1, s2);
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        return this == obj || (obj instanceof zza) && zza((zza)obj);
    }

    public String getPackageName()
    {
        return zzFO;
    }

    public String getVersion()
    {
        return zzYw;
    }

    int getVersionCode()
    {
        return zzFG;
    }

    public int hashCode()
    {
        return zzw.hashCode(new Object[] {
            zzFO, zzYw, zzYx
        });
    }

    public String toString()
    {
        return String.format("Application{%s:%s:%s}", new Object[] {
            zzFO, zzYw, zzYx
        });
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzb.zza(this, parcel, i);
    }

    public String zzlm()
    {
        return zzYx;
    }

}
