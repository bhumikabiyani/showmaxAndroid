// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.games.internal:
//            AbstractGamesCallbacks, GamesClientImpl

private static final class zzaeR extends AbstractGamesCallbacks
{

    private final com.google.android.gms.common.api.cks.zzaeR zzaeQ;
    private final String zzaeR;

    public void zzK(DataHolder dataholder)
    {
        zzaeQ.zzaeQ(new zzaeQ(dataholder, zzaeR));
    }

    public (com.google.android.gms.common.api.cks cks, String s)
    {
        zzaeQ = (com.google.android.gms.common.api.cks.zzaeQ)zzx.zzb(cks, "Holder must not be null");
        zzaeR = (String)zzx.zzb(s, "MilestoneId must not be null");
    }
}
