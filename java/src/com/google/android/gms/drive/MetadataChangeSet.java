// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmk;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

public final class MetadataChangeSet
{
    public static class Builder
    {

        private final MetadataBundle zzSw = MetadataBundle.zzkZ();
        private com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza zzSx;

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

        private com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza zzky()
        {
            if (zzSx == null)
            {
                zzSx = new com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties.zza();
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

        public Builder deleteCustomProperty(CustomPropertyKey custompropertykey)
        {
            zzx.zzb(custompropertykey, "key");
            zzky().zza(custompropertykey, null);
            return this;
        }

        public Builder setCustomProperty(CustomPropertyKey custompropertykey, String s)
        {
            zzx.zzb(custompropertykey, "key");
            zzx.zzb(s, "value");
            zzj("The total size of key string and value string of a custom property", 124, zzbw(custompropertykey.getKey()) + zzbw(s));
            zzky().zza(custompropertykey, s);
            return this;
        }

        public Builder setDescription(String s)
        {
            zzSw.zzb(zzmi.zzVv, s);
            return this;
        }

        public Builder setIndexableText(String s)
        {
            zzj("Indexable text size", 0x20000, zzbw(s));
            zzSw.zzb(zzmi.zzVA, s);
            return this;
        }

        public Builder setLastViewedByMeDate(Date date)
        {
            zzSw.zzb(zzmk.zzWf, date);
            return this;
        }

        public Builder setMimeType(String s)
        {
            zzSw.zzb(zzmi.zzVM, s);
            return this;
        }

        public Builder setPinned(boolean flag)
        {
            zzSw.zzb(zzmi.zzVF, Boolean.valueOf(flag));
            return this;
        }

        public Builder setStarred(boolean flag)
        {
            zzSw.zzb(zzmi.zzVT, Boolean.valueOf(flag));
            return this;
        }

        public Builder setTitle(String s)
        {
            zzSw.zzb(zzmi.zzVV, s);
            return this;
        }

        public Builder setViewed(boolean flag)
        {
            zzSw.zzb(zzmi.zzVL, Boolean.valueOf(flag));
            return this;
        }

        public Builder()
        {
        }
    }


    public static final int CUSTOM_PROPERTY_SIZE_LIMIT_BYTES = 124;
    public static final int INDEXABLE_TEXT_SIZE_LIMIT_BYTES = 0x20000;
    public static final int MAX_PRIVATE_PROPERTIES_PER_RESOURCE_PER_APP = 30;
    public static final int MAX_PUBLIC_PROPERTIES_PER_RESOURCE = 30;
    public static final int MAX_TOTAL_PROPERTIES_PER_RESOURCE = 100;
    public static final MetadataChangeSet zzSv = new MetadataChangeSet(MetadataBundle.zzkZ());
    private final MetadataBundle zzSw;

    public MetadataChangeSet(MetadataBundle metadatabundle)
    {
        zzSw = MetadataBundle.zza(metadatabundle);
    }

    public Map getCustomPropertyChangeMap()
    {
        AppVisibleCustomProperties appvisiblecustomproperties = (AppVisibleCustomProperties)zzSw.zza(zzmi.zzVu);
        if (appvisiblecustomproperties == null)
        {
            return Collections.emptyMap();
        } else
        {
            return appvisiblecustomproperties.zzkV();
        }
    }

    public String getDescription()
    {
        return (String)zzSw.zza(zzmi.zzVv);
    }

    public String getIndexableText()
    {
        return (String)zzSw.zza(zzmi.zzVA);
    }

    public Date getLastViewedByMeDate()
    {
        return (Date)zzSw.zza(zzmk.zzWf);
    }

    public String getMimeType()
    {
        return (String)zzSw.zza(zzmi.zzVM);
    }

    public String getTitle()
    {
        return (String)zzSw.zza(zzmi.zzVV);
    }

    public Boolean isPinned()
    {
        return (Boolean)zzSw.zza(zzmi.zzVF);
    }

    public Boolean isStarred()
    {
        return (Boolean)zzSw.zza(zzmi.zzVT);
    }

    public Boolean isViewed()
    {
        return (Boolean)zzSw.zza(zzmi.zzVL);
    }

    public MetadataBundle zzkx()
    {
        return zzSw;
    }

}
