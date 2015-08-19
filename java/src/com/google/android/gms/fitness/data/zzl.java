// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.fitness.data;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.fitness.request.OnDataPointListener;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.google.android.gms.fitness.data:
//            DataPoint

public class zzl extends zzk.zza
{
    public static class zza
    {

        private static final zza zzZG = new zza();
        private final Map zzZH = new HashMap();

        public static zza zzlG()
        {
            return zzZG;
        }

        public zzl zza(OnDataPointListener ondatapointlistener)
        {
            Map map = zzZH;
            map;
            JVM INSTR monitorenter ;
            zzl zzl2 = (zzl)zzZH.get(ondatapointlistener);
            zzl zzl1;
            zzl1 = zzl2;
            if (zzl2 != null)
            {
                break MISSING_BLOCK_LABEL_51;
            }
            zzl1 = new zzl(ondatapointlistener);
            zzZH.put(ondatapointlistener, zzl1);
            map;
            JVM INSTR monitorexit ;
            return zzl1;
            ondatapointlistener;
            map;
            JVM INSTR monitorexit ;
            throw ondatapointlistener;
        }

        public zzl zzb(OnDataPointListener ondatapointlistener)
        {
            synchronized (zzZH)
            {
                ondatapointlistener = (zzl)zzZH.get(ondatapointlistener);
            }
            return ondatapointlistener;
            ondatapointlistener;
            map;
            JVM INSTR monitorexit ;
            throw ondatapointlistener;
        }

        public zzl zzc(OnDataPointListener ondatapointlistener)
        {
            Map map = zzZH;
            map;
            JVM INSTR monitorenter ;
            zzl zzl1 = (zzl)zzZH.remove(ondatapointlistener);
            if (zzl1 == null)
            {
                break MISSING_BLOCK_LABEL_29;
            }
            map;
            JVM INSTR monitorexit ;
            return zzl1;
            ondatapointlistener = new zzl(ondatapointlistener);
            map;
            JVM INSTR monitorexit ;
            return ondatapointlistener;
            ondatapointlistener;
            map;
            JVM INSTR monitorexit ;
            throw ondatapointlistener;
        }


        private zza()
        {
        }
    }


    private final OnDataPointListener zzZF;

    private zzl(OnDataPointListener ondatapointlistener)
    {
        zzZF = (OnDataPointListener)zzx.zzl(ondatapointlistener);
    }


    public void zzc(DataPoint datapoint)
        throws RemoteException
    {
        zzZF.onDataPoint(datapoint);
    }
}
