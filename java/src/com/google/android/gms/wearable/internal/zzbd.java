// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataItemAsset;
import com.google.android.gms.wearable.PutDataRequest;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzaj, zzai

public class zzbd extends zzk
{

    private final zzaj zzaGG = new zzaj.zzb();
    private final zzaj zzaGH = new zzaj.zzc();
    private final zzaj zzaGI = new zzaj.zzd();
    private final zzaj zzaGJ = new zzaj.zze();
    private final ExecutorService zzazT = Executors.newCachedThreadPool();

    public zzbd(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, zzf zzf)
    {
        super(context, looper, 14, connectioncallbacks, onconnectionfailedlistener, zzf);
    }

    private FutureTask zza(ParcelFileDescriptor parcelfiledescriptor, byte abyte0[])
    {
        return new FutureTask(new Callable(parcelfiledescriptor, abyte0) {

            final byte zzGV[];
            final ParcelFileDescriptor zzaGK;
            final zzbd zzaGL;

            public Object call()
                throws Exception
            {
                return zzvl();
            }

            public Boolean zzvl()
            {
                android.os.ParcelFileDescriptor.AutoCloseOutputStream autocloseoutputstream;
                if (Log.isLoggable("WearableClient", 3))
                {
                    Log.d("WearableClient", (new StringBuilder()).append("processAssets: writing data to FD : ").append(zzaGK).toString());
                }
                autocloseoutputstream = new android.os.ParcelFileDescriptor.AutoCloseOutputStream(zzaGK);
                Object obj;
                autocloseoutputstream.write(zzGV);
                autocloseoutputstream.flush();
                if (Log.isLoggable("WearableClient", 3))
                {
                    Log.d("WearableClient", (new StringBuilder()).append("processAssets: wrote data: ").append(zzaGK).toString());
                }
                obj = Boolean.valueOf(true);
                IOException ioexception;
                try
                {
                    if (Log.isLoggable("WearableClient", 3))
                    {
                        Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
                    }
                    autocloseoutputstream.close();
                }
                catch (IOException ioexception1)
                {
                    return ((Boolean) (obj));
                }
                return ((Boolean) (obj));
                obj;
                Log.w("WearableClient", (new StringBuilder()).append("processAssets: writing data failed: ").append(zzaGK).toString());
                try
                {
                    if (Log.isLoggable("WearableClient", 3))
                    {
                        Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
                    }
                    autocloseoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception) { }
                return Boolean.valueOf(false);
                obj;
                try
                {
                    if (Log.isLoggable("WearableClient", 3))
                    {
                        Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(zzaGK).toString());
                    }
                    autocloseoutputstream.close();
                }
                // Misplaced declaration of an exception variable
                catch (IOException ioexception) { }
                throw obj;
            }

            
            {
                zzaGL = zzbd.this;
                zzaGK = parcelfiledescriptor;
                zzGV = abyte0;
                super();
            }
        });
    }

    public void disconnect()
    {
        zzaGG.zzb(this);
        zzaGH.zzb(this);
        zzaGI.zzb(this);
        zzaGJ.zzb(this);
        super.disconnect();
    }

    protected void zza(int i, IBinder ibinder, Bundle bundle)
    {
        if (Log.isLoggable("WearableClient", 2))
        {
            Log.d("WearableClient", (new StringBuilder()).append("onPostInitHandler: statusCode ").append(i).toString());
        }
        if (i == 0)
        {
            zzaGG.zzcS(ibinder);
            zzaGH.zzcS(ibinder);
            zzaGI.zzcS(ibinder);
            zzaGJ.zzcS(ibinder);
        }
        super.zza(i, ibinder, bundle);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, Uri uri)
        throws RemoteException
    {
        ((zzai)zzjb()).zza(new zzbc.zzd(zzb1), uri);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, Asset asset)
        throws RemoteException
    {
        ((zzai)zzjb()).zza(new zzbc.zzf(zzb1), asset);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.DataApi.DataListener datalistener)
        throws RemoteException
    {
        zzaGH.zza(this, zzb1, datalistener);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.DataApi.DataListener datalistener, IntentFilter aintentfilter[])
        throws RemoteException
    {
        zzaGH.zza(this, zzb1, datalistener, aintentfilter);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, DataItemAsset dataitemasset)
        throws RemoteException
    {
        zza(zzb1, Asset.createFromRef(dataitemasset.getId()));
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener)
        throws RemoteException
    {
        zzaGI.zza(this, zzb1, messagelistener);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, IntentFilter aintentfilter[])
        throws RemoteException
    {
        zzaGI.zza(this, zzb1, messagelistener, aintentfilter);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
        throws RemoteException, RemoteException
    {
        zzaGJ.zza(this, zzb1, nodelistener, null);
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, PutDataRequest putdatarequest)
        throws RemoteException
    {
        for (Iterator iterator = putdatarequest.getAssets().entrySet().iterator(); iterator.hasNext();)
        {
            Asset asset = (Asset)((java.util.Map.Entry)iterator.next()).getValue();
            if (asset.getData() == null && asset.getDigest() == null && asset.getFd() == null && asset.getUri() == null)
            {
                throw new IllegalArgumentException((new StringBuilder()).append("Put for ").append(putdatarequest.getUri()).append(" contains invalid asset: ").append(asset).toString());
            }
        }

        PutDataRequest putdatarequest1 = PutDataRequest.zzn(putdatarequest.getUri());
        putdatarequest1.setData(putdatarequest.getData());
        ArrayList arraylist = new ArrayList();
        for (Iterator iterator1 = putdatarequest.getAssets().entrySet().iterator(); iterator1.hasNext();)
        {
            Object obj = (java.util.Map.Entry)iterator1.next();
            Asset asset1 = (Asset)((java.util.Map.Entry) (obj)).getValue();
            if (asset1.getData() == null)
            {
                putdatarequest1.putAsset((String)((java.util.Map.Entry) (obj)).getKey(), (Asset)((java.util.Map.Entry) (obj)).getValue());
            } else
            {
                ParcelFileDescriptor aparcelfiledescriptor[];
                try
                {
                    aparcelfiledescriptor = ParcelFileDescriptor.createPipe();
                }
                // Misplaced declaration of an exception variable
                catch (com.google.android.gms.common.api.zza.zzb zzb1)
                {
                    throw new IllegalStateException((new StringBuilder()).append("Unable to create ParcelFileDescriptor for asset in request: ").append(putdatarequest).toString(), zzb1);
                }
                if (Log.isLoggable("WearableClient", 3))
                {
                    Log.d("WearableClient", (new StringBuilder()).append("processAssets: replacing data with FD in asset: ").append(asset1).append(" read:").append(aparcelfiledescriptor[0]).append(" write:").append(aparcelfiledescriptor[1]).toString());
                }
                putdatarequest1.putAsset((String)((java.util.Map.Entry) (obj)).getKey(), Asset.createFromFd(aparcelfiledescriptor[0]));
                obj = zza(aparcelfiledescriptor[1], asset1.getData());
                arraylist.add(obj);
                zzazT.submit(((Runnable) (obj)));
            }
        }

        try
        {
            ((zzai)zzjb()).zza(new zzbc.zzi(zzb1, arraylist), putdatarequest1);
            return;
        }
        // Misplaced declaration of an exception variable
        catch (com.google.android.gms.common.api.zza.zzb zzb1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Unable to putDataItem: ").append(putdatarequest).toString(), zzb1);
        }
    }

    public void zza(com.google.android.gms.common.api.zza.zzb zzb1, String s, String s1, byte abyte0[])
        throws RemoteException
    {
        ((zzai)zzjb()).zza(new zzbc.zzj(zzb1), s, s1, abyte0);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, Uri uri)
        throws RemoteException
    {
        ((zzai)zzjb()).zzb(new zzbc.zze(zzb1), uri);
    }

    public void zzb(com.google.android.gms.common.api.zza.zzb zzb1, com.google.android.gms.wearable.NodeApi.NodeListener nodelistener)
        throws RemoteException
    {
        zzaGJ.zza(this, zzb1, nodelistener);
    }

    public void zzc(com.google.android.gms.common.api.zza.zzb zzb1, Uri uri)
        throws RemoteException
    {
        ((zzai)zzjb()).zzc(new zzbc.zzb(zzb1), uri);
    }

    protected String zzcF()
    {
        return "com.google.android.gms.wearable.BIND";
    }

    protected String zzcG()
    {
        return "com.google.android.gms.wearable.internal.IWearableService";
    }

    protected zzai zzcT(IBinder ibinder)
    {
        return zzai.zza.zzcR(ibinder);
    }

    public void zzm(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((zzai)zzjb()).zzb(new zzbc.zze(zzb1));
    }

    public void zzn(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((zzai)zzjb()).zzc(new zzbc.zzg(zzb1));
    }

    public void zzo(com.google.android.gms.common.api.zza.zzb zzb1)
        throws RemoteException
    {
        ((zzai)zzjb()).zzd(new zzbc.zzc(zzb1));
    }

    protected IInterface zzp(IBinder ibinder)
    {
        return zzcT(ibinder);
    }
}
