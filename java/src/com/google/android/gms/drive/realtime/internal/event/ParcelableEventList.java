// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.realtime.internal.event;

import android.os.Parcel;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

// Referenced classes of package com.google.android.gms.drive.realtime.internal.event:
//            zzd

public class ParcelableEventList
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new zzd();
    final int zzFG;
    final DataHolder zzXv;
    final boolean zzXw;
    final List zzXx;
    final List zzmv;

    ParcelableEventList(int i, List list, DataHolder dataholder, boolean flag, List list1)
    {
        zzFG = i;
        zzmv = list;
        zzXv = dataholder;
        zzXw = flag;
        zzXx = list1;
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzd.zza(this, parcel, i);
    }

}
