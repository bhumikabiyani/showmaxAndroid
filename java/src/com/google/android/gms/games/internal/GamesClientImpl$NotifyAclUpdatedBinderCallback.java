// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.GamesStatusCodes;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzHa extends AbstractGamesCallbacks
{

    private final com.google.android.gms.common.api.ack.zzHa zzHa;

    public void zzex(int i)
    {
        zzHa.zzHa(GamesStatusCodes.zzep(i));
    }

    (com.google.android.gms.common.api.ack ack)
    {
        zzHa = (com.google.android.gms.common.api.ack.zzHa)zzx.zzb(ack, "Holder must not be null");
    }
}
