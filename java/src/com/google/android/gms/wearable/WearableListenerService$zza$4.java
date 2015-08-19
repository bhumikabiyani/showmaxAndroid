// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzao;

// Referenced classes of package com.google.android.gms.wearable:
//            WearableListenerService

class zzaFM
    implements Runnable
{

    final zzaFM zzaFK;
    final zzao zzaFM;

    public void run()
    {
        zzaFK.aFI.onPeerDisconnected(zzaFM);
    }

    ( , zzao zzao)
    {
        zzaFK = ;
        zzaFM = zzao;
        super();
    }
}
