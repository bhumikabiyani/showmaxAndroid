// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataApi;
import com.google.android.gms.wearable.DataItem;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.DataItemBuffer;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzg, zzbd

public final class zzi
    implements DataApi
{
    private static final class zza extends zzg
    {

        private com.google.android.gms.wearable.DataApi.DataListener zzaGa;
        private IntentFilter zzaGb[];

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
            zzbd1.zza(this, zzaGa, zzaGb);
            zzaGa = null;
            zzaGb = null;
        }

        public Status zzb(Status status)
        {
            zzaGa = null;
            zzaGb = null;
            return status;
        }

        private zza(GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataApi.DataListener datalistener, IntentFilter aintentfilter[])
        {
            super(googleapiclient);
            zzaGa = datalistener;
            zzaGb = aintentfilter;
        }

    }

    public static class zzb
        implements com.google.android.gms.wearable.DataApi.DataItemResult
    {

        private final Status zzHb;
        private final DataItem zzaGc;

        public DataItem getDataItem()
        {
            return zzaGc;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzb(Status status, DataItem dataitem)
        {
            zzHb = status;
            zzaGc = dataitem;
        }
    }

    public static class zzc
        implements com.google.android.gms.wearable.DataApi.DeleteDataItemsResult
    {

        private final Status zzHb;
        private final int zzaGd;

        public int getNumDeleted()
        {
            return zzaGd;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public zzc(Status status, int i)
        {
            zzHb = status;
            zzaGd = i;
        }
    }

    public static class zzd
        implements com.google.android.gms.wearable.DataApi.GetFdForAssetResult
    {

        private volatile boolean mClosed;
        private final Status zzHb;
        private volatile ParcelFileDescriptor zzaGe;
        private volatile InputStream zzaGf;

        public ParcelFileDescriptor getFd()
        {
            if (mClosed)
            {
                throw new IllegalStateException("Cannot access the file descriptor after release().");
            } else
            {
                return zzaGe;
            }
        }

        public InputStream getInputStream()
        {
            if (mClosed)
            {
                throw new IllegalStateException("Cannot access the input stream after release().");
            }
            if (zzaGe == null)
            {
                return null;
            }
            if (zzaGf == null)
            {
                zzaGf = new android.os.ParcelFileDescriptor.AutoCloseInputStream(zzaGe);
            }
            return zzaGf;
        }

        public Status getStatus()
        {
            return zzHb;
        }

        public void release()
        {
            if (zzaGe == null)
            {
                return;
            }
            if (mClosed)
            {
                throw new IllegalStateException("releasing an already released result.");
            }
            if (zzaGf == null)
            {
                break MISSING_BLOCK_LABEL_55;
            }
            zzaGf.close();
_L1:
            mClosed = true;
            zzaGe = null;
            zzaGf = null;
            return;
            try
            {
                zzaGe.close();
            }
            catch (IOException ioexception)
            {
                return;
            }
              goto _L1
        }

        public zzd(Status status, ParcelFileDescriptor parcelfiledescriptor)
        {
            mClosed = false;
            zzHb = status;
            zzaGe = parcelfiledescriptor;
        }
    }


    public zzi()
    {
    }

    private PendingResult zza(GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataApi.DataListener datalistener, IntentFilter aintentfilter[])
    {
        return googleapiclient.zza(new zza(googleapiclient, datalistener, aintentfilter));
    }

    private void zza(Asset asset)
    {
        if (asset == null)
        {
            throw new IllegalArgumentException("asset is null");
        }
        if (asset.getDigest() == null)
        {
            throw new IllegalArgumentException("invalid asset");
        }
        if (asset.getData() != null)
        {
            throw new IllegalArgumentException("invalid asset");
        } else
        {
            return;
        }
    }

    public PendingResult addListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataApi.DataListener datalistener)
    {
        return zza(googleapiclient, datalistener, null);
    }

    public PendingResult deleteDataItems(GoogleApiClient googleapiclient, Uri uri)
    {
        return googleapiclient.zza(new zzg(googleapiclient, uri) {

            final zzi zzaFW;
            final Uri zzatx;

            protected Result createFailedResult(Status status)
            {
                return zzaR(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zzc(this, zzatx);
            }

            protected com.google.android.gms.wearable.DataApi.DeleteDataItemsResult zzaR(Status status)
            {
                return new zzc(status, 0);
            }

            
            {
                zzaFW = zzi.this;
                zzatx = uri;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getDataItem(GoogleApiClient googleapiclient, Uri uri)
    {
        return googleapiclient.zza(new zzg(googleapiclient, uri) {

            final zzi zzaFW;
            final Uri zzatx;

            protected Result createFailedResult(Status status)
            {
                return zzaP(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzatx);
            }

            protected com.google.android.gms.wearable.DataApi.DataItemResult zzaP(Status status)
            {
                return new zzb(status, null);
            }

            
            {
                zzaFW = zzi.this;
                zzatx = uri;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getDataItems(GoogleApiClient googleapiclient)
    {
        return googleapiclient.zza(new zzg(googleapiclient) {

            final zzi zzaFW;

            protected Result createFailedResult(Status status)
            {
                return zzaQ(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zzm(this);
            }

            protected DataItemBuffer zzaQ(Status status)
            {
                return new DataItemBuffer(DataHolder.zzay(status.getStatusCode()));
            }

            
            {
                zzaFW = zzi.this;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getDataItems(GoogleApiClient googleapiclient, Uri uri)
    {
        return googleapiclient.zza(new zzg(googleapiclient, uri) {

            final zzi zzaFW;
            final Uri zzatx;

            protected Result createFailedResult(Status status)
            {
                return zzaQ(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zzb(this, zzatx);
            }

            protected DataItemBuffer zzaQ(Status status)
            {
                return new DataItemBuffer(DataHolder.zzay(status.getStatusCode()));
            }

            
            {
                zzaFW = zzi.this;
                zzatx = uri;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getFdForAsset(GoogleApiClient googleapiclient, Asset asset)
    {
        zza(asset);
        return googleapiclient.zza(new zzg(googleapiclient, asset) {

            final zzi zzaFW;
            final Asset zzaFX;

            protected Result createFailedResult(Status status)
            {
                return zzaS(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzaFX);
            }

            protected com.google.android.gms.wearable.DataApi.GetFdForAssetResult zzaS(Status status)
            {
                return new zzd(status, null);
            }

            
            {
                zzaFW = zzi.this;
                zzaFX = asset;
                super(googleapiclient);
            }
        });
    }

    public PendingResult getFdForAsset(GoogleApiClient googleapiclient, DataItemAsset dataitemasset)
    {
        return googleapiclient.zza(new zzg(googleapiclient, dataitemasset) {

            final zzi zzaFW;
            final DataItemAsset zzaFY;

            protected Result createFailedResult(Status status)
            {
                return zzaS(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzaFY);
            }

            protected com.google.android.gms.wearable.DataApi.GetFdForAssetResult zzaS(Status status)
            {
                return new zzd(status, null);
            }

            
            {
                zzaFW = zzi.this;
                zzaFY = dataitemasset;
                super(googleapiclient);
            }
        });
    }

    public PendingResult putDataItem(GoogleApiClient googleapiclient, PutDataRequest putdatarequest)
    {
        return googleapiclient.zza(new zzg(googleapiclient, putdatarequest) {

            final PutDataRequest zzaFV;
            final zzi zzaFW;

            public Result createFailedResult(Status status)
            {
                return zzaP(status);
            }

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzbd)zza1);
            }

            protected void zza(zzbd zzbd1)
                throws RemoteException
            {
                zzbd1.zza(this, zzaFV);
            }

            public com.google.android.gms.wearable.DataApi.DataItemResult zzaP(Status status)
            {
                return new zzb(status, null);
            }

            
            {
                zzaFW = zzi.this;
                zzaFV = putdatarequest;
                super(googleapiclient);
            }
        });
    }

    public PendingResult removeListener(GoogleApiClient googleapiclient, com.google.android.gms.wearable.DataApi.DataListener datalistener)
    {
        return googleapiclient.zza(new zzg(googleapiclient, datalistener) {

            final zzi zzaFW;
            final com.google.android.gms.wearable.DataApi.DataListener zzaFZ;

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
                zzbd1.zza(this, zzaFZ);
            }

            public Status zzb(Status status)
            {
                return status;
            }

            
            {
                zzaFW = zzi.this;
                zzaFZ = datalistener;
                super(googleapiclient);
            }
        });
    }
}
