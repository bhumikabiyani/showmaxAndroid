// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.appcloud.AppCloudModule;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            hu, ho, ja, hm, 
//            hn, fq

class ht
{

    private ho a;
    private hu b;

    public ht()
    {
        b = new hu();
        a = new ho();
    }

    private boolean a()
    {
        return AppCloudModule.getInstance().d();
    }

    public hn a(hm hm1)
    {
        long l = b.a(hm1);
        if (l == -1L)
        {
            ja.a(4, "RetryManager", "timeToStart == OPERATION_DIDNT_PROCCEED_CODE");
        } else
        {
            try
            {
                Thread.sleep(l);
            }
            catch (InterruptedException interruptedexception)
            {
                interruptedexception.printStackTrace();
            }
        }
        return b(hm1);
    }

    public hn b(hm hm1)
    {
        hm1.e();
        hn hn1;
        if (a())
        {
            hn1 = a.a(hm1);
        } else
        {
            hn1 = new hn();
            hn1.a = 711;
            hn1.b = new fq(null);
        }
        hn1.a;
        JVM INSTR lookupswitch 4: default 68
    //                   701: 77
    //                   711: 109
    //                   721: 109
    //                   731: 77;
           goto _L1 _L2 _L3 _L3 _L2
_L2:
        break; /* Loop/switch isn't completed */
_L1:
        ja.a(6, "RetryManager", "ERROR! UNKNOWN RESPONSE CODE!");
_L5:
        return hn1;
_L3:
        if (b.a(hm1) != -1L)
        {
            return a(hm1);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }
}
