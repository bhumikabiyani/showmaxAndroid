// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zze

public class CheckResourceIdsExistRequest
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zze();
    private final int zzFG;
    private final List zzTg;

    CheckResourceIdsExistRequest(int i, List list)
    {
        zzFG = i;
        zzTg = list;
    }

    public int describeContents()
    {
        return 0;
    }

    public int getVersionCode()
    {
        return zzFG;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zze.zza(this, parcel, i);
    }

    public List zzkE()
    {
        return zzTg;
    }

}
