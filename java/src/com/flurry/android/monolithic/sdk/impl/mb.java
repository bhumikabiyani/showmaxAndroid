// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lr, lg

public class mb extends lr
{

    private OutputStream a;
    private final byte b[] = new byte[12];

    mb(OutputStream outputstream)
    {
        a(outputstream);
    }

    mb a(OutputStream outputstream)
    {
        if (outputstream == null)
        {
            throw new NullPointerException("OutputStream cannot be null!");
        } else
        {
            a = outputstream;
            return this;
        }
    }

    public void a(double d)
        throws IOException
    {
        byte abyte0[] = new byte[8];
        int i = lg.a(d, abyte0, 0);
        a.write(abyte0, 0, i);
    }

    public void a(float f)
        throws IOException
    {
        int i = lg.a(f, b, 0);
        a.write(b, 0, i);
    }

    public void a(boolean flag)
        throws IOException
    {
        OutputStream outputstream = a;
        int i;
        if (flag)
        {
            i = 1;
        } else
        {
            i = 0;
        }
        outputstream.write(i);
    }

    public void b(long l)
        throws IOException
    {
        long l1 = l << 1 ^ l >> 63;
        if ((0xffffffff80000000L & l1) == 0L)
        {
            int i;
            for (i = (int)l1; (i & 0xffffff80) != 0; i >>>= 7)
            {
                a.write((byte)((i | 0x80) & 0xff));
            }

            a.write((byte)i);
            return;
        } else
        {
            int j = lg.a(l, b, 0);
            a.write(b, 0, j);
            return;
        }
    }

    public void b(byte abyte0[], int i, int j)
        throws IOException
    {
        a.write(abyte0, i, j);
    }

    public void c(int i)
        throws IOException
    {
        int j = i << 1 ^ i >> 31;
        if ((j & 0xffffff80) == 0)
        {
            a.write(j);
            return;
        }
        if ((j & 0xffffc000) == 0)
        {
            a.write(j | 0x80);
            a.write(j >>> 7);
            return;
        } else
        {
            i = lg.a(i, b, 0);
            a.write(b, 0, i);
            return;
        }
    }

    public void flush()
        throws IOException
    {
        a.flush();
    }

    protected void g()
        throws IOException
    {
        a.write(0);
    }
}
