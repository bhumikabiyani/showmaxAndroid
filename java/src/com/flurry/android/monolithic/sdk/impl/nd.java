// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.util.HashMap;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mq, na, mr

public class nd extends mq
{

    private transient nd(mq amq[])
    {
        super(na.b, c(amq));
        b[0] = this;
    }

    nd(mq amq[], mr mr)
    {
        this(amq);
    }

    private static mq[] c(mq amq[])
    {
        mq amq1[] = new mq[a(amq, 0) + 1];
        a(amq, 0, amq1, 1, new HashMap(), new HashMap());
        return amq1;
    }
}
