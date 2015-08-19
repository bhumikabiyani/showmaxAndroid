// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.Looper;
import com.google.android.gms.drive.internal.zzw;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.drive.events:
//            DriveEventService

class zzTa extends Thread
{

    final CountDownLatch zzTa;
    final DriveEventService zzTb;

    public void run()
    {
        Looper.prepare();
        zzTb.zzSY = new a(zzTb);
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

    a(DriveEventService driveeventservice, CountDownLatch countdownlatch)
    {
        zzTb = driveeventservice;
        zzTa = countdownlatch;
        super();
    }
}
