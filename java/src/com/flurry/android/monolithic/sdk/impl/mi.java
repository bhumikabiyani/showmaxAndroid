// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.nio.ByteBuffer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mg, mk, mq, mo, 
//            mz, jh, lx, ms, 
//            nw

public class mi extends mg
    implements mk
{

    protected lx c;

    mi(mq mq1, lx lx1)
        throws IOException
    {
        super(mq1);
        a(lx1);
    }

    private void b(int l)
        throws IOException
    {
        a.a(mq.k);
        mz mz1 = (mz)a.c();
        if (l != mz1.A)
        {
            throw new jh((new StringBuilder()).append("Incorrect length for fixed binary: expected ").append(mz1.A).append(" but received ").append(l).append(" bytes.").toString());
        } else
        {
            return;
        }
    }

    public mi a(lx lx1)
        throws IOException
    {
        a.e();
        c = lx1;
        return this;
    }

    public mq a(mq mq1, mq mq2)
        throws IOException
    {
        return null;
    }

    public nw a(nw nw)
        throws IOException
    {
        a.a(mq.i);
        return c.a(nw);
    }

    public ByteBuffer a(ByteBuffer bytebuffer)
        throws IOException
    {
        a.a(mq.j);
        return c.a(bytebuffer);
    }

    protected void a()
        throws IOException
    {
        a.a(mq.k);
        mz mz1 = (mz)a.c();
        c.a(mz1.A);
    }

    public void a(int l)
        throws IOException
    {
        b(l);
        c.a(l);
    }

    public void b()
        throws IOException
    {
        a.a(mq.c);
        c.b();
    }

    public void b(byte abyte0[], int l, int i1)
        throws IOException
    {
        b(i1);
        c.b(abyte0, l, i1);
    }

    public boolean c()
        throws IOException
    {
        a.a(mq.d);
        return c.c();
    }

    public int d()
        throws IOException
    {
        a.a(mq.e);
        return c.d();
    }

    public long e()
        throws IOException
    {
        a.a(mq.f);
        return c.e();
    }

    public float f()
        throws IOException
    {
        a.a(mq.g);
        return c.f();
    }

    public double g()
        throws IOException
    {
        a.a(mq.h);
        return c.g();
    }

    public String h()
        throws IOException
    {
        a.a(mq.i);
        return c.h();
    }

    public void i()
        throws IOException
    {
        a.a(mq.i);
        c.i();
    }

    public void j()
        throws IOException
    {
        a.a(mq.j);
        c.j();
    }

    public int k()
        throws IOException
    {
        a.a(mq.l);
        mz mz1 = (mz)a.c();
        int l = c.k();
        if (l < 0 || l >= mz1.A)
        {
            throw new jh((new StringBuilder()).append("Enumeration out of range: max is ").append(mz1.A).append(" but received ").append(l).toString());
        } else
        {
            return l;
        }
    }

    public long m()
        throws IOException
    {
        a.a(mq.n);
        long l = c.m();
        if (l == 0L)
        {
            a.a(mq.o);
        }
        return l;
    }

    public long n()
        throws IOException
    {
        a.b();
        long l = c.n();
        if (l == 0L)
        {
            a.a(mq.o);
        }
        return l;
    }

    public long o()
        throws IOException
    {
        a.a(mq.n);
        for (long l = c.o(); l != 0L; l = c.o())
        {
            for (; l > 0L; l--)
            {
                a.f();
            }

        }

        a.a(mq.o);
        return 0L;
    }

    public long p()
        throws IOException
    {
        a.a(mq.p);
        long l = c.p();
        if (l == 0L)
        {
            a.a(mq.q);
        }
        return l;
    }

    public long q()
        throws IOException
    {
        a.b();
        long l = c.q();
        if (l == 0L)
        {
            a.a(mq.q);
        }
        return l;
    }

    public long r()
        throws IOException
    {
        a.a(mq.p);
        for (long l = c.r(); l != 0L; l = c.r())
        {
            for (; l > 0L; l--)
            {
                a.f();
            }

        }

        a.a(mq.q);
        return 0L;
    }

    public int s()
        throws IOException
    {
        a.a(mq.m);
        ms ms1 = (ms)a.c();
        int l = c.s();
        a.c(ms1.a(l));
        return l;
    }
}
