// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.wearable.DataItemAsset;

public class zzl
    implements DataItemAsset
{

    private final String zzFA;
    private final String zzqd;

    public zzl(DataItemAsset dataitemasset)
    {
        zzFA = dataitemasset.getId();
        zzqd = dataitemasset.getDataItemKey();
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
        stringbuilder.append("DataItemAssetEntity[");
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

    public DataItemAsset zzvi()
    {
        return this;
    }
}
