// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.plus.model.moments.MomentBuffer;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zze

static final class zzauv
    implements com.google.android.gms.plus.LoadMomentsResult
{

    private final Status zzHb;
    private final String zzaut;
    private final String zzauu;
    private final MomentBuffer zzauv;

    public MomentBuffer getMomentBuffer()
    {
        return zzauv;
    }

    public String getNextPageToken()
    {
        return zzaut;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public String getUpdated()
    {
        return zzauu;
    }

    public void release()
    {
        if (zzauv != null)
        {
            zzauv.release();
        }
    }

    public (Status status, DataHolder dataholder, String s, String s1)
    {
        zzHb = status;
        zzaut = s;
        zzauu = s1;
        if (dataholder != null)
        {
            status = new MomentBuffer(dataholder);
        } else
        {
            status = null;
        }
        zzauv = status;
    }
}
