// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.os.Handler;
import android.util.Log;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.zzal;
import com.google.android.gms.wearable.internal.zzao;
import com.google.android.gms.wearable.internal.zze;

// Referenced classes of package com.google.android.gms.wearable:
//            WearableListenerService, DataEventBuffer

private class <init> extends com.google.android.gms.wearable.internal.
{

    final WearableListenerService zzaFI;

    public void zza(zzal zzal)
    {
label0:
        {
            if (Log.isLoggable("WearableLS", 3))
            {
                Log.d("WearableLS", (new StringBuilder()).append("onMessageReceived: ").append(zzal).toString());
            }
            WearableListenerService.zzb(zzaFI);
            synchronized (WearableListenerService.zzc(zzaFI))
            {
                if (!WearableListenerService.zzd(zzaFI))
                {
                    break label0;
                }
            }
            return;
        }
        com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(zzal) {

            final WearableListenerService.zza zzaFK;
            final zzal zzaFL;

            public void run()
            {
                zzaFK.zzaFI.onMessageReceived(zzaFL);
            }

            
            {
                zzaFK = WearableListenerService.zza.this;
                zzaFL = zzal;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
        zzal;
        obj;
        JVM INSTR monitorexit ;
        throw zzal;
    }

    public void zza(zzao zzao)
    {
label0:
        {
            if (Log.isLoggable("WearableLS", 3))
            {
                Log.d("WearableLS", (new StringBuilder()).append("onPeerConnected: ").append(WearableListenerService.zza(zzaFI)).append(": ").append(zzao).toString());
            }
            WearableListenerService.zzb(zzaFI);
            synchronized (WearableListenerService.zzc(zzaFI))
            {
                if (!WearableListenerService.zzd(zzaFI))
                {
                    break label0;
                }
            }
            return;
        }
        com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(zzao) {

            final WearableListenerService.zza zzaFK;
            final zzao zzaFM;

            public void run()
            {
                zzaFK.zzaFI.onPeerConnected(zzaFM);
            }

            
            {
                zzaFK = WearableListenerService.zza.this;
                zzaFM = zzao;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
        zzao;
        obj;
        JVM INSTR monitorexit ;
        throw zzao;
    }

    public void zza(zze zze)
    {
        if (Log.isLoggable("WearableLS", 3))
        {
            Log.d("WearableLS", (new StringBuilder()).append("onNotificationReceived: ").append(zze).toString());
        }
    }

    public void zzab(DataHolder dataholder)
    {
label0:
        {
            if (Log.isLoggable("WearableLS", 3))
            {
                Log.d("WearableLS", (new StringBuilder()).append("onDataItemChanged: ").append(WearableListenerService.zza(zzaFI)).append(": ").append(dataholder).toString());
            }
            WearableListenerService.zzb(zzaFI);
            synchronized (WearableListenerService.zzc(zzaFI))
            {
                if (!WearableListenerService.zzd(zzaFI))
                {
                    break label0;
                }
                dataholder.close();
            }
            return;
        }
        com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(dataholder) {

            final DataHolder zzaFJ;
            final WearableListenerService.zza zzaFK;

            public void run()
            {
                DataEventBuffer dataeventbuffer = new DataEventBuffer(zzaFJ);
                zzaFK.zzaFI.onDataChanged(dataeventbuffer);
                dataeventbuffer.release();
                return;
                Exception exception;
                exception;
                dataeventbuffer.release();
                throw exception;
            }

            
            {
                zzaFK = WearableListenerService.zza.this;
                zzaFJ = dataholder;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
        dataholder;
        obj;
        JVM INSTR monitorexit ;
        throw dataholder;
    }

    public void zzb(zzao zzao)
    {
label0:
        {
            if (Log.isLoggable("WearableLS", 3))
            {
                Log.d("WearableLS", (new StringBuilder()).append("onPeerDisconnected: ").append(WearableListenerService.zza(zzaFI)).append(": ").append(zzao).toString());
            }
            WearableListenerService.zzb(zzaFI);
            synchronized (WearableListenerService.zzc(zzaFI))
            {
                if (!WearableListenerService.zzd(zzaFI))
                {
                    break label0;
                }
            }
            return;
        }
        com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(zzao) {

            final WearableListenerService.zza zzaFK;
            final zzao zzaFM;

            public void run()
            {
                zzaFK.zzaFI.onPeerDisconnected(zzaFM);
            }

            
            {
                zzaFK = WearableListenerService.zza.this;
                zzaFM = zzao;
                super();
            }
        });
        obj;
        JVM INSTR monitorexit ;
        return;
        zzao;
        obj;
        JVM INSTR monitorexit ;
        throw zzao;
    }

    private _cls4.zzaFM(WearableListenerService wearablelistenerservice)
    {
        zzaFI = wearablelistenerservice;
        super();
    }

    zzaFI(WearableListenerService wearablelistenerservice, zzaFI zzafi)
    {
        this(wearablelistenerservice);
    }
}
