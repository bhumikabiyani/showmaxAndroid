// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaec
    implements com.google.android.gms.games.multiplayer.turnbased.
{

    private final Status zzHb;
    private final String zzaec;

    public String getMatchId()
    {
        return zzaec;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    elMatchResult(Status status, String s)
    {
        zzHb = status;
        zzaec = s;
    }
}
