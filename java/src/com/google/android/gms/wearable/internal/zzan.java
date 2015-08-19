// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wearable.Node;
import com.google.android.gms.wearable.NodeApi;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzbd

public final class zzan
    implements NodeApi
{
    private static final class zza extends zzg
    {

        private com.google.android.gms.wearable.NodeApi.NodeListener zzaGz;

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
            zzbd1.zza(this, zzaGz);
            zzaGz = null;
        }

        public Status zzb(Status status)
        {
            zzaGz = null;
            return status;
        }

        private zza(GoogleApiClient googleapiclient, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
        {
            super(googleapiclient);
            zzaGz = nodelistener;
        }

    }

    public static class zzb
        implements com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult
    {

        private final Status zzHb;
        private final List zzaGA;

        public List getNodes()
        {
            return zzaGA;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzb(Status status, List list)
        {
            zzHb = status;
            zzaGA = list;
        }
    }

    public static class zzc
        implements com.google.android.gms.wearable.NodeApi.GetLocalNodeResult
    {

        private final Status zzHb;
        private final Node zzaGB;

        public Node getNode()
        {
            return zzaGB;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzc(Status status, Node node)
        {
            zzHb = status;
            zzaGB = node;
        }
    }


    public zzan()
    {
    }

    public PendingResult addListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
    {
        return googleapiclient.zza(new zza(googleapiclient, nodelistener));
    }

    public PendingResult getConnectedNodes(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new zzg(googleapiclient) {

            final zzan zzaGx;

            protected Result createFailedResult(Status status)
            {
                return zzaV(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zzo(this);
            }

            protected com.google.android.gms.wearable.NodeApi.GetConnectedNodesResult zzaV(Status status)
            {
                return new zzb(status, new ArrayList());
            }

            
            {
                zzaGx = zzan.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getLocalNode(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new zzg(googleapiclient) {

            final zzan zzaGx;

            protected Result createFailedResult(Status status)
            {
                return zzaU(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zzn(this);
            }

            protected com.google.android.gms.wearable.NodeApi.GetLocalNodeResult zzaU(Status status)
            {
                return new zzc(status, null);
            }

            
            {
                zzaGx = zzan.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult removeListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
    {
        return googleapiclient.zza(new zzg(googleapiclient, nodelistener) {

            final zzan zzaGx;
            final com.google.android.gms.wearable.NodeApi.NodeListener zzaGy;

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
                zzbd1.zzb(this, zzaGy);
            }

            public Status zzb(Status status)
            {
                return status;
            }

            
            {
                zzaGx = zzan.this;
                zzaGy = nodelistener;
                super(googleapiclient);
            }
        });
    }
}
