// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.zzw;

// Referenced classes of package com.google.android.gms.drive.events:
//            DriveEventService

final class zzTb extends Handler
{

    final DriveEventService zzTb;

    static Message zza(zzTb zztb)
    {
        return zztb.zzkC();
    }

    static Message zza(zzkC zzkc, OnEventResponse oneventresponse)
    {
        return zzkc.zzb(oneventresponse);
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

    (DriveEventService driveeventservice)
    {
        zzTb = driveeventservice;
        super();
    }
}
