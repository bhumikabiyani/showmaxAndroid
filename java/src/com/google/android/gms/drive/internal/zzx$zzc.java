// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;

// Referenced classes of package com.google.android.gms.drive.internal:
//            zzq, zzx

private abstract class ent extends zzq
{

    final zzx zzUi;

    protected Result createFailedResult(Status status)
    {
        return zzs(status);
    }

    protected com.google.android.gms.drive.ferencesApi.FileUploadPreferencesResult zzs(Status status)
    {
        return new <init>(zzUi, status, null, null);
    }

    public ent(zzx zzx1, GoogleApiClient googleapiclient)
    {
        zzUi = zzx1;
        super(googleapiclient);
    }
}
