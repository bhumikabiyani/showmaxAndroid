// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.common.api:
//            zze

private final class zzNl extends Handler
{

    final zze zzNl;

    public void handleMessage(Message message)
    {
        boolean flag = true;
        if (message.what != 1)
        {
            flag = false;
        }
        zzx.zzO(flag);
        zzNl.zzb((zzNl)message.obj);
    }

    public (zze zze1, Looper looper)
    {
        zzNl = zze1;
        super(looper);
    }
}
