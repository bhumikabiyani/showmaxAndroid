// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.drive.internal.zzm;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.drive.metadata.internal.zze;
import com.google.android.gms.internal.zzmi;
import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.google.android.gms.drive:
//            Metadata, MetadataBuffer

private static class ax extends Metadata
{

    private final DataHolder zzMd;
    private final int zzNR;
    private final int zzSu;

    static int zza(ax ax)
    {
        return ax.zzSu;
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

    public eld(DataHolder dataholder, int i)
    {
        zzMd = dataholder;
        zzSu = i;
        zzNR = dataholder.zzax(i);
    }
}
