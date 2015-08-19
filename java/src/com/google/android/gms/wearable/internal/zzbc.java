// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.wearable.DataItemBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.FutureTask;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            zza, zzs, zzay, zzy, 
//            zzaa, zzac, zzae, zzas, 
//            zzaw

final class zzbc
{
    static abstract class zza extends com.google.android.gms.wearable.internal.zza
    {

        private com.google.android.gms.common.api.zza.zzb zzGC;

        public void zzE(Object obj)
        {
            com.google.android.gms.common.api.zza.zzb zzb1 = zzGC;
            if (zzb1 != null)
            {
                zzb1.zzd(obj);
                zzGC = null;
            }
        }

        public zza(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            zzGC = zzb1;
        }
    }

    static final class zzb extends zza
    {

        public void zza(zzs zzs1)
        {
            zzE(new zzi.zzc(zzay.zzep(zzs1.statusCode), zzs1.zzaGh));
        }

        public zzb(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zzc extends zza
    {

        public void zza(zzy zzy1)
        {
            ArrayList arraylist = new ArrayList();
            arraylist.addAll(zzy1.zzaGk);
            zzE(new zzan.zzb(zzay.zzep(zzy1.statusCode), arraylist));
        }

        public zzc(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zzd extends zza
    {

        public void zza(zzaa zzaa1)
        {
            zzE(new zzi.zzb(zzay.zzep(zzaa1.statusCode), zzaa1.zzaGl));
        }

        public zzd(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zze extends zza
    {

        public void zzac(DataHolder dataholder)
        {
            zzE(new DataItemBuffer(dataholder));
        }

        public zze(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zzf extends zza
    {

        public void zza(zzac zzac1)
        {
            zzE(new zzi.zzd(zzay.zzep(zzac1.statusCode), zzac1.zzaGm));
        }

        public zzf(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zzg extends zza
    {

        public void zza(zzae zzae1)
        {
            zzE(new zzan.zzc(zzay.zzep(zzae1.statusCode), zzae1.zzaGn));
        }

        public zzg(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

    static final class zzh extends com.google.android.gms.wearable.internal.zza
    {

        public void zza(Status status)
        {
        }

        zzh()
        {
        }
    }

    static final class zzi extends zza
    {

        private final List zzaGF;

        public void zza(zzas zzas1)
        {
            zzE(new zzi.zzb(zzay.zzep(zzas1.statusCode), zzas1.zzaGl));
            if (zzas1.statusCode != 0)
            {
                for (zzas1 = zzaGF.iterator(); zzas1.hasNext(); ((FutureTask)zzas1.next()).cancel(true)) { }
            }
        }

        zzi(com.google.android.gms.common.api.zza.zzb zzb1, List list)
        {
            super(zzb1);
            zzaGF = list;
        }
    }

    static final class zzj extends zza
    {

        public void zza(zzaw zzaw1)
        {
            zzE(new zzak.zzb(zzay.zzep(zzaw1.statusCode), zzaw1.zzaGD));
        }

        public zzj(com.google.android.gms.common.api.zza.zzb zzb1)
        {
            super(zzb1);
        }
    }

}
