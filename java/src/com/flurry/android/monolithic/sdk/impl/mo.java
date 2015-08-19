// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mj, mq, na, mp, 
//            mk

public class mo extends mj
{

    static final boolean d;
    private final mp e;

    public mo(mq mq1, mk mk, mp mp1)
        throws IOException
    {
        super(mq1, mk);
        e = mp1;
    }

    public final void a(int i)
        throws IOException
    {
        while (i < c) 
        {
            mq mq1 = b[c - 1];
            if (mq1.a != na.a)
            {
                if (mq1.a == na.f || mq1.a == na.g)
                {
                    e.l();
                } else
                {
                    c = c - 1;
                    b(mq1);
                }
            } else
            {
                e.t();
            }
        }
    }

    public final void d(mq mq1)
        throws IOException
    {
        int i = c;
        c(mq1);
        a(i);
    }

    public final void f()
        throws IOException
    {
        int i = c;
        mq amq[] = b;
        int j = c - 1;
        c = j;
        mq mq1 = amq[j];
        if (!d && mq1.a != na.d)
        {
            throw new AssertionError();
        } else
        {
            b(mq1);
            a(i);
            return;
        }
    }

    static 
    {
        boolean flag;
        if (!com/flurry/android/monolithic/sdk/impl/mo.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        d = flag;
    }
}
