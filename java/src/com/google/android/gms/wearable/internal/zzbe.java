// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataEventBuffer;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzal, zzao, zze

public class zzbe extends zzah.zza
{

    private com.google.android.gms.wearable.zza.zza zzaGM;
    private com.google.android.gms.wearable.DataApi.DataListener zzaGN;
    private com.google.android.gms.wearable.MessageApi.MessageListener zzaGO;
    private com.google.android.gms.wearable.NodeApi.NodeListener zzaGP;
    private final IntentFilter zzaGb[];

    private zzbe(com.google.android.gms.wearable.zza.zza zza1, com.google.android.gms.wearable.DataApi.DataListener datalistener, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener, IntentFilter aintentfilter[])
    {
        zzaGM = zza1;
        zzaGN = datalistener;
        zzaGO = messagelistener;
        zzaGP = nodelistener;
        zzaGb = aintentfilter;
    }

    public static zzbe zza(com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
    {
        return new zzbe(null, null, null, nodelistener, null);
    }

    public static zzbe zza(com.google.android.gms.wearable.zza.zza zza1)
    {
        return new zzbe(zza1, null, null, null, null);
    }

    public static zzbe zzb(com.google.android.gms.wearable.DataApi.DataListener datalistener, IntentFilter aintentfilter[])
    {
        return new zzbe(null, datalistener, null, null, aintentfilter);
    }

    public static zzbe zzb(com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, IntentFilter aintentfilter[])
    {
        return new zzbe(null, null, messagelistener, null, aintentfilter);
    }

    public void clear()
    {
        zzaGM = null;
        zzaGN = null;
        zzaGO = null;
        zzaGP = null;
    }

    public void zza(zzal zzal)
    {
        if (zzaGO != null)
        {
            zzaGO.onMessageReceived(zzal);
        }
    }

    public void zza(zzao zzao)
    {
        if (zzaGP != null)
        {
            zzaGP.onPeerConnected(zzao);
        }
    }

    public void zza(zze zze)
    {
        if (zzaGM != null)
        {
            zzaGM.zza(zze);
        }
    }

    public void zzab(DataHolder dataholder)
    {
        if (zzaGN == null)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        zzaGN.onDataChanged(new DataEventBuffer(dataholder));
        dataholder.close();
        return;
        Exception exception;
        exception;
        dataholder.close();
        throw exception;
        dataholder.close();
        return;
    }

    public void zzb(zzao zzao)
    {
        if (zzaGP != null)
        {
            zzaGP.onPeerDisconnected(zzao);
        }
    }

    public IntentFilter[] zzvm()
    {
        return zzaGb;
    }
}
