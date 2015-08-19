// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.request.GameRequest;
import com.google.android.gms.games.request.OnRequestReceivedListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaeW
    implements com.google.android.gms.common.api.ier
{

    private final GameRequest zzaeW;

    public void zza(OnRequestReceivedListener onrequestreceivedlistener)
    {
        onrequestreceivedlistener.onRequestReceived(zzaeW);
    }

    public void zze(Object obj)
    {
        zza((OnRequestReceivedListener)obj);
    }

    public void zzhX()
    {
    }

    (GameRequest gamerequest)
    {
        zzaeW = gamerequest;
    }
}
