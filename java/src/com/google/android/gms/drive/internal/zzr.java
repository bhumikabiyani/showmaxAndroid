// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzk;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.zzc;
import com.google.android.gms.drive.events.zzd;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzag, DisconnectRequest, zzaa, AddEventListenerRequest, 
//            zzbl, RemoveEventListenerRequest, CancelPendingActionsRequest

public class zzr extends zzk
{

    private final String zzMh;
    private final Bundle zzTC;
    private final boolean zzTD;
    private DriveId zzTE;
    private DriveId zzTF;
    final com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks zzTG;
    final Map zzTH = new HashMap();

    public zzr(Context context, Looper looper, zzf zzf1, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, Bundle bundle)
    {
        super(context, looper, 11, connectioncallbacks, onconnectionfailedlistener, zzf1);
        zzMh = zzf1.zziR();
        zzTG = connectioncallbacks;
        zzTC = bundle;
        looper = new Intent("com.google.android.gms.drive.events.HANDLE_EVENT");
        looper.setPackage(context.getPackageName());
        context = context.getPackageManager().queryIntentServices(looper, 0);
        switch (context.size())
        {
        default:
            throw new IllegalStateException((new StringBuilder()).append("AndroidManifest.xml can only define one service that handles the ").append(looper.getAction()).append(" action").toString());

        case 0: // '\0'
            zzTD = false;
            return;

        case 1: // '\001'
            context = ((ResolveInfo)context.get(0)).serviceInfo;
            break;
        }
        if (!((ServiceInfo) (context)).exported)
        {
            throw new IllegalStateException((new StringBuilder()).append("Drive event service ").append(((ServiceInfo) (context)).name).append(" must be exported in AndroidManifest.xml").toString());
        } else
        {
            zzTD = true;
            return;
        }
    }

    PendingResult cancelPendingActions(GoogleApiClient googleapiclient, List list)
    {
        boolean flag1 = true;
        boolean flag;
        if (list != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        if (!list.isEmpty())
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzO(flag);
        zzx.zza(isConnected(), "Client must be connected");
        return googleapiclient.zzb(new zzq.zza(googleapiclient, list) {

            final zzr zzTL;
            final List zzTN;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new CancelPendingActionsRequest(zzTN), new zzbl(this));
            }

            
            {
                zzTL = zzr.this;
                zzTN = list;
                super(googleapiclient);
            }
        });
    }

    public void disconnect()
    {
        if (isConnected())
        {
            try
            {
                ((zzag)zzjb()).zza(new DisconnectRequest());
            }
            catch (RemoteException remoteexception) { }
        }
        super.disconnect();
        zzTH.clear();
    }

    PendingResult zza(GoogleApiClient googleapiclient, DriveId driveid, int i)
    {
        zzx.zzb(zzd.zza(i, driveid), "id");
        zzx.zza(isConnected(), "Client must be connected");
        if (!zzTD)
        {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions");
        } else
        {
            return googleapiclient.zzb(new zzq.zza(googleapiclient, driveid, i) {

                final DriveId zzTI;
                final int zzTJ;
                final zzr zzTL;

                protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                    throws RemoteException
                {
                    zza((zzr)zza1);
                }

                protected void zza(zzr zzr1)
                    throws RemoteException
                {
                    zzr1.zzkF().zza(new AddEventListenerRequest(zzTI, zzTJ), null, null, new zzbl(this));
                }

            
            {
                zzTL = zzr.this;
                zzTI = driveid;
                zzTJ = i;
                super(googleapiclient);
            }
            });
        }
    }

    PendingResult zza(GoogleApiClient googleapiclient, DriveId driveid, int i, zzc zzc)
    {
        zzx.zzb(zzd.zza(i, driveid), "id");
        zzx.zzb(zzc, "listener");
        zzx.zza(isConnected(), "Client must be connected");
        Map map = zzTH;
        map;
        JVM INSTR monitorenter ;
        Object obj = (Map)zzTH.get(driveid);
        if (obj != null)
        {
            break MISSING_BLOCK_LABEL_78;
        }
        obj = new HashMap();
        zzTH.put(driveid, obj);
        zzaa zzaa1 = (zzaa)((Map) (obj)).get(zzc);
        if (zzaa1 != null) goto _L2; else goto _L1
_L1:
        zzaa1 = new zzaa(getLooper(), getContext(), i, zzc);
        ((Map) (obj)).put(zzc, zzaa1);
        zzc = zzaa1;
_L4:
        zzc.zzbJ(i);
        googleapiclient = googleapiclient.zzb(new zzq.zza(googleapiclient, driveid, i, zzc) {

            final DriveId zzTI;
            final int zzTJ;
            final zzaa zzTK;
            final zzr zzTL;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new AddEventListenerRequest(zzTI, zzTJ), zzTK, null, new zzbl(this));
            }

            
            {
                zzTL = zzr.this;
                zzTI = driveid;
                zzTJ = i;
                zzTK = zzaa1;
                super(googleapiclient);
            }
        });
        map;
        JVM INSTR monitorexit ;
        return googleapiclient;
_L2:
        if (!zzaa1.zzbK(i))
        {
            break MISSING_BLOCK_LABEL_196;
        }
        googleapiclient = new zzp.zzj(googleapiclient, Status.zzNo);
        map;
        JVM INSTR monitorexit ;
        return googleapiclient;
        googleapiclient;
        map;
        JVM INSTR monitorexit ;
        throw googleapiclient;
        zzc = zzaa1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void zza(int i, IBinder ibinder, Bundle bundle)
    {
        if (bundle != null)
        {
            bundle.setClassLoader(getClass().getClassLoader());
            zzTE = (DriveId)bundle.getParcelable("com.google.android.gms.drive.root_id");
            zzTF = (DriveId)bundle.getParcelable("com.google.android.gms.drive.appdata_id");
        }
        super.zza(i, ibinder, bundle);
    }

    protected zzag zzab(IBinder ibinder)
    {
        return zzag.zza.zzac(ibinder);
    }

    PendingResult zzb(GoogleApiClient googleapiclient, DriveId driveid, int i)
    {
        zzx.zzb(zzd.zza(i, driveid), "id");
        zzx.zza(isConnected(), "Client must be connected");
        return googleapiclient.zzb(new zzq.zza(googleapiclient, driveid, i) {

            final DriveId zzTI;
            final int zzTJ;
            final zzr zzTL;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new RemoveEventListenerRequest(zzTI, zzTJ), null, null, new zzbl(this));
            }

            
            {
                zzTL = zzr.this;
                zzTI = driveid;
                zzTJ = i;
                super(googleapiclient);
            }
        });
    }

    PendingResult zzb(GoogleApiClient googleapiclient, DriveId driveid, int i, zzc zzc)
    {
        zzx.zzb(zzd.zza(i, driveid), "id");
        zzx.zza(isConnected(), "Client must be connected");
        zzx.zzb(zzc, "listener");
        Map map = zzTH;
        map;
        JVM INSTR monitorenter ;
        Map map1 = (Map)zzTH.get(driveid);
        if (map1 != null)
        {
            break MISSING_BLOCK_LABEL_73;
        }
        googleapiclient = new zzp.zzj(googleapiclient, Status.zzNo);
        map;
        JVM INSTR monitorexit ;
        return googleapiclient;
        zzc = (zzaa)map1.remove(zzc);
        if (zzc != null)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        googleapiclient = new zzp.zzj(googleapiclient, Status.zzNo);
        map;
        JVM INSTR monitorexit ;
        return googleapiclient;
        googleapiclient;
        map;
        JVM INSTR monitorexit ;
        throw googleapiclient;
        if (map1.isEmpty())
        {
            zzTH.remove(driveid);
        }
        googleapiclient = googleapiclient.zzb(new zzq.zza(googleapiclient, driveid, i, zzc) {

            final DriveId zzTI;
            final int zzTJ;
            final zzr zzTL;
            final zzaa zzTM;

            protected volatile void zza(com.google.android.gms.common.api.Api.zza zza1)
                throws RemoteException
            {
                zza((zzr)zza1);
            }

            protected void zza(zzr zzr1)
                throws RemoteException
            {
                zzr1.zzkF().zza(new RemoveEventListenerRequest(zzTI, zzTJ), zzTM, null, new zzbl(this));
            }

            
            {
                zzTL = zzr.this;
                zzTI = driveid;
                zzTJ = i;
                zzTM = zzaa1;
                super(googleapiclient);
            }
        });
        map;
        JVM INSTR monitorexit ;
        return googleapiclient;
    }

    protected String zzcF()
    {
        return "com.google.android.gms.drive.ApiService.START";
    }

    protected String zzcG()
    {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    public boolean zzhc()
    {
        return true;
    }

    protected Bundle zzhq()
    {
        String s = getContext().getPackageName();
        zzx.zzl(s);
        zzx.zzl(zziP());
        Bundle bundle = new Bundle();
        if (!s.equals(zzMh))
        {
            bundle.putString("proxy_package_name", zzMh);
        }
        bundle.putAll(zzTC);
        return bundle;
    }

    public zzag zzkF()
        throws DeadObjectException
    {
        return (zzag)zzjb();
    }

    public DriveId zzkG()
    {
        return zzTE;
    }

    public DriveId zzkH()
    {
        return zzTF;
    }

    public boolean zzkI()
    {
        return zzTD;
    }

    protected IInterface zzp(IBinder ibinder)
    {
        return zzab(ibinder);
    }
}
