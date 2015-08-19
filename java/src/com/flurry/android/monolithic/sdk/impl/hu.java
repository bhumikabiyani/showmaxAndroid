// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.LinkedHashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hm, ja

class hu
{

    hu()
    {
    }

    public long a(hm hm1)
    {
        int i = hm1.f();
        hm1 = hm1.d();
        ja.a(4, "RetryPolicyChecker", (new StringBuilder()).append("checkOperation retryAttemps = ").append(i + 1).append(" / ").append(hm1.size()).toString());
        if (i >= hm1.size())
        {
            return -1L;
        } else
        {
            return ((Long)hm1.get(Integer.valueOf(i))).longValue();
        }
    }
}
