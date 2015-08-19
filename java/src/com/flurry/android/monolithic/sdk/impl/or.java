// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.Closeable;
import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oq, oz, pe, pw, 
//            oo, pd, pp, on, 
//            ou

public abstract class or
    implements Closeable
{

    protected pd a;

    protected or()
    {
    }

    public abstract or a();

    public or a(int i)
    {
        return this;
    }

    public or a(pd pd)
    {
        a = pd;
        return this;
    }

    public or a(pp pp)
    {
        return this;
    }

    public abstract void a(char c1)
        throws IOException, oq;

    public abstract void a(double d1)
        throws IOException, oq;

    public abstract void a(float f1)
        throws IOException, oq;

    public abstract void a(long l)
        throws IOException, oq;

    public abstract void a(on on, byte abyte0[], int i, int j)
        throws IOException, oq;

    public abstract void a(ou ou)
        throws IOException, oz;

    public void a(pe pe1)
        throws IOException, oq
    {
        a(pe1.a());
    }

    public void a(pw pw1)
        throws IOException, oq
    {
        a(pw1.a());
    }

    public abstract void a(Object obj)
        throws IOException, oz;

    public abstract void a(String s)
        throws IOException, oq;

    public final void a(String s, int i)
        throws IOException, oq
    {
        a(s);
        b(i);
    }

    public void a(String s, String s1)
        throws IOException, oq
    {
        a(s);
        b(s1);
    }

    public abstract void a(BigDecimal bigdecimal)
        throws IOException, oq;

    public abstract void a(BigInteger biginteger)
        throws IOException, oq;

    public abstract void a(boolean flag)
        throws IOException, oq;

    public void a(byte abyte0[])
        throws IOException, oq
    {
        a(oo.a(), abyte0, 0, abyte0.length);
    }

    public abstract void a(char ac[], int i, int j)
        throws IOException, oq;

    public abstract void b()
        throws IOException, oq;

    public abstract void b(int i)
        throws IOException, oq;

    public void b(pe pe1)
        throws IOException, oq
    {
        b(pe1.a());
    }

    public abstract void b(String s)
        throws IOException, oq;

    public abstract void b(char ac[], int i, int j)
        throws IOException, oq;

    public abstract void c()
        throws IOException, oq;

    public abstract void c(String s)
        throws IOException, oq;

    public abstract void d()
        throws IOException, oq;

    public abstract void d(String s)
        throws IOException, oq;

    public abstract void e()
        throws IOException, oq;

    public abstract void e(String s)
        throws IOException, oq, UnsupportedOperationException;

    public abstract void f()
        throws IOException, oq;

    public final void f(String s)
        throws IOException, oq
    {
        a(s);
        b();
    }

    public abstract void g()
        throws IOException;

    public final void g(String s)
        throws IOException, oq
    {
        a(s);
        d();
    }
}
