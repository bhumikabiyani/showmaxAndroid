// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.events;

import android.os.RemoteException;
import com.google.android.gms.drive.internal.OnEventResponse;
import com.google.android.gms.drive.internal.zzw;

// Referenced classes of package com.google.android.gms.drive.events:
//            DriveEventService

final class zzTb extends com.google.android.gms.drive.internal.Tb
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
        oneventresponse = zza(zzTb.zzSY, oneventresponse);
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

    (DriveEventService driveeventservice)
    {
        zzTb = driveeventservice;
        super();
    }
}
