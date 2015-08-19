// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.wearable.DataItemAsset;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzm

public class DataItemAssetParcelable
    implements SafeParcelable, DataItemAsset
{

    public static final android.os.Parcelable.Creator CREATOR = new zzm();
    private final String zzFA;
    final int zzFG;
    private final String zzqd;

    DataItemAssetParcelable(int i, String s, String s1)
    {
        zzFG = i;
        zzFA = s;
        zzqd = s1;
    }

    public DataItemAssetParcelable(DataItemAsset dataitemasset)
    {
        zzFG = 1;
        zzFA = (String)zzx.zzl(dataitemasset.getId());
        zzqd = (String)zzx.zzl(dataitemasset.getDataItemKey());
    }

    public int describeContents()
    {
        return 0;
    }

    public Object freeze()
    {
        return zzvi();
    }

    public String getDataItemKey()
    {
        return zzqd;
    }

    public String getId()
    {
        return zzFA;
    }

    public boolean isDataValid()
    {
        return true;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("DataItemAssetParcelable[");
        stringbuilder.append("@");
        stringbuilder.append(Integer.toHexString(hashCode()));
        if (zzFA == null)
        {
            stringbuilder.append(",noid");
        } else
        {
            stringbuilder.append(",");
            stringbuilder.append(zzFA);
        }
        stringbuilder.append(", key=");
        stringbuilder.append(zzqd);
        stringbuilder.append("]");
        return stringbuilder.toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        zzm.zza(this, parcel, i);
    }

    public DataItemAsset zzvi()
    {
        return this;
    }

}
