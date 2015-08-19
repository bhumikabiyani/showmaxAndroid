// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.zzk;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzaw

public class OnListEntriesResponse extends zzk
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzaw();
    final int zzFG;
    final boolean zzTB;
    final DataHolder zzUY;

    OnListEntriesResponse(int i, DataHolder dataholder, boolean flag)
    {
        zzFG = i;
        zzUY = dataholder;
        zzTB = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    protected void zzI(Parcel parcel, int i)
    {
        zzaw.zza(this, parcel, i);
    }

    public DataHolder zzkR()
    {
        return zzUY;
    }

    public boolean zzkS()
    {
        return zzTB;
    }

}
