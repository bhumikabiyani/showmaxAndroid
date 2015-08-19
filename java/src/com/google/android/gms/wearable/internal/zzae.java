// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzaf, zzao

public class zzae
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaf();
    public final int statusCode;
    public final int versionCode;
    public final zzao zzaGn;

    zzae(int i, int j, zzao zzao)
    {
        versionCode = i;
        statusCode = j;
        zzaGn = zzao;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzaf.zza(this, parcel, i);
    }

}
