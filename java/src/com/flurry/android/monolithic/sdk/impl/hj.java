// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;


// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            jf, hi, hs, ht, 
//            hn, ja, fr

class hj extends jf
{

    final hi a;
    private fr b;

    public hj(hi hi1, fr fr1)
    {
        a = hi1;
        super();
        b = null;
        b = fr1;
    }

    public void a()
    {
        Object obj;
        obj = hi.a(a).a();
        obj = hi.b(a).a(((hm) (obj)));
        hi.a(a).b();
        ((hn) (obj)).a;
        JVM INSTR lookupswitch 4: default 80
    //                   701: 103
    //                   711: 125
    //                   721: 114
    //                   731: 136;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_136;
_L1:
        ja.a(6, "CachingManager", "ERROR! UNKNOWN RESPONSE CODE!");
_L6:
        try
        {
            b.a(((hn) (obj)).b);
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        break MISSING_BLOCK_LABEL_152;
_L2:
        ja.a(4, "CachingManager", "OPERATION_STATUS_SUCCEEDED");
          goto _L6
_L4:
        ja.a(5, "CachingManager", "OPERATION_STATUS_TIME_OUT");
          goto _L6
_L3:
        ja.a(5, "CachingManager", "OPERATION_STATUS_FAILED");
          goto _L6
        ja.a(5, "CachingManager", "OPERATION_STATUS_BAD_RESPONSE");
          goto _L6
    }
}
