// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.OutputStream;
import java.util.Iterator;
import java.util.LinkedList;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            afo, afn

public final class afq extends OutputStream
{

    private static final byte a[] = new byte[0];
    private final afn b;
    private final LinkedList c;
    private int d;
    private byte e[];
    private int f;

    public afq()
    {
        this(((afn) (null)));
    }

    public afq(int i)
    {
        this(null, i);
    }

    public afq(afn afn1)
    {
        this(afn1, 500);
    }

    public afq(afn afn1, int i)
    {
        c = new LinkedList();
        b = afn1;
        if (afn1 == null)
        {
            e = new byte[i];
            return;
        } else
        {
            e = afn1.a(afo.c);
            return;
        }
    }

    private void c()
    {
        int i = 0x40000;
        d = d + e.length;
        int j = Math.max(d >> 1, 1000);
        if (j <= 0x40000)
        {
            i = j;
        }
        c.add(e);
        e = new byte[i];
        f = 0;
    }

    public void a()
    {
        d = 0;
        f = 0;
        if (!c.isEmpty())
        {
            c.clear();
        }
    }

    public void a(int i)
    {
        if (f >= e.length)
        {
            c();
        }
        byte abyte0[] = e;
        int j = f;
        f = j + 1;
        abyte0[j] = (byte)i;
    }

    public void b(int i)
    {
        if (f + 1 < e.length)
        {
            byte abyte0[] = e;
            int j = f;
            f = j + 1;
            abyte0[j] = (byte)(i >> 8);
            abyte0 = e;
            j = f;
            f = j + 1;
            abyte0[j] = (byte)i;
            return;
        } else
        {
            a(i >> 8);
            a(i);
            return;
        }
    }

    public byte[] b()
    {
        int j = d + f;
        if (j == 0)
        {
            return a;
        }
        byte abyte0[] = new byte[j];
        Iterator iterator = c.iterator();
        int i;
        int k;
        for (i = 0; iterator.hasNext(); i += k)
        {
            byte abyte1[] = (byte[])iterator.next();
            k = abyte1.length;
            System.arraycopy(abyte1, 0, abyte0, i, k);
        }

        System.arraycopy(e, 0, abyte0, i, f);
        i = f + i;
        if (i != j)
        {
            throw new RuntimeException((new StringBuilder()).append("Internal error: total len assumed to be ").append(j).append(", copied ").append(i).append(" bytes").toString());
        }
        if (!c.isEmpty())
        {
            a();
        }
        return abyte0;
    }

    public void c(int i)
    {
        if (f + 2 < e.length)
        {
            byte abyte0[] = e;
            int j = f;
            f = j + 1;
            abyte0[j] = (byte)(i >> 16);
            abyte0 = e;
            j = f;
            f = j + 1;
            abyte0[j] = (byte)(i >> 8);
            abyte0 = e;
            j = f;
            f = j + 1;
            abyte0[j] = (byte)i;
            return;
        } else
        {
            a(i >> 16);
            a(i >> 8);
            a(i);
            return;
        }
    }

    public void close()
    {
    }

    public void flush()
    {
    }

    public void write(int i)
    {
        a(i);
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        int k = i;
        do
        {
            int i1 = Math.min(e.length - f, j);
            int l = k;
            i = j;
            if (i1 > 0)
            {
                System.arraycopy(abyte0, k, e, f, i1);
                l = k + i1;
                f = f + i1;
                i = j - i1;
            }
            if (i <= 0)
            {
                return;
            }
            c();
            k = l;
            j = i;
        } while (true);
    }

}
