// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.games.multiplayer.Invitation;
import com.google.android.gms.games.multiplayer.OnInvitationReceivedListener;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaej
    implements com.google.android.gms.common.api.ier
{

    private final Invitation zzaej;

    public void zza(OnInvitationReceivedListener oninvitationreceivedlistener)
    {
        oninvitationreceivedlistener.onInvitationReceived(zzaej);
    }

    public void zze(Object obj)
    {
        zza((OnInvitationReceivedListener)obj);
    }

    public void zzhX()
    {
    }

    (Invitation invitation)
    {
        zzaej = invitation;
    }
}
