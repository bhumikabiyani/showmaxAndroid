// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.EOFException;
import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lp, ll, ln, lm

class lo extends lp
{

    private byte b[];
    private int c;
    private int d;
    private boolean e;

    private lo(byte abyte0[], int i, int j)
    {
        e = false;
        if (abyte0.length < 16 || j < 16)
        {
            b = new byte[16];
            System.arraycopy(abyte0, i, b, 0, j);
            c = 0;
            d = j;
            return;
        } else
        {
            b = abyte0;
            c = i;
            d = i + j;
            return;
        }
    }

    lo(byte abyte0[], int i, int j, lm lm)
    {
        this(abyte0, i, j);
    }

    protected void a(int i, ll ll1)
    {
        ll.a(ll1, b);
        ll.a(ll1, c);
        ll.c(ll1, c);
        ll.b(ll1, d);
        a = new ln(ll1, null);
    }

    protected void a(long l)
        throws IOException
    {
        if (b(l) < l)
        {
            throw new EOFException();
        } else
        {
            return;
        }
    }

    protected void a(byte abyte0[], int i, int j)
        throws IOException
    {
        if (b(abyte0, i, j) < j)
        {
            throw new EOFException();
        } else
        {
            return;
        }
    }

    protected void a(byte abyte0[], int i, int j, int k)
        throws IOException
    {
        if (!e)
        {
            byte abyte1[] = new byte[k + 16];
            System.arraycopy(abyte0, i, abyte1, 0, k);
            a.a(abyte1, 0, k);
            e = true;
        }
    }

    protected int b(byte abyte0[], int i, int j)
        throws IOException
    {
        return 0;
    }

    protected long b(long l)
        throws IOException
    {
        d = a.c();
        c = a.b();
        long l1 = d - c;
        if (l1 >= l)
        {
            c = (int)((long)c + l);
            a.a(c);
            return l;
        } else
        {
            c = (int)((long)c + l1);
            a.a(c);
            return l1;
        }
    }

    public void close()
        throws IOException
    {
        a.a(a.c());
    }

    public int read()
        throws IOException
    {
        d = a.c();
        c = a.b();
        if (c >= d)
        {
            return -1;
        } else
        {
            byte abyte0[] = a.d();
            int i = c;
            c = i + 1;
            i = abyte0[i];
            a.a(c);
            return i & 0xff;
        }
    }
}
