// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.GamesStatusCodes;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzGK
    implements com.google.android.gms.games.sultImpl
{

    private final Bundle zzGK;
    private final Status zzHb;

    public Status getStatus()
    {
        return zzHb;
    }

    (int i, Bundle bundle)
    {
        zzHb = GamesStatusCodes.zzep(i);
        zzGK = bundle;
    }
}
