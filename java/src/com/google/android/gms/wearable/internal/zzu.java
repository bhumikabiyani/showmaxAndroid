// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.zze;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzv

public class zzu
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzv();
    public final int statusCode;
    public final int versionCode;
    public final zze zzaGi;

    zzu(int i, int j, zze zze)
    {
        versionCode = i;
        statusCode = j;
        zzaGi = zze;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzv.zza(this, parcel, i);
    }

}
