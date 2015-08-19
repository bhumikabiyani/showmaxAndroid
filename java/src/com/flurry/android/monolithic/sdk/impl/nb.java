// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mq, na, mr

public class nb extends mq
{

    public final mq z;

    private transient nb(mq mq1, mq amq[])
    {
        super(na.d, c(amq));
        z = mq1;
        b[0] = this;
    }

    nb(mq mq1, mq amq[], mr mr)
    {
        this(mq1, amq);
    }

    private static mq[] c(mq amq[])
    {
        mq amq1[] = new mq[amq.length + 1];
        System.arraycopy(amq, 0, amq1, 1, amq.length);
        return amq1;
    }

    public mq a(Map map, Map map1)
    {
        return b(map, map1);
    }

    public nb b(Map map, Map map1)
    {
        nb nb1 = new nb(z, new mq[a(b, 1)]);
        a(b, 1, nb1.b, 1, map, map1);
        return nb1;
    }
}
