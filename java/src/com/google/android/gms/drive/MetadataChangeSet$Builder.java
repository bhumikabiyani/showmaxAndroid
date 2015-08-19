// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmk;
import java.util.Date;

// Referenced classes of package com.google.android.gms.drive:
//            MetadataChangeSet

public static class 
{

    private final MetadataBundle zzSw = MetadataBundle.zzkZ();
    private com.google.android.gms.drive.metadata.internal..zza zzSx;

    private int zzbw(String s)
    {
        if (s == null)
        {
            return 0;
        } else
        {
            return s.getBytes().length;
        }
    }

    private String zzi(String s, int i, int j)
    {
        return String.format("%s must be no more than %d bytes, but is %d bytes.", new Object[] {
            s, Integer.valueOf(i), Integer.valueOf(j)
        });
    }

    private void zzj(String s, int i, int j)
    {
        boolean flag;
        if (j <= i)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, zzi(s, i, j));
    }

    private com.google.android.gms.drive.metadata.internal..zza zzky()
    {
        if (zzSx == null)
        {
            zzSx = new com.google.android.gms.drive.metadata.internal..zza();
        }
        return zzSx;
    }

    public MetadataChangeSet build()
    {
        if (zzSx != null)
        {
            zzSw.zzb(zzmi.zzVu, zzSx.zzkW());
        }
        return new MetadataChangeSet(zzSw);
    }

    public  deleteCustomProperty(CustomPropertyKey custompropertykey)
    {
        zzx.zzb(custompropertykey, "key");
        zzky().zza(custompropertykey, null);
        return this;
    }

    public  setCustomProperty(CustomPropertyKey custompropertykey, String s)
    {
        zzx.zzb(custompropertykey, "key");
        zzx.zzb(s, "value");
        zzj("The total size of key string and value string of a custom property", 124, zzbw(custompropertykey.getKey()) + zzbw(s));
        zzky().zza(custompropertykey, s);
        return this;
    }

    public  setDescription(String s)
    {
        zzSw.zzb(zzmi.zzVv, s);
        return this;
    }

    public Bundle.zzb setIndexableText(String s)
    {
        zzj("Indexable text size", 0x20000, zzbw(s));
        zzSw.zzb(zzmi.zzVA, s);
        return this;
    }

    public Bundle.zzb setLastViewedByMeDate(Date date)
    {
        zzSw.zzb(zzmk.zzWf, date);
        return this;
    }

    public Bundle.zzb setMimeType(String s)
    {
        zzSw.zzb(zzmi.zzVM, s);
        return this;
    }

    public Bundle.zzb setPinned(boolean flag)
    {
        zzSw.zzb(zzmi.zzVF, Boolean.valueOf(flag));
        return this;
    }

    public Bundle.zzb setStarred(boolean flag)
    {
        zzSw.zzb(zzmi.zzVT, Boolean.valueOf(flag));
        return this;
    }

    public Bundle.zzb setTitle(String s)
    {
        zzSw.zzb(zzmi.zzVV, s);
        return this;
    }

    public Bundle.zzb setViewed(boolean flag)
    {
        zzSw.zzb(zzmi.zzVL, Boolean.valueOf(flag));
        return this;
    }

    public ()
    {
    }
}
