// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.GamesStatusCodes;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaef
    implements com.google.android.gms.games.snapshot.zzaef
{

    private final Status zzHb;
    private final String zzaef;

    public String getSnapshotId()
    {
        return zzaef;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    (int i, String s)
    {
        zzHb = GamesStatusCodes.zzep(i);
        zzaef = s;
    }
}
