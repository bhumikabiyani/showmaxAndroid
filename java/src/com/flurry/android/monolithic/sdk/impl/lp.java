// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ln, ll

abstract class lp extends InputStream
{

    protected ln a;

    protected lp()
    {
    }

    protected void a()
    {
        a.a();
    }

    protected void a(int i, ll ll1)
    {
        ll.a(ll1, new byte[i]);
        ll.a(ll1, 0);
        ll.c(ll1, 0);
        ll.b(ll1, 0);
        a = new ln(ll1, null);
    }

    protected abstract void a(long l)
        throws IOException;

    protected abstract void a(byte abyte0[], int i, int j)
        throws IOException;

    protected void a(byte abyte0[], int i, int j, int k)
        throws IOException
    {
        System.arraycopy(abyte0, i, abyte0, j, k);
        a.a(j);
        i = b(abyte0, j + k, abyte0.length - k);
        a.b(i + k);
    }

    public int available()
        throws IOException
    {
        return a.c() - a.b();
    }

    protected abstract int b(byte abyte0[], int i, int j)
        throws IOException;

    protected abstract long b(long l)
        throws IOException;

    public int read(byte abyte0[], int i, int j)
        throws IOException
    {
        int l = a.c();
        int k = a.b();
        byte abyte1[] = a.d();
        l -= k;
        if (l >= j)
        {
            System.arraycopy(abyte1, k, abyte0, i, j);
            a.a(k + j);
        } else
        {
            System.arraycopy(abyte1, k, abyte0, i, l);
            a.a(k + l);
            i = l + b(abyte0, i + l, j - l);
            j = i;
            if (i == 0)
            {
                return -1;
            }
        }
        return j;
    }

    public long skip(long l)
        throws IOException
    {
        int i = a.c();
        int j = a.b();
        int k = i - j;
        if ((long)k > l)
        {
            i = (int)((long)j + l);
            a.a(i);
            return l;
        } else
        {
            a.a(i);
            return b(l - (long)k) + (long)k;
        }
    }
}
