// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import android.os.Bundle;
import com.google.android.gms.common.data.AbstractDataBuffer;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.internal.zzm;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.internal.zze;
import com.google.android.gms.internal.zzmi;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.drive:
//            Metadata

public final class MetadataBuffer extends AbstractDataBuffer
{
    private static class zza extends Metadata
    {

        private final DataHolder zzMd;
        private final int zzNR;
        private final int zzSu;

        static int zza(zza zza1)
        {
            return zza1.zzSu;
        }

        public Object freeze()
        {
            return zzkw();
        }

        public boolean isDataValid()
        {
            return !zzMd.isClosed();
        }

        public Object zza(MetadataField metadatafield)
        {
            return metadatafield.zza(zzMd, zzSu, zzNR);
        }

        public Metadata zzkw()
        {
            MetadataBundle metadatabundle = MetadataBundle.zzkZ();
            Iterator iterator = zze.zzkY().iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    break;
                }
                MetadataField metadatafield = (MetadataField)iterator.next();
                if (metadatafield != zzmi.zzVU)
                {
                    metadatafield.zza(zzMd, metadatabundle, zzSu, zzNR);
                }
            } while (true);
            return new zzm(metadatabundle);
        }

        public zza(DataHolder dataholder, int i)
        {
            zzMd = dataholder;
            zzSu = i;
            zzNR = dataholder.zzax(i);
        }
    }


    private zza zzSt;

    public MetadataBuffer(DataHolder dataholder)
    {
        super(dataholder);
        dataholder.zziu().setClassLoader(com/google/android/gms/drive/MetadataBuffer.getClassLoader());
    }

    public Metadata get(int i)
    {
        zza zza1;
label0:
        {
            zza zza2 = zzSt;
            if (zza2 != null)
            {
                zza1 = zza2;
                if (zza.zza(zza2) == i)
                {
                    break label0;
                }
            }
            zza1 = new zza(zzMd, i);
            zzSt = zza1;
        }
        return zza1;
    }

    public volatile Object get(int i)
    {
        return get(i);
    }

    public String getNextPageToken()
    {
        return null;
    }
}
