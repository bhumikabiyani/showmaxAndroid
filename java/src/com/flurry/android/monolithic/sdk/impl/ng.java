// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.Map;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            my, mq

public class ng extends my
{

    public final mq z;

    public ng(mq mq1)
    {
        super(true, null);
        z = mq1;
    }

    public mq a(Map map, Map map1)
    {
        return b(map, map1);
    }

    public ng b(Map map, Map map1)
    {
        return new ng(z.a(map, map1));
    }
}
