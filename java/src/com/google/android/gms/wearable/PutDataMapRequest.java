// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.net.Uri;
import android.util.Log;
import com.google.android.gms.internal.zzwm;
import com.google.android.gms.internal.zzwy;
import java.util.List;

// Referenced classes of package com.google.android.gms.wearable:
//            DataMap, PutDataRequest, DataMapItem, Asset

public class PutDataMapRequest
{

    private final DataMap zzaFy = new DataMap();
    private final PutDataRequest zzaFz;

    private PutDataMapRequest(PutDataRequest putdatarequest, DataMap datamap)
    {
        zzaFz = putdatarequest;
        if (datamap != null)
        {
            zzaFy.putAll(datamap);
        }
    }

    public static PutDataMapRequest create(String s)
    {
        return new PutDataMapRequest(PutDataRequest.create(s), null);
    }

    public static PutDataMapRequest createFromDataMapItem(DataMapItem datamapitem)
    {
        return new PutDataMapRequest(PutDataRequest.zzn(datamapitem.getUri()), datamapitem.getDataMap());
    }

    public static PutDataMapRequest createWithAutoAppendedId(String s)
    {
        return new PutDataMapRequest(PutDataRequest.createWithAutoAppendedId(s), null);
    }

    public PutDataRequest asPutDataRequest()
    {
        com.google.android.gms.internal.zzwm.zza zza = zzwm.zza(zzaFy);
        zzaFz.setData(zzwy.zzf(zza.zzaGQ));
        int j = zza.zzaGR.size();
        for (int i = 0; i < j; i++)
        {
            String s = Integer.toString(i);
            Asset asset = (Asset)zza.zzaGR.get(i);
            if (s == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("asset key cannot be null: ").append(asset).toString());
            }
            if (asset == null)
            {
                throw new IllegalStateException((new StringBuilder()).append("asset cannot be null: key=").append(s).toString());
            }
            if (Log.isLoggable("DataMap", 3))
            {
                Log.d("DataMap", (new StringBuilder()).append("asPutDataRequest: adding asset: ").append(s).append(" ").append(asset).toString());
            }
            zzaFz.putAsset(s, asset);
        }

        return zzaFz;
    }

    public DataMap getDataMap()
    {
        return zzaFy;
    }

    public Uri getUri()
    {
        return zzaFz.getUri();
    }
}
