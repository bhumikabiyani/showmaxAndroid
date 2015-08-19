// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;

// Referenced classes of package com.google.android.gms.games.internal:
//            GamesClientImpl

private static final class zzaey extends zzaey
    implements com.google.android.gms.games.
{

    private final boolean zzadM;
    private final boolean zzaey;

    public Status getStatus()
    {
        return zzHb;
    }

    public boolean isProfileVisible()
    {
        return zzadM;
    }

    public boolean isVisibilityExplicitlySet()
    {
        return zzaey;
    }

    Y(DataHolder dataholder)
    {
        super(dataholder);
        if (dataholder.getCount() <= 0) goto _L2; else goto _L1
_L1:
        int i = dataholder.zzax(0);
        zzadM = dataholder.zzd("profile_visible", 0, i);
        zzaey = dataholder.zzd("profile_visibility_explicitly_set", 0, i);
_L4:
        dataholder.close();
        return;
_L2:
        zzadM = true;
        zzaey = false;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        dataholder.close();
        throw exception;
    }
}
