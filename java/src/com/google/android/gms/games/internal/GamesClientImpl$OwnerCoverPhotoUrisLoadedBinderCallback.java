// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzHa extends AbstractGamesCallbacks
{

    private final com.google.android.gms.common.api.nit> zzHa;

    public void zzf(int i, Bundle bundle)
    {
        bundle.setClassLoader(getClass().getClassLoader());
        zzHa.zzHa(new (i, bundle));
    }

    (com.google.android.gms.common.api.ack ack)
    {
        zzHa = (com.google.android.gms.common.api.ack.zzHa)zzx.zzb(ack, "Holder must not be null");
    }
}
