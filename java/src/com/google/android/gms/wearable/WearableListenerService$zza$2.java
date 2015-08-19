// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import com.google.android.gms.wearable.internal.zzal;

// Referenced classes of package com.google.android.gms.wearable:
//            WearableListenerService

class zzaFL
    implements Runnable
{

    final zzaFL zzaFK;
    final zzal zzaFL;

    public void run()
    {
        zzaFK.aFI.onMessageReceived(zzaFL);
    }

    ( , zzal zzal)
    {
        zzaFK = ;
        zzaFL = zzal;
        super();
    }
}
