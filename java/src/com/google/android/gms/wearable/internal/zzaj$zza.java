// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import java.lang.ref.WeakReference;
import java.util.Map;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzaj, zzbe

private static class zzaGq extends zzaGq
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

    (Map map, Object obj, com.google.android.gms.common.api.aj.zza zza1)
    {
        super(zza1);
        zzaGp = new WeakReference(map);
        zzaGq = new WeakReference(obj);
    }
}
