// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.content.IntentFilter;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzbe, zzbd, zzai, zzau, 
//            zzb

abstract class zzaj
{
    private static class zza extends zzbc.zza
    {

        private WeakReference zzaGp;
        private WeakReference zzaGq;

        public void zza(Status status)
        {
            Map map;
            Object obj;
            map = (Map)zzaGp.get();
            obj = zzaGq.get();
            if (status.getStatus().isSuccess() || map == null || obj == null) goto _L2; else goto _L1
_L1:
            map;
            JVM INSTR monitorenter ;
            obj = (zzbe)map.remove(obj);
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_58;
            }
            ((zzbe) (obj)).clear();
            map;
            JVM INSTR monitorexit ;
_L2:
            zzE(status);
            return;
            status;
            map;
            JVM INSTR monitorexit ;
            throw status;
        }

        zza(Map map, Object obj, com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
            zzaGp = new WeakReference(map);
            zzaGq = new WeakReference(obj);
        }
    }

    static final class zzb extends zzaj
    {

        zzbe zza(com.google.android.gms.wearable.zza.zza zza1, IntentFilter aintentfilter[])
        {
            return zzbe.zza(zza1);
        }

        volatile zzbe zza(Object obj, IntentFilter aintentfilter[])
        {
            return zza((com.google.android.gms.wearable.zza.zza)obj, aintentfilter);
        }

        zzb()
        {
        }
    }

    static final class zzc extends zzaj
    {

        zzbe zza(com.google.android.gms.wearable.DataApi.DataListener datalistener, IntentFilter aintentfilter[])
        {
            return zzbe.zzb(datalistener, aintentfilter);
        }

        volatile zzbe zza(Object obj, IntentFilter aintentfilter[])
        {
            return zza((com.google.android.gms.wearable.DataApi.DataListener)obj, aintentfilter);
        }

        zzc()
        {
        }
    }

    static final class zzd extends zzaj
    {

        zzbe zza(com.google.android.gms.wearable.MessageApi.MessageListener messagelistener, IntentFilter aintentfilter[])
        {
            return zzbe.zzb(messagelistener, aintentfilter);
        }

        volatile zzbe zza(Object obj, IntentFilter aintentfilter[])
        {
            return zza((com.google.android.gms.wearable.MessageApi.MessageListener)obj, aintentfilter);
        }

        zzd()
        {
        }
    }

    static final class zze extends zzaj
    {

        zzbe zza(com.google.android.gms.wearable.NodeApi.NodeListener nodelistener, IntentFilter aintentfilter[])
        {
            return zzbe.zza(nodelistener);
        }

        volatile zzbe zza(Object obj, IntentFilter aintentfilter[])
        {
            return zza((com.google.android.gms.wearable.NodeApi.NodeListener)obj, aintentfilter);
        }

        zze()
        {
        }
    }

    private static class zzf extends zzbc.zza
    {

        private WeakReference zzaGp;
        private WeakReference zzaGq;

        public void zza(Status status)
        {
            Map map;
            Object obj;
            map = (Map)zzaGp.get();
            obj = zzaGq.get();
            if (status.getStatus().getStatusCode() != 4002 || map == null || obj == null) goto _L2; else goto _L1
_L1:
            map;
            JVM INSTR monitorenter ;
            obj = (zzbe)map.remove(obj);
            if (obj == null)
            {
                break MISSING_BLOCK_LABEL_61;
            }
            ((zzbe) (obj)).clear();
            map;
            JVM INSTR monitorexit ;
_L2:
            zzE(status);
            return;
            status;
            map;
            JVM INSTR monitorexit ;
            throw status;
        }

        zzf(Map map, Object obj, com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
            zzaGp = new WeakReference(map);
            zzaGq = new WeakReference(obj);
        }
    }


    private final HashMap zzaGo = new HashMap();

    zzaj()
    {
    }

    abstract zzbe zza(Object obj, IntentFilter aintentfilter[]);

    public void zza(zzbd zzbd1, com.google.android.gms.common.api.zza.zzb zzb1, Object obj)
        throws RemoteException
    {
        HashMap hashmap = zzaGo;
        hashmap;
        JVM INSTR monitorenter ;
        zzbe zzbe1 = (zzbe)zzaGo.remove(obj);
        if (zzbe1 != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        zzb1.zzd(new Status(4002));
        hashmap;
        JVM INSTR monitorexit ;
        return;
        zzbe1.clear();
        ((zzai)zzbd1.zzjb()).zza(new zzf(zzaGo, obj, zzb1), new zzau(zzbe1));
        hashmap;
        JVM INSTR monitorexit ;
        return;
        zzbd1;
        hashmap;
        JVM INSTR monitorexit ;
        throw zzbd1;
    }

    public void zza(zzbd zzbd1, com.google.android.gms.common.api.zza.zzb zzb1, Object obj, IntentFilter aintentfilter[])
        throws RemoteException
    {
        zzbe zzbe1;
label0:
        {
            zzbe1 = zza(obj, aintentfilter);
            synchronized (zzaGo)
            {
                if (zzaGo.get(obj) == null)
                {
                    break label0;
                }
                zzb1.zzd(new Status(4001));
            }
            return;
        }
        zzaGo.put(obj, zzbe1);
        ((zzai)zzbd1.zzjb()).zza(new zza(zzaGo, obj, zzb1), new com.google.android.gms.wearable.internal.zzb(zzbe1));
        aintentfilter;
        JVM INSTR monitorexit ;
        return;
        zzbd1;
        aintentfilter;
        JVM INSTR monitorexit ;
        throw zzbd1;
        zzbd1;
        zzaGo.remove(obj);
        throw zzbd1;
    }

    public void zzb(zzbd zzbd1)
    {
        HashMap hashmap = zzaGo;
        hashmap;
        JVM INSTR monitorenter ;
        zzbc.zzh zzh;
        Iterator iterator;
        zzh = new zzbc.zzh();
        iterator = zzaGo.entrySet().iterator();
_L2:
        java.util.Map.Entry entry;
        zzbe zzbe1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_210;
            }
            entry = (java.util.Map.Entry)iterator.next();
            zzbe1 = (zzbe)entry.getValue();
        } while (zzbe1 == null);
        boolean flag;
        zzbe1.clear();
        flag = zzbd1.isConnected();
        if (!flag) goto _L2; else goto _L1
_L1:
        ((zzai)zzbd1.zzjb()).zza(zzh, new zzau(zzbe1));
        if (Log.isLoggable("WearableClient", 2))
        {
            Log.d("WearableClient", (new StringBuilder()).append("disconnect: removed: ").append(entry.getKey()).append("/").append(zzbe1).toString());
        }
          goto _L2
        RemoteException remoteexception;
        remoteexception;
        Log.w("WearableClient", (new StringBuilder()).append("disconnect: Didn't remove: ").append(entry.getKey()).append("/").append(zzbe1).toString());
          goto _L2
        zzbd1;
        hashmap;
        JVM INSTR monitorexit ;
        throw zzbd1;
        zzaGo.clear();
        hashmap;
        JVM INSTR monitorexit ;
    }

    public void zzcS(IBinder ibinder)
    {
        HashMap hashmap = zzaGo;
        hashmap;
        JVM INSTR monitorenter ;
        zzbc.zzh zzh;
        Iterator iterator;
        ibinder = zzai.zza.zzcR(ibinder);
        zzh = new zzbc.zzh();
        iterator = zzaGo.entrySet().iterator();
_L1:
        java.util.Map.Entry entry;
        zzbe zzbe1;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_188;
        }
        entry = (java.util.Map.Entry)iterator.next();
        zzbe1 = (zzbe)entry.getValue();
        ibinder.zza(zzh, new com.google.android.gms.wearable.internal.zzb(zzbe1));
        if (Log.isLoggable("WearableClient", 2))
        {
            Log.d("WearableClient", (new StringBuilder()).append("onPostInitHandler: added: ").append(entry.getKey()).append("/").append(zzbe1).toString());
        }
          goto _L1
        RemoteException remoteexception;
        remoteexception;
        Log.d("WearableClient", (new StringBuilder()).append("onPostInitHandler: Didn't add: ").append(entry.getKey()).append("/").append(zzbe1).toString());
          goto _L1
        ibinder;
        hashmap;
        JVM INSTR monitorexit ;
        throw ibinder;
        hashmap;
        JVM INSTR monitorexit ;
    }
}
