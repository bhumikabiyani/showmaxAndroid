// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            lx, nw, lp, lq, 
//            lo, ln

public class ll extends lx
{

    private lp a;
    private byte b[];
    private int c;
    private int d;
    private int e;
    private final nw f;

    protected ll()
    {
        a = null;
        b = null;
        c = 0;
        d = 0;
        e = 0;
        f = new nw();
    }

    ll(InputStream inputstream, int i1)
    {
        a = null;
        b = null;
        c = 0;
        d = 0;
        e = 0;
        f = new nw();
        a(inputstream, i1);
    }

    ll(byte abyte0[], int i1, int j1)
    {
        a = null;
        b = null;
        c = 0;
        d = 0;
        e = 0;
        f = new nw();
        a(abyte0, i1, j1);
    }

    static int a(ll ll1, int i1)
    {
        ll1.d = i1;
        return i1;
    }

    private void a(int i1, lp lp1)
    {
        if (a != null)
        {
            a.a();
        }
        lp1.a(i1, this);
        a = lp1;
    }

    static byte[] a(ll ll1)
    {
        return ll1.b;
    }

    static byte[] a(ll ll1, byte abyte0[])
    {
        ll1.b = abyte0;
        return abyte0;
    }

    static int b(ll ll1)
    {
        return ll1.d;
    }

    static int b(ll ll1, int i1)
    {
        ll1.e = i1;
        return i1;
    }

    private long b(long l1)
        throws IOException
    {
        int i1 = b[d] & 0xff;
        l1 = ((long)i1 & 127L) << 28 ^ l1;
        if (i1 > 127)
        {
            byte abyte0[] = b;
            int j1 = d;
            i1 = 2;
            j1 = abyte0[1 + j1] & 0xff;
            long l2 = l1 ^ ((long)j1 & 127L) << 35;
            l1 = l2;
            if (j1 > 127)
            {
                byte abyte1[] = b;
                int k1 = d;
                i1 = 3;
                k1 = abyte1[k1 + 2] & 0xff;
                l2 ^= ((long)k1 & 127L) << 42;
                l1 = l2;
                if (k1 > 127)
                {
                    byte abyte2[] = b;
                    int i2 = d;
                    i1 = 4;
                    i2 = abyte2[i2 + 3] & 0xff;
                    l2 ^= ((long)i2 & 127L) << 49;
                    l1 = l2;
                    if (i2 > 127)
                    {
                        byte abyte3[] = b;
                        int j2 = d;
                        i1 = 5;
                        j2 = abyte3[j2 + 4] & 0xff;
                        l2 ^= ((long)j2 & 127L) << 56;
                        l1 = l2;
                        if (j2 > 127)
                        {
                            byte abyte4[] = b;
                            int k2 = d;
                            i1 = 6;
                            k2 = abyte4[k2 + 5] & 0xff;
                            l1 = l2 ^ ((long)k2 & 127L) << 63;
                            if (k2 > 127)
                            {
                                throw new IOException("Invalid long encoding");
                            }
                        }
                    }
                }
            }
        } else
        {
            i1 = 1;
        }
        d = i1 + d;
        return l1;
    }

    private void b(int i1)
        throws IOException
    {
        int j1 = e - d;
        if (j1 < i1)
        {
            a.a(b, d, c, j1);
        }
    }

    static int c(ll ll1)
    {
        return ll1.e;
    }

    static int c(ll ll1, int i1)
    {
        ll1.c = i1;
        return i1;
    }

    private long t()
        throws IOException
    {
        long l1;
        for (l1 = d(); l1 < 0L; l1 = d())
        {
            a(e());
        }

        return l1;
    }

    ll a(InputStream inputstream, int i1)
    {
        a(i1, ((lp) (new lq(inputstream, null))));
        return this;
    }

    ll a(byte abyte0[], int i1, int j1)
    {
        a(8192, ((lp) (new lo(abyte0, i1, j1, null))));
        return this;
    }

    ln a()
    {
        return new ln(this, null);
    }

    public nw a(nw nw1)
        throws IOException
    {
        int i1 = d();
        if (nw1 == null)
        {
            nw1 = new nw();
        }
        nw1.a(i1);
        if (i1 != 0)
        {
            c(nw1.a(), 0, i1);
        }
        return nw1;
    }

    public ByteBuffer a(ByteBuffer bytebuffer)
        throws IOException
    {
        int i1 = d();
        if (bytebuffer != null && i1 <= bytebuffer.capacity())
        {
            bytebuffer.clear();
        } else
        {
            bytebuffer = ByteBuffer.allocate(i1);
        }
        c(bytebuffer.array(), bytebuffer.position(), i1);
        bytebuffer.limit(i1);
        return bytebuffer;
    }

    public void a(int i1)
        throws IOException
    {
        a(i1);
    }

    protected void a(long l1)
        throws IOException
    {
        int i1 = e - d;
        if (l1 <= (long)i1)
        {
            d = (int)((long)d + l1);
            return;
        } else
        {
            d = 0;
            e = 0;
            long l2 = i1;
            a.a(l1 - l2);
            return;
        }
    }

    public void b()
        throws IOException
    {
    }

    public void b(byte abyte0[], int i1, int j1)
        throws IOException
    {
        c(abyte0, i1, j1);
    }

    protected void c(byte abyte0[], int i1, int j1)
        throws IOException
    {
        int k1 = e - d;
        if (j1 <= k1)
        {
            System.arraycopy(b, d, abyte0, i1, j1);
            d = d + j1;
            return;
        } else
        {
            System.arraycopy(b, d, abyte0, i1, k1);
            d = e;
            a.a(abyte0, i1 + k1, j1 - k1);
            return;
        }
    }

    public boolean c()
        throws IOException
    {
        if (e == d)
        {
            e = a.b(b, 0, b.length);
            d = 0;
            if (e == 0)
            {
                throw new EOFException();
            }
        }
        byte abyte0[] = b;
        int i1 = d;
        d = i1 + 1;
        return (abyte0[i1] & 0xff) == 1;
    }

    public int d()
        throws IOException
    {
        byte byte0 = 5;
        b(5);
        int j1 = b[d] & 0xff;
        int i1 = j1 & 0x7f;
        if (j1 > 127)
        {
            byte abyte0[] = b;
            int k1 = d;
            j1 = 2;
            int l1 = abyte0[1 + k1] & 0xff;
            k1 = i1 ^ (l1 & 0x7f) << 7;
            i1 = k1;
            if (l1 > 127)
            {
                byte abyte1[] = b;
                i1 = d;
                j1 = 3;
                int i2 = abyte1[i1 + 2] & 0xff;
                k1 ^= (i2 & 0x7f) << 14;
                i1 = k1;
                if (i2 > 127)
                {
                    byte abyte2[] = b;
                    i1 = d;
                    j1 = 4;
                    int j2 = abyte2[i1 + 3] & 0xff;
                    k1 ^= (j2 & 0x7f) << 21;
                    i1 = k1;
                    if (j2 > 127)
                    {
                        int k2 = b[d + 4] & 0xff;
                        i1 = k1 ^ (k2 & 0x7f) << 28;
                        j1 = byte0;
                        if (k2 > 127)
                        {
                            throw new IOException("Invalid int encoding");
                        }
                    }
                }
            }
        } else
        {
            j1 = 1;
        }
        d = j1 + d;
        if (d > e)
        {
            throw new EOFException();
        } else
        {
            return -(i1 & 1) ^ i1 >>> 1;
        }
    }

    public long e()
        throws IOException
    {
        b(10);
        byte abyte0[] = b;
        int i1 = d;
        d = i1 + 1;
        int j1 = abyte0[i1] & 0xff;
        i1 = j1 & 0x7f;
        long l2;
        if (j1 > 127)
        {
            byte abyte1[] = b;
            int k1 = d;
            d = k1 + 1;
            k1 = abyte1[k1] & 0xff;
            i1 ^= (k1 & 0x7f) << 7;
            if (k1 > 127)
            {
                byte abyte2[] = b;
                int l1 = d;
                d = l1 + 1;
                l1 = abyte2[l1] & 0xff;
                i1 ^= (l1 & 0x7f) << 14;
                if (l1 > 127)
                {
                    byte abyte3[] = b;
                    int i2 = d;
                    d = i2 + 1;
                    i2 = abyte3[i2] & 0xff;
                    i1 ^= (i2 & 0x7f) << 21;
                    if (i2 > 127)
                    {
                        l2 = b(i1);
                    } else
                    {
                        l2 = i1;
                    }
                } else
                {
                    l2 = i1;
                }
            } else
            {
                l2 = i1;
            }
        } else
        {
            l2 = i1;
        }
        if (d > e)
        {
            throw new EOFException();
        } else
        {
            return -(l2 & 1L) ^ l2 >>> 1;
        }
    }

    public float f()
        throws IOException
    {
        b(4);
        byte byte0 = b[d];
        byte byte1 = b[1 + d];
        byte byte2 = b[d + 2];
        byte byte3 = b[d + 3];
        if (d + 4 > e)
        {
            throw new EOFException();
        } else
        {
            d = d + 4;
            return Float.intBitsToFloat((byte1 & 0xff) << 8 | byte0 & 0xff | (byte2 & 0xff) << 16 | (byte3 & 0xff) << 24);
        }
    }

    public double g()
        throws IOException
    {
        b(8);
        byte byte0 = b[d];
        byte byte1 = b[1 + d];
        byte byte2 = b[d + 2];
        byte byte3 = b[d + 3];
        byte byte4 = b[d + 4];
        byte byte5 = b[d + 5];
        byte byte6 = b[d + 6];
        byte byte7 = b[d + 7];
        if (d + 8 > e)
        {
            throw new EOFException();
        } else
        {
            d = d + 8;
            long l1 = (byte1 & 0xff) << 8 | byte0 & 0xff | (byte2 & 0xff) << 16 | (byte3 & 0xff) << 24;
            return Double.longBitsToDouble((long)(byte4 & 0xff | (byte5 & 0xff) << 8 | (byte6 & 0xff) << 16 | (byte7 & 0xff) << 24) << 32 | l1 & 0xffffffffL);
        }
    }

    public String h()
        throws IOException
    {
        return a(f).toString();
    }

    public void i()
        throws IOException
    {
        a(d());
    }

    public void j()
        throws IOException
    {
        a(d());
    }

    public int k()
        throws IOException
    {
        return d();
    }

    protected long l()
        throws IOException
    {
        long l2 = e();
        long l1 = l2;
        if (l2 < 0L)
        {
            e();
            l1 = -l2;
        }
        return l1;
    }

    public long m()
        throws IOException
    {
        return l();
    }

    public long n()
        throws IOException
    {
        return l();
    }

    public long o()
        throws IOException
    {
        return t();
    }

    public long p()
        throws IOException
    {
        return l();
    }

    public long q()
        throws IOException
    {
        return l();
    }

    public long r()
        throws IOException
    {
        return t();
    }

    public int s()
        throws IOException
    {
        return d();
    }
}
