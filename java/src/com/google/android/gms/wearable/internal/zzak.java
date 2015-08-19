// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.MessageApi;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzbd

public final class zzak
    implements MessageApi
{
    private static final class zza extends zzg
    {

        private IntentFilter zzaGb[];
        private com.google.android.gms.wearable.MessageApi.MessageListener zzaGv;

        public Result createFailedResult(Status status)
        {
            return zzb(status);
        }

        protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
            throws RemoteException
        {
            zza((zzbd)zza1);
        }

        protected void zza(zzbd zzbd1)
            throws RemoteException
        {
            zzbd1.zza(this, zzaGv, zzaGb);
            zzaGv = null;
            zzaGb = null;
        }

        public Status zzb(Status status)
        {
            zzaGv = null;
            zzaGb = null;
            return status;
        }

        private zza(GoogleApiClient googleapiclient, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, IntentFilter aintentfilter[])
        {
            super(googleapiclient);
            zzaGv = messagelistener;
            zzaGb = aintentfilter;
        }

    }

    public static class zzb
        implements com.google.android.gms.wearable.MessageApi.SendMessageResult
    {

        private final Status zzHb;
        private final int zzRV;

        public int getRequestId()
        {
            return zzRV;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzb(Status status, int i)
        {
            zzHb = status;
            zzRV = i;
        }
    }


    public zzak()
    {
    }

    private PendingResult zza(GoogleApiClient googleapiclient, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, IntentFilter aintentfilter[])
    {
        return googleapiclient.zza(new zza(googleapiclient, messagelistener, aintentfilter));
    }

    public PendingResult addListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener)
    {
        return zza(googleapiclient, messagelistener, null);
    }

    public PendingResult removeListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener)
    {
        return googleapiclient.zza(new zzg(googleapiclient, messagelistener) {

            final zzak zzaGt;
            final com.google.android.gms.wearable.MessageApi.MessageListener zzaGu;

            public Result createFailedResult(Status status)
            {
                return zzb(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzaGu);
            }

            public Status zzb(Status status)
            {
                return status;
            }

            
            {
                zzaGt = zzak.this;
                zzaGu = messagelistener;
                super(googleapiclient);
            }
        });
    }

    public PendingResult sendMessage(GoogleApiClient googleapiclient, String s, String s1, byte abyte0[])
    {
        return googleapiclient.zza(new zzg(googleapiclient, s, s1, abyte0) {

            final byte zzGV[];
            final String zzaGr;
            final String zzaGs;
            final zzak zzaGt;

            protected Result createFailedResult(Status status)
            {
                return zzaT(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzaGr, zzaGs, zzGV);
            }

            protected com.google.android.gms.wearable.MessageApi.SendMessageResult zzaT(Status status)
            {
                return new zzb(status, -1);
            }

            
            {
                zzaGt = zzak.this;
                zzaGr = s;
                zzaGs = s1;
                zzGV = abyte0;
                super(googleapiclient);
            }
        });
    }
}
