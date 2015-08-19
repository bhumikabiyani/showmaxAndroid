// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wallet;

import android.text.TextUtils;
import com.google.android.gms.common.internal.zzx;

// Referenced classes of package com.google.android.gms.wallet:
//            NotifyTransactionStatusRequest

public final class <init>
{

    final NotifyTransactionStatusRequest zzaEg;

    public NotifyTransactionStatusRequest build()
    {
        boolean flag1 = true;
        boolean flag;
        if (!TextUtils.isEmpty(zzaEg.zzaCY))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "googleTransactionId is required");
        if (zzaEg.status >= 1 && zzaEg.status <= 8)
        {
            flag = flag1;
        } else
        {
            flag = false;
        }
        zzx.zzb(flag, "status is an unrecognized value");
        return zzaEg;
    }

    public zzaEg setDetailedReason(String s)
    {
        zzaEg.zzaEf = s;
        return this;
    }

    public zzaEg setGoogleTransactionId(String s)
    {
        zzaEg.zzaCY = s;
        return this;
    }

    public zzaEg setStatus(int i)
    {
        zzaEg.status = i;
        return this;
    }

    private (NotifyTransactionStatusRequest notifytransactionstatusrequest)
    {
        zzaEg = notifytransactionstatusrequest;
        super();
    }

    zzaEg(NotifyTransactionStatusRequest notifytransactionstatusrequest, zzaEg zzaeg)
    {
        this(notifytransactionstatusrequest);
    }
}
