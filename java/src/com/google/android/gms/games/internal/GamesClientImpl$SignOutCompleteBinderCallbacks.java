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

    private final com.google.android.gms.common.api.cks.zzHa zzHa;

    public void zzhb()
    {
        com.google.android.gms.common.api.Status status = GamesStatusCodes.zzep(0);
        zzHa.zzHa(status);
    }

    public (com.google.android.gms.common.api.cks cks)
    {
        zzHa = (com.google.android.gms.common.api.cks.zzHa)zzx.zzb(cks, "Holder must not be null");
    }
}
