// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.request.GameRequestBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            RequestsImpl

class zzGT
    implements com.google.android.gms.games.request.pl._cls1
{

    final Status zzGT;
    final zzGT zzahe;

    public GameRequestBuffer getRequests(int i)
    {
        return new GameRequestBuffer(DataHolder.zzay(zzGT.getStatusCode()));
    }

    public Status getStatus()
    {
        return zzGT;
    }

    public void release()
    {
    }

    ( , Status status)
    {
        zzahe = ;
        zzGT = status;
        super();
    }
}
