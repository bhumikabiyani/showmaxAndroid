// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.ChangeSequenceNumber;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzao

public class OnChangesResponse
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzao();
    final int zzFG;
    final DataHolder zzUL;
    final List zzUM;
    final ChangeSequenceNumber zzUN;
    final boolean zzUO;

    OnChangesResponse(int i, DataHolder dataholder, List list, ChangeSequenceNumber changesequencenumber, boolean flag)
    {
        zzFG = i;
        zzUL = dataholder;
        zzUM = list;
        zzUN = changesequencenumber;
        zzUO = flag;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzao.zza(this, parcel, i | 1);
    }

}
