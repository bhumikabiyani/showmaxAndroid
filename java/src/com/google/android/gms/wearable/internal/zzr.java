// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.net.Uri;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.data.zzd;
import com.google.android.gms.wearable.DataItem;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzn, zzo

public final class zzr extends zzd
    implements DataItem
{

    private final int zzadF;

    public zzr(DataHolder dataholder, int i, int j)
    {
        super(dataholder, i);
        zzadF = j;
    }

    public Object freeze()
    {
        return zzvj();
    }

    public Map getAssets()
    {
        HashMap hashmap = new HashMap(zzadF);
        int i = 0;
        while (i < zzadF) 
        {
            zzn zzn1 = new zzn(zzMd, zzNQ + i);
            if (zzn1.getDataItemKey() != null)
            {
                hashmap.put(zzn1.getDataItemKey(), zzn1);
            }
            i++;
        }
        return hashmap;
    }

    public byte[] getData()
    {
        return getByteArray("data");
    }

    public Uri getUri()
    {
        return Uri.parse(getString("path"));
    }

    public DataItem setData(byte abyte0[])
    {
        throw new UnsupportedOperationException();
    }

    public DataItem zzvj()
    {
        return new zzo(this);
    }
}
