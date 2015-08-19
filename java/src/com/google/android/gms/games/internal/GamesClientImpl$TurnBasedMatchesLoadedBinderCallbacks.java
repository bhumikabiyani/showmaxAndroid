// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.games.GamesStatusCodes;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzafn extends AbstractGamesCallbacks
{

    private final com.google.android.gms.common.api.cks.zzafn zzafn;

    public void zzd(int i, Bundle bundle)
    {
        bundle.setClassLoader(getClass().getClassLoader());
        com.google.android.gms.common.api.Status status = GamesStatusCodes.zzep(i);
        zzafn.zzafn(new zzafn(status, bundle));
    }

    public a(com.google.android.gms.common.api.cks cks)
    {
        zzafn = (com.google.android.gms.common.api.cks.zzafn)zzx.zzb(cks, "Holder must not be null");
    }
}
