// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import android.os.Bundle;
import com.google.android.gms.common.api.Status;
import java.util.List;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeD
    implements com.google.android.gms.games.sultImpl
{

    private final Status zzHb;
    private final List zzaeC;
    private final Bundle zzaeD;

    public Status getStatus()
    {
        return zzHb;
    }

    (Status status, Bundle bundle)
    {
        zzHb = status;
        zzaeC = bundle.getStringArrayList("game_category_list");
        zzaeD = bundle;
    }
}
