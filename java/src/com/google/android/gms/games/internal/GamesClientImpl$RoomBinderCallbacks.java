// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.zze;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.multiplayer.realtime.RealTimeMessage;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzafd extends AbstractGamesCallbacks
{

    private final zze zzafb;
    private final zze zzafc;
    private final zze zzafd;

    public void onLeftRoom(int i, String s)
    {
        zzafb.zza(new it>(i, s));
    }

    public void onP2PConnected(String s)
    {
        if (zzafc != null)
        {
            zzafc.zza(new (s));
        }
    }

    public void onP2PDisconnected(String s)
    {
        if (zzafc != null)
        {
            zzafc.zza(new ier(s));
        }
    }

    public void onRealTimeMessageReceived(RealTimeMessage realtimemessage)
    {
        if (zzafd != null)
        {
            zzafd.zza(new ier(realtimemessage));
        }
    }

    public void zzA(DataHolder dataholder)
    {
        if (zzafc != null)
        {
            zzafc.zza(new Notifier(dataholder));
        }
    }

    public void zza(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new ifier(dataholder, as));
        }
    }

    public void zzb(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new er(dataholder, as));
        }
    }

    public void zzc(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new (dataholder, as));
        }
    }

    public void zzd(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new (dataholder, as));
        }
    }

    public void zze(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new r(dataholder, as));
        }
    }

    public void zzf(DataHolder dataholder, String as[])
    {
        if (zzafc != null)
        {
            zzafc.zza(new fier(dataholder, as));
        }
    }

    public void zzu(DataHolder dataholder)
    {
        zzafb.zza(new <init>(dataholder));
    }

    public void zzv(DataHolder dataholder)
    {
        zzafb.zza(new init>(dataholder));
    }

    public void zzw(DataHolder dataholder)
    {
        if (zzafc != null)
        {
            zzafc.zza(new er(dataholder));
        }
    }

    public void zzx(DataHolder dataholder)
    {
        if (zzafc != null)
        {
            zzafc.zza(new fier(dataholder));
        }
    }

    public void zzy(DataHolder dataholder)
    {
        zzafb.zza(new r(dataholder));
    }

    public void zzz(DataHolder dataholder)
    {
        if (zzafc != null)
        {
            zzafc.zza(new ier(dataholder));
        }
    }

    public ier(zze zze1)
    {
        zzafb = (zze)com.google.android.gms.common.internal.zzx.zzb(zze1, "Callbacks must not be null");
        zzafc = null;
        zzafd = null;
    }

    public zzafd(zze zze1, zze zze2, zze zze3)
    {
        zzafb = (zze)com.google.android.gms.common.internal.zzx.zzb(zze1, "Callbacks must not be null");
        zzafc = zze2;
        zzafd = zze3;
    }
}
