// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            fr, fq, ho, ja, 
//            hn

class hp
    implements fr
{

    final ho a;

    hp(ho ho1)
    {
        a = ho1;
        super();
    }

    public void a(fq fq1)
        throws Exception
    {
        if (fq1 == null) goto _L2; else goto _L1
_L1:
        if (!fq1.a()) goto _L4; else goto _L3
_L3:
        ho.a(a, fq1.c().getString("_id"));
        ja.a(4, "OperationsExecutor", (new StringBuilder()).append("Created object").append(fq1.c().getString("_id")).toString());
        ho.a(a).a = 701;
_L5:
        ho.a(a).b = fq1;
_L2:
        synchronized (ho.b(a))
        {
            ho.b(a).notifyAll();
        }
        return;
_L4:
        ja.a(4, "OperationsExecutor", (new StringBuilder()).append("Created object Fail: ").append(fq1.b()).toString());
        ho.a(a).a = 731;
          goto _L5
        fq1;
        fq1.printStackTrace();
          goto _L2
        exception;
        fq1;
        JVM INSTR monitorexit ;
        throw exception;
          goto _L5
    }
}
