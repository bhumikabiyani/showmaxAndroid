// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;


// Referenced classes of package com.google.android.gms.common.api:
//            Batch, Status, BatchResult

class zzMa
    implements esult.BatchCallback
{

    final Batch zzMa;

    public void zzl(Status status)
    {
label0:
        {
            synchronized (Batch.zza(zzMa))
            {
                if (!zzMa.isCanceled())
                {
                    break label0;
                }
            }
            return;
        }
        if (!status.isCanceled()) goto _L2; else goto _L1
_L1:
        Batch.zza(zzMa, true);
_L8:
        Batch.zzb(zzMa);
        if (Batch.zzc(zzMa) != 0) goto _L4; else goto _L3
_L3:
        if (!Batch.zzd(zzMa)) goto _L6; else goto _L5
_L5:
        Batch.zze(zzMa);
_L4:
        obj;
        JVM INSTR monitorexit ;
        return;
        status;
        obj;
        JVM INSTR monitorexit ;
        throw status;
_L2:
        if (status.isSuccess()) goto _L8; else goto _L7
_L7:
        Batch.zzb(zzMa, true);
          goto _L8
_L6:
        if (!Batch.zzf(zzMa))
        {
            break MISSING_BLOCK_LABEL_146;
        }
        status = new Status(13);
_L9:
        zzMa.setResult(new BatchResult(status, Batch.zzg(zzMa)));
          goto _L4
        status = Status.zzNo;
          goto _L9
    }

    ult(Batch batch)
    {
        zzMa = batch;
        super();
    }
}
