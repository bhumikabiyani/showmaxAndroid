// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zzbc, zzas, zzay

static final class zzaGF extends zzaGF
{

    private final List zzaGF;

    public void zza(zzas zzas1)
    {
        zzE(new init>(zzay.zzep(zzas1.statusCode), zzas1.zzaGl));
        if (zzas1.statusCode != 0)
        {
            for (zzas1 = zzaGF.iterator(); zzas1.hasNext(); ((FutureTask)zzas1.next()).cancel(true)) { }
        }
    }

    (com.google.android.gms.common.api.bc.zzi zzi1, List list)
    {
        super(zzi1);
        zzaGF = list;
    }
}
