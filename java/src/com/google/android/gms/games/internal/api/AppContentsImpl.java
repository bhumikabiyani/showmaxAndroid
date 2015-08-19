// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import android.os.RemoteException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.games.appcontent.AppContents;
import com.google.android.gms.games.internal.GamesClientImpl;

public final class AppContentsImpl
    implements AppContents
{
    private static abstract class LoadsImpl extends com.google.android.gms.games.Games.BaseGamesApiMethodImpl
    {

        public Result createFailedResult(Status status)
        {
            return zzM(status);
        }

        public com.google.android.gms.games.appcontent.AppContents.LoadAppContentResult zzM(Status status)
        {
            return new com.google.android.gms.games.appcontent.AppContents.LoadAppContentResult(this, status) {

                final Status zzGT;
                final LoadsImpl zzafK;

                public Status getStatus()
                {
                    return zzGT;
                }

                public void release()
                {
                }

            
            {
                zzafK = loadsimpl;
                zzGT = status;
                super();
            }
            };
        }
    }


    public AppContentsImpl()
    {
    }

    // Unreferenced inner class com/google/android/gms/games/internal/api/AppContentsImpl$1

/* anonymous class */
    class _cls1 extends LoadsImpl
    {

        final int zzafH;
        final String zzafI;
        final String zzafJ[];
        final boolean zzafy;

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((GamesClientImpl)zza1);
        }

        protected void zza(GamesClientImpl gamesclientimpl)
            throws RemoteException
        {
            gamesclientimpl.zza(this, zzafH, zzafI, zzafJ, zzafy);
        }
    }

}
