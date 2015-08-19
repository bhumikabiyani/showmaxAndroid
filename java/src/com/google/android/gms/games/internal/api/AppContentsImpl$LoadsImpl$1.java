// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            AppContentsImpl

class zzGT
    implements com.google.android.gms.games.appcontent.sult
{

    final Status zzGT;
    final zzGT zzafK;

    public Status getStatus()
    {
        return zzGT;
    }

    public void release()
    {
    }

    lt(lt lt, Status status)
    {
        zzafK = lt;
        zzGT = status;
        super();
    }
}
