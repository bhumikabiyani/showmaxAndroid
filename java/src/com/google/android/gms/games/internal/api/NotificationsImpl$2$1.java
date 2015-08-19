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
    implements com.google.android.gms.games.StatusChangeResult
{

    final Status zzGT;
    final zzGT zzagv;

    public Status getStatus()
    {
        return zzGT;
    }

    esult(esult esult, Status status)
    {
        zzagv = esult;
        zzGT = status;
        super();
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/NotificationsImpl$2

/* anonymous class */
    class NotificationsImpl._cls2 extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        final String zzagt;

        public Result createFailedResult(Status status)
        {
            return zzX(status);
        }

        public com.google.android.gms.games.Notifications.GameMuteStatusChangeResult zzX(Status status)
        {
            return new NotificationsImpl._cls2._cls1(this, status);
        }

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zzd(this, zzagt, false);
        }
    }

}
