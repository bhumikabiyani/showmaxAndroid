// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.nio.ByteBuffer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            mc, nw

public abstract class lr extends mc
{

    public lr()
    {
    }

    public void a()
        throws IOException
    {
    }

    public void a(int i)
        throws IOException
    {
        c(i);
    }

    public void a(long l)
        throws IOException
    {
        if (l > 0L)
        {
            b(l);
        }
    }

    public void a(nw nw1)
        throws IOException
    {
        a(nw1.a(), 0, nw1.b());
    }

    public void a(String s)
        throws IOException
    {
        if (s.length() == 0)
        {
            g();
            return;
        } else
        {
            s = s.getBytes("UTF-8");
            c(s.length);
            b(s, 0, s.length);
            return;
        }
    }

    public void a(ByteBuffer bytebuffer)
        throws IOException
    {
        int i = bytebuffer.position();
        int j = bytebuffer.arrayOffset();
        int k = bytebuffer.limit();
        a(bytebuffer.array(), j + i, k - i);
    }

    public void a(byte abyte0[], int i, int j)
        throws IOException
    {
        if (j == 0)
        {
            g();
            return;
        } else
        {
            c(j);
            b(abyte0, i, j);
            return;
        }
    }

    public void b()
        throws IOException
    {
    }

    public void b(int i)
        throws IOException
    {
        c(i);
    }

    public void c()
        throws IOException
    {
    }

    public void d()
        throws IOException
    {
        g();
    }

    public void e()
        throws IOException
    {
    }

    public void f()
        throws IOException
    {
        g();
    }

    protected abstract void g()
        throws IOException;
}
