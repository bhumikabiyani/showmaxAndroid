// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.internal.GamesClientImpl;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            NotificationsImpl

class zzGT
    implements com.google.android.gms.games.StatusLoadResult
{

    final Status zzGT;
    final zzGT zzagw;

    public Status getStatus()
    {
        return zzGT;
    }

    ult(ult ult, Status status)
    {
        zzagw = ult;
        zzGT = status;
        super();
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/NotificationsImpl$3

/* anonymous class */
    class NotificationsImpl._cls3 extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        final String zzagt;

        public Result createFailedResult(Status status)
        {
            return zzY(status);
        }

        public com.google.android.gms.games.Notifications.GameMuteStatusLoadResult zzY(Status status)
        {
            return new NotificationsImpl._cls3._cls1(this, status);
        }

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzp(this, zzagt);
        }
    }

}
