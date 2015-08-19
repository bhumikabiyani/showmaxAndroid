// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lr, lu, lv, jg, 
//            lg

public class ls extends lr
{

    private byte a[];
    private int b;
    private lu c;
    private int d;

    ls(OutputStream outputstream, int i)
    {
        a(outputstream, i);
    }

    private void d(int i)
        throws IOException
    {
        if (a.length - b < i)
        {
            h();
        }
    }

    private void e(int i)
        throws IOException
    {
        if (b == a.length)
        {
            h();
        }
        byte abyte0[] = a;
        int j = b;
        b = j + 1;
        abyte0[j] = (byte)(i & 0xff);
    }

    private void h()
        throws IOException
    {
        if (b > 0)
        {
            c.a(a, 0, b);
            b = 0;
        }
    }

    ls a(OutputStream outputstream, int i)
    {
        if (outputstream == null)
        {
            throw new NullPointerException("OutputStream cannot be null!");
        }
        if (c != null && b > 0)
        {
            try
            {
                h();
            }
            // Misplaced declaration of an exception variable
            catch (OutputStream outputstream)
            {
                throw new jg("Failure flushing old output", outputstream);
            }
        }
        c = new lv(outputstream, null);
        b = 0;
        if (a == null || a.length != i)
        {
            a = new byte[i];
        }
        d = a.length >>> 1;
        if (d > 512)
        {
            d = 512;
        }
        return this;
    }

    public void a(double d1)
        throws IOException
    {
        d(8);
        b = b + lg.a(d1, a, b);
    }

    public void a(float f)
        throws IOException
    {
        d(4);
        b = b + lg.a(f, a, b);
    }

    public void a(boolean flag)
        throws IOException
    {
        if (a.length == b)
        {
            h();
        }
        b = b + lg.a(flag, a, b);
    }

    public void b(long l)
        throws IOException
    {
        d(10);
        b = b + lg.a(l, a, b);
    }

    public void b(byte abyte0[], int i, int j)
        throws IOException
    {
        if (j > d)
        {
            h();
            c.a(abyte0, i, j);
            return;
        } else
        {
            d(j);
            System.arraycopy(abyte0, i, a, b, j);
            b = b + j;
            return;
        }
    }

    public void c(int i)
        throws IOException
    {
        d(5);
        b = b + lg.a(i, a, b);
    }

    public void flush()
        throws IOException
    {
        h();
        c.a();
    }

    protected void g()
        throws IOException
    {
        e(0);
    }
}
