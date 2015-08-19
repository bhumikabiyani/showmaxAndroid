// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzba

public class zzaz
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzba();
    public final int statusCode;
    public final int versionCode;
    public final long zzaGC;
    public final List zzaGE;

    zzaz(int i, int j, long l, List list)
    {
        versionCode = i;
        statusCode = j;
        zzaGC = l;
        zzaGE = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzba.zza(this, parcel, i);
    }

}
