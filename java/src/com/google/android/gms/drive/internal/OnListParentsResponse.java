// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.zzk;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzax

public class OnListParentsResponse extends zzk
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzax();
    final int zzFG;
    final DataHolder zzUZ;

    OnListParentsResponse(int i, DataHolder dataholder)
    {
        zzFG = i;
        zzUZ = dataholder;
    }

    public int describeContents()
    {
        return 0;
    }

    protected void zzI(Parcel parcel, int i)
    {
        zzax.zza(this, parcel, i);
    }

    public DataHolder zzkT()
    {
        return zzUZ;
    }

}
