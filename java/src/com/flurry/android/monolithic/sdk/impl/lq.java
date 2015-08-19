// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lp, ln, lm

class lq extends lp
{

    protected boolean b;
    private InputStream c;

    private lq(InputStream inputstream)
    {
        b = false;
        c = inputstream;
    }

    lq(InputStream inputstream, lm lm)
    {
        this(inputstream);
    }

    protected void a(long l)
        throws IOException
    {
        boolean flag = false;
        while (l > 0L) 
        {
            long l1 = c.skip(l);
            if (l1 > 0L)
            {
                l -= l1;
            } else
            if (l1 == 0L)
            {
                if (flag)
                {
                    b = true;
                    throw new EOFException();
                }
                flag = true;
            } else
            {
                b = true;
                throw new EOFException();
            }
        }
    }

    protected void a(byte abyte0[], int i, int j)
        throws IOException
    {
        while (j > 0) 
        {
            int k = c.read(abyte0, i, j);
            if (k < 0)
            {
                b = true;
                throw new EOFException();
            }
            j -= k;
            i += k;
        }
    }

    protected int b(byte abyte0[], int i, int j)
        throws IOException
    {
        int k = j;
_L2:
        if (k <= 0)
        {
            break MISSING_BLOCK_LABEL_31;
        }
        int l = c.read(abyte0, i, k);
        if (l >= 0)
        {
            break MISSING_BLOCK_LABEL_36;
        }
        try
        {
            b = true;
        }
        // Misplaced declaration of an exception variable
        catch (byte abyte0[])
        {
            b = true;
        }
        return j - k;
        k -= l;
        i += l;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected long b(long l)
        throws IOException
    {
        boolean flag;
        long l1;
        flag = false;
        l1 = l;
_L2:
        if (l1 <= 0L)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        long l2 = c.skip(l);
        if (l2 > 0L)
        {
            l1 -= l2;
            continue; /* Loop/switch isn't completed */
        }
        if (l2 == 0L)
        {
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_79;
            }
            try
            {
                b = true;
            }
            catch (EOFException eofexception)
            {
                b = true;
            }
            break MISSING_BLOCK_LABEL_74;
        }
        b = true;
        return l - l1;
        flag = true;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void close()
        throws IOException
    {
        c.close();
    }

    public int read()
        throws IOException
    {
        if (a.c() - a.b() == 0)
        {
            return c.read();
        } else
        {
            int i = a.b();
            byte byte0 = a.d()[i];
            a.a(i + 1);
            return byte0 & 0xff;
        }
    }
}
