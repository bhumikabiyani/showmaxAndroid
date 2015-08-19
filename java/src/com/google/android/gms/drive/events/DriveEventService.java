// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.zzw;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.drive.events:
//            ChangeListener, CompletionListener, DriveEvent, ChangeEvent, 
//            CompletionEvent

public abstract class DriveEventService extends Service
    implements ChangeListener, CompletionListener
{
    final class zza extends Handler
    {

        final DriveEventService zzTb;

        static Message zza(zza zza1)
        {
            return zza1.zzkC();
        }

        static Message zza(zza zza1, OnEventResponse oneventresponse)
        {
            return zza1.zzb(oneventresponse);
        }

        private Message zzb(OnEventResponse oneventresponse)
        {
            return obtainMessage(1, oneventresponse);
        }

        private Message zzkC()
        {
            return obtainMessage(2);
        }

        public void handleMessage(Message message)
        {
            zzw.zzq("DriveEventService", (new StringBuilder()).append("handleMessage message type:").append(message.what).toString());
            switch (message.what)
            {
            default:
                zzw.zzr("DriveEventService", (new StringBuilder()).append("Unexpected message type:").append(message.what).toString());
                return;

            case 1: // '\001'
                DriveEventService.zza(zzTb, (OnEventResponse)message.obj);
                return;

            case 2: // '\002'
                getLooper().quit();
                break;
            }
        }

        zza()
        {
            zzTb = DriveEventService.this;
            super();
        }
    }

    final class zzb extends com.google.android.gms.drive.internal.zzai.zza
    {

        final DriveEventService zzTb;

        public void zzc(OnEventResponse oneventresponse)
            throws RemoteException
        {
            DriveEventService driveeventservice = zzTb;
            driveeventservice;
            JVM INSTR monitorenter ;
            zzw.zzq("DriveEventService", (new StringBuilder()).append("onEvent: ").append(oneventresponse).toString());
            DriveEventService.zza(zzTb);
            if (zzTb.zzSY == null)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            oneventresponse = zza.zza(zzTb.zzSY, oneventresponse);
            zzTb.zzSY.sendMessage(oneventresponse);
_L2:
            return;
            zzw.zzs("DriveEventService", "Receiving event before initialize is completed.");
            if (true) goto _L2; else goto _L1
_L1:
            oneventresponse;
            driveeventservice;
            JVM INSTR monitorexit ;
            throw oneventresponse;
        }

        zzb()
        {
            zzTb = DriveEventService.this;
            super();
        }
    }


    public static final String ACTION_HANDLE_EVENT = "com.google.android.gms.drive.events.HANDLE_EVENT";
    private final String mName;
    int zzPm;
    private CountDownLatch zzSX;
    zza zzSY;
    boolean zzSZ;

    protected DriveEventService()
    {
        this("DriveEventService");
    }

    protected DriveEventService(String s)
    {
        zzSZ = false;
        zzPm = -1;
        mName = s;
    }

    static void zza(DriveEventService driveeventservice)
        throws SecurityException
    {
        driveeventservice.zzkB();
    }

    static void zza(DriveEventService driveeventservice, OnEventResponse oneventresponse)
    {
        driveeventservice.zza(oneventresponse);
    }

    private void zza(OnEventResponse oneventresponse)
    {
        oneventresponse = oneventresponse.zzkQ();
        zzw.zzq("DriveEventService", (new StringBuilder()).append("handleEventMessage: ").append(oneventresponse).toString());
        oneventresponse.getType();
        JVM INSTR tableswitch 1 2: default 130
    //                   1 83
    //                   2 121;
           goto _L1 _L2 _L3
_L1:
        zzw.zzr(mName, (new StringBuilder()).append("Unhandled event: ").append(oneventresponse).toString());
        return;
_L2:
        try
        {
            onChange((ChangeEvent)oneventresponse);
            return;
        }
        catch (Exception exception)
        {
            zzw.zza(mName, exception, (new StringBuilder()).append("Error handling event: ").append(oneventresponse).toString());
        }
        return;
_L3:
        onCompletion((CompletionEvent)oneventresponse);
        return;
    }

    static CountDownLatch zzb(DriveEventService driveeventservice)
    {
        return driveeventservice.zzSX;
    }

    private void zzkB()
        throws SecurityException
    {
        int i = getCallingUid();
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

    protected int getCallingUid()
    {
        return Binder.getCallingUid();
    }

    public final IBinder onBind(Intent intent)
    {
        this;
        JVM INSTR monitorenter ;
        if (!"com.google.android.gms.drive.events.HANDLE_EVENT".equals(intent.getAction())) goto _L2; else goto _L1
_L1:
        if (zzSY != null || zzSZ)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        zzSZ = true;
        intent = new CountDownLatch(1);
        zzSX = new CountDownLatch(1);
        (new Thread(intent) {

            final CountDownLatch zzTa;
            final DriveEventService zzTb;

            public void run()
            {
                Looper.prepare();
                zzTb.zzSY = zzTb. new zza();
                zzTb.zzSZ = false;
                zzTa.countDown();
                zzw.zzq("DriveEventService", "Bound and starting loop");
                Looper.loop();
                zzw.zzq("DriveEventService", "Finished loop");
                if (DriveEventService.zzb(zzTb) != null)
                {
                    DriveEventService.zzb(zzTb).countDown();
                }
                return;
                Exception exception;
                exception;
                if (DriveEventService.zzb(zzTb) != null)
                {
                    DriveEventService.zzb(zzTb).countDown();
                }
                throw exception;
            }

            
            {
                zzTb = DriveEventService.this;
                zzTa = countdownlatch;
                super();
            }
        }).start();
        if (!intent.await(5000L, TimeUnit.MILLISECONDS))
        {
            zzw.zzs("DriveEventService", "Failed to synchronously initialize event handler.");
        }
        intent = (new zzb()).asBinder();
_L4:
        this;
        JVM INSTR monitorexit ;
        return intent;
        intent;
        throw new RuntimeException("Unable to start event handler", intent);
        intent;
        this;
        JVM INSTR monitorexit ;
        throw intent;
_L2:
        intent = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onChange(ChangeEvent changeevent)
    {
        zzw.zzr(mName, (new StringBuilder()).append("Unhandled change event: ").append(changeevent).toString());
    }

    public void onCompletion(CompletionEvent completionevent)
    {
        zzw.zzr(mName, (new StringBuilder()).append("Unhandled completion event: ").append(completionevent).toString());
    }

    public void onDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        zzw.zzq("DriveEventService", "onDestroy");
        if (zzSY == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        Message message = zza.zza(zzSY);
        zzSY.sendMessage(message);
        zzSY = null;
        Exception exception;
        try
        {
            if (!zzSX.await(5000L, TimeUnit.MILLISECONDS))
            {
                zzw.zzr("DriveEventService", "Failed to synchronously quit event handler. Will quit itself");
            }
        }
        catch (InterruptedException interruptedexception) { }
        zzSX = null;
        super.onDestroy();
        this;
        JVM INSTR monitorexit ;
        return;
        exception;
        throw exception;
    }

    public boolean onUnbind(Intent intent)
    {
        return true;
    }
}
