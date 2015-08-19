// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.internal.zzal;
import com.google.android.gms.wearable.internal.zzao;
import com.google.android.gms.wearable.internal.zze;

// Referenced classes of package com.google.android.gms.wearable:
//            DataEventBuffer, MessageEvent, Node

public abstract class WearableListenerService extends Service
    implements DataApi.DataListener, MessageApi.MessageListener, NodeApi.NodeListener
{
    private class zza extends com.google.android.gms.wearable.internal.zzah.zza
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
            com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(this, zzal) {

                final zza zzaFK;
                final zzal zzaFL;

                public void run()
                {
                    zzaFK.zzaFI.onMessageReceived(zzaFL);
                }

            
            {
                zzaFK = zza1;
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
            com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(this, zzao) {

                final zza zzaFK;
                final zzao zzaFM;

                public void run()
                {
                    zzaFK.zzaFI.onPeerConnected(zzaFM);
                }

            
            {
                zzaFK = zza1;
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

        public void zza(zze zze1)
        {
            if (Log.isLoggable("WearableLS", 3))
            {
                Log.d("WearableLS", (new StringBuilder()).append("onNotificationReceived: ").append(zze1).toString());
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
            com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(this, dataholder) {

                final DataHolder zzaFJ;
                final zza zzaFK;

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
                zzaFK = zza1;
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
            com.google.android.gms.wearable.WearableListenerService.zze(zzaFI).post(new Runnable(this, zzao) {

                final zza zzaFK;
                final zzao zzaFM;

                public void run()
                {
                    zzaFK.zzaFI.onPeerDisconnected(zzaFM);
                }

            
            {
                zzaFK = zza1;
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

        private zza()
        {
            zzaFI = WearableListenerService.this;
            super();
        }

    }


    public static final String BIND_LISTENER_INTENT_ACTION = "com.google.android.gms.wearable.BIND_LISTENER";
    private String zzFO;
    private volatile int zzPm;
    private IBinder zzPp;
    private Handler zzaFF;
    private Object zzaFG;
    private boolean zzaFH;

    public WearableListenerService()
    {
        zzPm = -1;
        zzaFG = new Object();
    }

    static String zza(WearableListenerService wearablelistenerservice)
    {
        return wearablelistenerservice.zzFO;
    }

    static void zzb(WearableListenerService wearablelistenerservice)
        throws SecurityException
    {
        wearablelistenerservice.zzuZ();
    }

    static Object zzc(WearableListenerService wearablelistenerservice)
    {
        return wearablelistenerservice.zzaFG;
    }

    static boolean zzd(WearableListenerService wearablelistenerservice)
    {
        return wearablelistenerservice.zzaFH;
    }

    static Handler zze(WearableListenerService wearablelistenerservice)
    {
        return wearablelistenerservice.zzaFF;
    }

    private void zzuZ()
        throws SecurityException
    {
        int i = Binder.getCallingUid();
        if (i == zzPm)
        {
            return;
        }
        if (GooglePlayServicesUtil.zzd(this, i))
        {
            zzPm = i;
            return;
        } else
        {
            throw new SecurityException("Caller is not GooglePlayServices");
        }
    }

    public final IBinder onBind(Intent intent)
    {
        if ("com.google.android.gms.wearable.BIND_LISTENER".equals(intent.getAction()))
        {
            return zzPp;
        } else
        {
            return null;
        }
    }

    public void onCreate()
    {
        super.onCreate();
        if (Log.isLoggable("WearableLS", 3))
        {
            Log.d("WearableLS", (new StringBuilder()).append("onCreate: ").append(getPackageName()).toString());
        }
        zzFO = getPackageName();
        HandlerThread handlerthread = new HandlerThread("WearableListenerService");
        handlerthread.start();
        zzaFF = new Handler(handlerthread.getLooper());
        zzPp = new zza();
    }

    public void onDataChanged(DataEventBuffer dataeventbuffer)
    {
    }

    public void onDestroy()
    {
        synchronized (zzaFG)
        {
            zzaFH = true;
            zzaFF.getLooper().quit();
        }
        super.onDestroy();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onMessageReceived(MessageEvent messageevent)
    {
    }

    public void onPeerConnected(Node node)
    {
    }

    public void onPeerDisconnected(Node node)
    {
    }
}
