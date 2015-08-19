// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.GamesStatusCodes;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzafi extends AbstractGamesCallbacks
{

    private final com.google.android.gms.common.api.cks.zzafi zzafi;

    public void zzg(int i, String s)
    {
        com.google.android.gms.common.api.Status status = GamesStatusCodes.zzep(i);
        zzafi.zzafi(new zzafi(status, s));
    }

    public a(com.google.android.gms.common.api.cks cks)
    {
        zzafi = (com.google.android.gms.common.api.cks.zzafi)zzx.zzb(cks, "Holder must not be null");
    }
}
