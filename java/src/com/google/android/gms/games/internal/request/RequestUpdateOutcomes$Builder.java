// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.games.internal.request;

import com.google.android.gms.games.internal.constants.RequestUpdateResultOutcome;
import java.util.HashMap;

// Referenced classes of package com.google.android.gms.games.internal.request:
//            RequestUpdateOutcomes

public static final class zzLs
{

    private int zzLs;
    private HashMap zzaiQ;

    public zzLs zzA(String s, int i)
    {
        if (RequestUpdateResultOutcome.isValid(i))
        {
            zzaiQ.put(s, Integer.valueOf(i));
        }
        return this;
    }

    public zzaiQ zzeU(int i)
    {
        zzLs = i;
        return this;
    }

    public RequestUpdateOutcomes zzoO()
    {
        return new RequestUpdateOutcomes(zzLs, zzaiQ, null);
    }

    public Q()
    {
        zzaiQ = new HashMap();
        zzLs = 0;
    }
}
