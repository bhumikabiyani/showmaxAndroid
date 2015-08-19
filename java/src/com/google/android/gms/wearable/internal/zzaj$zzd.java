// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzaj, zzbe

static final class Listener extends zzaj
{

    zzbe zza(com.google.android.gms.wearable.i.MessageListener messagelistener, IntentFilter aintentfilter[])
    {
        return zzbe.zzb(messagelistener, aintentfilter);
    }

    volatile zzbe zza(Object obj, IntentFilter aintentfilter[])
    {
        return zza((com.google.android.gms.wearable.i.MessageListener)obj, aintentfilter);
    }

    Listener()
    {
    }
}
