// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.plus.model.people.PersonBuffer;

// Referenced classes of package com.google.android.gms.plus.internal:
//            zze

static final class zzauw
    implements com.google.android.gms.plus.oadPeopleResult
{

    private final Status zzHb;
    private final String zzaut;
    private final PersonBuffer zzauw;

    public String getNextPageToken()
    {
        return zzaut;
    }

    public PersonBuffer getPersonBuffer()
    {
        return zzauw;
    }

    public Status getStatus()
    {
        return zzHb;
    }

    public void release()
    {
        if (zzauw != null)
        {
            zzauw.release();
        }
    }

    public (Status status, DataHolder dataholder, String s)
    {
        zzHb = status;
        zzaut = s;
        if (dataholder != null)
        {
            status = new PersonBuffer(dataholder);
        } else
        {
            status = null;
        }
        zzauw = status;
    }
}
