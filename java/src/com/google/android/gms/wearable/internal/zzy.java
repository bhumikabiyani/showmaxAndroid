// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzz

public class zzy
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzz();
    public final int statusCode;
    public final int versionCode;
    public final List zzaGk;

    zzy(int i, int j, List list)
    {
        versionCode = i;
        statusCode = j;
        zzaGk = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzz.zza(this, parcel, i);
    }

}
