// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive;

import com.google.android.gms.common.data.Freezable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.AppVisibleCustomProperties;
import com.google.android.gms.internal.zzmi;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzmm;
import java.util.Collections;
import java.util.Date;
import java.util.Map;

// Referenced classes of package com.google.android.gms.drive:
//            DriveId

public abstract class Metadata
    implements Freezable
{

    public static final int CONTENT_AVAILABLE_LOCALLY = 1;
    public static final int CONTENT_NOT_AVAILABLE_LOCALLY = 0;

    public Metadata()
    {
    }

    public String getAlternateLink()
    {
        return (String)zza(zzmi.zzVt);
    }

    public int getContentAvailability()
    {
        Integer integer = (Integer)zza(zzmm.zzWk);
        if (integer == null)
        {
            return 0;
        } else
        {
            return integer.intValue();
        }
    }

    public Date getCreatedDate()
    {
        return (Date)zza(zzmk.zzWe);
    }

    public Map getCustomProperties()
    {
        AppVisibleCustomProperties appvisiblecustomproperties = (AppVisibleCustomProperties)zza(zzmi.zzVu);
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
        return (String)zza(zzmi.zzVv);
    }

    public DriveId getDriveId()
    {
        return (DriveId)zza(zzmi.zzVs);
    }

    public String getEmbedLink()
    {
        return (String)zza(zzmi.zzVw);
    }

    public String getFileExtension()
    {
        return (String)zza(zzmi.zzVx);
    }

    public long getFileSize()
    {
        return ((Long)zza(zzmi.zzVy)).longValue();
    }

    public Date getLastViewedByMeDate()
    {
        return (Date)zza(zzmk.zzWf);
    }

    public String getMimeType()
    {
        return (String)zza(zzmi.zzVM);
    }

    public Date getModifiedByMeDate()
    {
        return (Date)zza(zzmk.zzWh);
    }

    public Date getModifiedDate()
    {
        return (Date)zza(zzmk.zzWg);
    }

    public String getOriginalFilename()
    {
        return (String)zza(zzmi.zzVN);
    }

    public long getQuotaBytesUsed()
    {
        return ((Long)zza(zzmi.zzVS)).longValue();
    }

    public Date getSharedWithMeDate()
    {
        return (Date)zza(zzmk.zzWi);
    }

    public String getTitle()
    {
        return (String)zza(zzmi.zzVV);
    }

    public String getWebContentLink()
    {
        return (String)zza(zzmi.zzVX);
    }

    public String getWebViewLink()
    {
        return (String)zza(zzmi.zzVY);
    }

    public boolean isEditable()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVD);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isExplicitlyTrashed()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVE);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isFolder()
    {
        return "application/vnd.google-apps.folder".equals(getMimeType());
    }

    public boolean isInAppFolder()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVB);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isPinnable()
    {
        Boolean boolean1 = (Boolean)zza(zzmm.zzWl);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isPinned()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVF);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isRestricted()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVG);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isShared()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVH);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isStarred()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVT);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isTrashable()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVK);
        if (boolean1 == null)
        {
            return true;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isTrashed()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVW);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public boolean isViewed()
    {
        Boolean boolean1 = (Boolean)zza(zzmi.zzVL);
        if (boolean1 == null)
        {
            return false;
        } else
        {
            return boolean1.booleanValue();
        }
    }

    public abstract Object zza(MetadataField metadatafield);
}
