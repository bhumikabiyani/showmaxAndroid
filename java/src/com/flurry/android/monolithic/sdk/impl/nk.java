// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            nl, ji, kj, mq, 
//            mz, nm, js

public class nk
{

    public nk()
    {
    }

    public mq a(ji ji1, Map map)
    {
        nl.a[ji1.a().ordinal()];
        JVM INSTR tableswitch 1 14: default 80
    //                   1 90
    //                   2 96
    //                   3 100
    //                   4 104
    //                   5 108
    //                   6 112
    //                   7 116
    //                   8 120
    //                   9 124
    //                   10 152
    //                   11 185
    //                   12 224
    //                   13 269
    //                   14 387;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10 _L11 _L12 _L13 _L14 _L15
_L1:
        throw new RuntimeException("Unexpected schema type");
_L2:
        mq mq1 = mq.c;
_L17:
        return mq1;
_L3:
        return mq.d;
_L4:
        return mq.e;
_L5:
        return mq.f;
_L6:
        return mq.g;
_L7:
        return mq.h;
_L8:
        return mq.i;
_L9:
        return mq.j;
_L10:
        return mq.b(new mq[] {
            new mz(ji1.l()), mq.k
        });
_L11:
        return mq.b(new mq[] {
            new mz(ji1.c().size()), mq.l
        });
_L12:
        return mq.b(new mq[] {
            mq.a(mq.o, new mq[] {
                a(ji1.i(), map)
            }), mq.n
        });
_L13:
        return mq.b(new mq[] {
            mq.a(mq.q, new mq[] {
                a(ji1.j(), map), mq.i
            }), mq.p
        });
_L14:
        mq mq2;
        nm nm1;
        nm1 = new nm(ji1);
        mq2 = (mq)map.get(nm1);
        mq1 = mq2;
        if (mq2 != null) goto _L17; else goto _L16
_L15:
        mq3 = ji1.k();
        mq amq1[] = new mq[mq3.size()];
        mq3 = new String[mq3.size()];
        ji1 = ji1.k().iterator();
        for (int j = 0; ji1.hasNext(); j++)
        {
            ji ji2 = (ji)ji1.next();
            amq1[j] = a(ji2, map);
            mq3[j] = ji2.g();
        }

        return mq.b(new mq[] {
            mq.a(amq1, mq3), mq.m
        });
_L16:
        mq amq[] = new mq[ji1.b().size()];
        mq mq3 = mq.b(amq);
        map.put(nm1, mq3);
        int i = amq.length;
        for (ji1 = ji1.b().iterator(); ji1.hasNext();)
        {
            js js1 = (js)ji1.next();
            i--;
            amq[i] = a(js1.c(), map);
        }

        return mq3;
    }
}
