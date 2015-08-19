// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mq, na, mk, jh, 
//            nb, my

public class mj
{

    protected final mk a;
    protected mq b[];
    protected int c;

    public mj(mq mq1, mk mk1)
        throws IOException
    {
        a = mk1;
        b = new mq[5];
        b[0] = mq1;
        c = 1;
    }

    private void f()
    {
        mq amq[] = new mq[b.length + Math.max(b.length, 1024)];
        System.arraycopy(b, 0, amq, 0, b.length);
        b = amq;
    }

    public final mq a(mq mq1)
        throws IOException
    {
        do
        {
            mq amq[] = b;
            int i = c - 1;
            c = i;
            mq mq2 = amq[i];
            if (mq2 == mq1)
            {
                return mq2;
            }
            na na1 = mq2.a;
            if (na1 == na.f)
            {
                mq2 = a.a(mq1, mq2);
                if (mq2 != null)
                {
                    return mq2;
                }
            } else
            {
                if (na1 == na.a)
                {
                    throw new jh((new StringBuilder()).append("Attempt to process a ").append(mq1).append(" when a ").append(mq2).append(" was expected.").toString());
                }
                if (na1 == na.d && mq1 == ((nb)mq2).z)
                {
                    return mq1;
                }
                b(mq2);
            }
        } while (true);
    }

    public final void a()
        throws IOException
    {
        do
        {
            if (c <= 1)
            {
                break;
            }
            mq mq1 = b[c - 1];
            if (mq1.a == na.f)
            {
                c = c - 1;
                a.a(null, mq1);
                continue;
            }
            if (mq1.a == na.a)
            {
                break;
            }
            c = c - 1;
            b(mq1);
        } while (true);
    }

    public final void b()
        throws IOException
    {
        do
        {
            if (c < 1)
            {
                break;
            }
            mq mq1 = b[c - 1];
            if (mq1.a != na.f || !((my)mq1).A)
            {
                break;
            }
            c = c - 1;
            a.a(null, mq1);
        } while (true);
    }

    public final void b(mq mq1)
    {
        for (mq1 = mq1.b; c + mq1.length > b.length;)
        {
            f();
        }

        System.arraycopy(mq1, 0, b, c, mq1.length);
        int i = c;
        c = mq1.length + i;
    }

    public mq c()
    {
        mq amq[] = b;
        int i = c - 1;
        c = i;
        return amq[i];
    }

    public void c(mq mq1)
    {
        if (c == b.length)
        {
            f();
        }
        mq amq[] = b;
        int i = c;
        c = i + 1;
        amq[i] = mq1;
    }

    public mq d()
    {
        return b[c - 1];
    }

    public void e()
    {
        c = 1;
    }
}
