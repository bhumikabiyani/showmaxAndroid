// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.multiplayer.turnbased.LoadMatchesResponse;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class >
    implements com.google.android.gms.games.multiplayer.turnbased.
{

    private final Status zzHb;
    private final LoadMatchesResponse zzaev;

    public LoadMatchesResponse getMatches()
    {
        return zzaev;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public void release()
    {
        zzaev.release();
    }

    MatchesResult(Status status, Bundle bundle)
    {
        zzHb = status;
        zzaev = new LoadMatchesResponse(bundle);
    }
}
