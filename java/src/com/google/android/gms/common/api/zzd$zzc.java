// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;

// Referenced classes of package com.google.android.gms.common.api:
//            zzd

private final class zzNb extends Handler
{

    final zzd zzNb;

    public void handleMessage(Message message)
    {
        switch (message.what)
        {
        default:
            Log.w("GoogleApiClientImpl", (new StringBuilder()).append("Unknown message id: ").append(message.what).toString());
            return;

        case 1: // '\001'
            zzd.zzl(zzNb);
            return;

        case 2: // '\002'
            zzd.zzk(zzNb);
            break;
        }
    }

    (zzd zzd1, Looper looper)
    {
        zzNb = zzd1;
        super(looper);
    }
}
