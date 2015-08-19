// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            my, mq, mr

public class nc extends my
{

    public final mq B;
    public final mq z;

    private nc(mq mq1, mq mq2)
    {
        super(null);
        z = mq1;
        B = mq2;
    }

    nc(mq mq1, mq mq2, mr mr)
    {
        this(mq1, mq2);
    }

    public mq a(Map map, Map map1)
    {
        return b(map, map1);
    }

    public nc b(Map map, Map map1)
    {
        return new nc(z.a(map, map1), B.a(map, map1));
    }
}
