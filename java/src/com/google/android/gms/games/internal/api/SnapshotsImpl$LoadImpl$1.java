// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.api;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.games.snapshot.SnapshotMetadataBuffer;

// Referenced classes of package com.google.android.gms.games.internal.api:
//            SnapshotsImpl

class zzGT
    implements com.google.android.gms.games.snapshot.sult
{

    final Status zzGT;
    final zzGT zzaht;

    public SnapshotMetadataBuffer getSnapshots()
    {
        return new SnapshotMetadataBuffer(DataHolder.zzay(14));
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
        zzaht = ;
        zzGT = status;
        super();
    }
}
