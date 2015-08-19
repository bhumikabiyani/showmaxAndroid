// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.wearable.zze;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzx

public class zzw
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzx();
    public final int statusCode;
    public final int versionCode;
    public final zze zzaGj[];

    zzw(int i, int j, zze azze[])
    {
        versionCode = i;
        statusCode = j;
        zzaGj = azze;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzx.zza(this, parcel, i);
    }

}
