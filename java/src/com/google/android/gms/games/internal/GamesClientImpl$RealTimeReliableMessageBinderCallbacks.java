// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.zze;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzaeV extends AbstractGamesCallbacks
{

    final zze zzaeV;

    public void zzb(int i, int j, String s)
    {
        if (zzaeV != null)
        {
            zzaeV.zza(new zzaeV(i, j, s));
        }
    }

    public (zze zze1)
    {
        zzaeV = zze1;
    }
}
