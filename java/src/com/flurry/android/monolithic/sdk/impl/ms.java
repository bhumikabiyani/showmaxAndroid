// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mq, na, mr

public class ms extends mq
{

    public final String A[];
    public final mq z[];

    private ms(mq amq[], String as[])
    {
        super(na.e);
        z = amq;
        A = as;
    }

    ms(mq amq[], String as[], mr mr)
    {
        this(amq, as);
    }

    public mq a(int i)
    {
        return z[i];
    }

    public mq a(Map map, Map map1)
    {
        return b(map, map1);
    }

    public ms b(Map map, Map map1)
    {
        mq amq[] = new mq[z.length];
        for (int i = 0; i < amq.length; i++)
        {
            amq[i] = z[i].a(map, map1);
        }

        return new ms(amq, A);
    }
}
