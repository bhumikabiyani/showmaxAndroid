// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lx, mk, mp, mo, 
//            mq

public abstract class mg extends lx
    implements mk, mp
{

    protected final mo a;

    protected mg(mq mq1)
        throws IOException
    {
        a = new mo(mq1, this, this);
    }

    protected abstract void a()
        throws IOException;

    public void l()
        throws IOException
    {
        a.c();
    }

    public void t()
        throws IOException
    {
        mq mq1 = a.d();
        if (mq1 == mq.c)
        {
            b();
        }
        if (mq1 == mq.d)
        {
            c();
        } else
        {
            if (mq1 == mq.e)
            {
                d();
                return;
            }
            if (mq1 == mq.f)
            {
                e();
                return;
            }
            if (mq1 == mq.g)
            {
                f();
                return;
            }
            if (mq1 == mq.h)
            {
                g();
                return;
            }
            if (mq1 == mq.i)
            {
                i();
                return;
            }
            if (mq1 == mq.j)
            {
                j();
                return;
            }
            if (mq1 == mq.l)
            {
                k();
                return;
            }
            if (mq1 == mq.k)
            {
                a();
                return;
            }
            if (mq1 == mq.m)
            {
                s();
                return;
            }
            if (mq1 == mq.n)
            {
                o();
                return;
            }
            if (mq1 == mq.p)
            {
                r();
                return;
            }
        }
    }
}
