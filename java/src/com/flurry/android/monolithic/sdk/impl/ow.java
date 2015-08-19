// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ov, ox, pb, pc, 
//            on, ot, oy

public abstract class ow
    implements Closeable
{

    protected int a;
    protected pb b;
    protected pb c;

    protected ow()
    {
    }

    protected ow(int i1)
    {
        a = i1;
    }

    protected ov a(String s1)
    {
        return new ov(s1, i());
    }

    public abstract pc a();

    public boolean a(ox ox1)
    {
        return (a & ox1.c()) != 0;
    }

    public abstract byte[] a(on on)
        throws IOException, ov;

    public abstract pb b()
        throws IOException, ov;

    public pb c()
        throws IOException, ov
    {
        pb pb2 = b();
        pb pb1 = pb2;
        if (pb2 == pb.f)
        {
            pb1 = b();
        }
        return pb1;
    }

    public abstract void close()
        throws IOException;

    public abstract ow d()
        throws IOException, ov;

    public pb e()
    {
        return b;
    }

    public void f()
    {
        if (b != null)
        {
            c = b;
            b = null;
        }
    }

    public abstract String g()
        throws IOException, ov;

    public abstract ot h();

    public abstract ot i();

    public boolean j()
    {
        return e() == pb.d;
    }

    public abstract String k()
        throws IOException, ov;

    public abstract char[] l()
        throws IOException, ov;

    public abstract int m()
        throws IOException, ov;

    public abstract int n()
        throws IOException, ov;

    public boolean o()
    {
        return false;
    }

    public abstract Number p()
        throws IOException, ov;

    public abstract oy q()
        throws IOException, ov;

    public byte r()
        throws IOException, ov
    {
        int i1 = t();
        if (i1 < -128 || i1 > 127)
        {
            throw a((new StringBuilder()).append("Numeric value (").append(k()).append(") out of range of Java byte").toString());
        } else
        {
            return (byte)i1;
        }
    }

    public short s()
        throws IOException, ov
    {
        int i1 = t();
        if (i1 < -32768 || i1 > 32767)
        {
            throw a((new StringBuilder()).append("Numeric value (").append(k()).append(") out of range of Java short").toString());
        } else
        {
            return (short)i1;
        }
    }

    public abstract int t()
        throws IOException, ov;

    public abstract long u()
        throws IOException, ov;

    public abstract BigInteger v()
        throws IOException, ov;

    public abstract float w()
        throws IOException, ov;

    public abstract double x()
        throws IOException, ov;

    public abstract BigDecimal y()
        throws IOException, ov;

    public Object z()
        throws IOException, ov
    {
        return null;
    }
}
