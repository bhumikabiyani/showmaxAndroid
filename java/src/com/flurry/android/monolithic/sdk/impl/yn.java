// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zb, oz, or, yi, 
//            qc

public class yn extends zb
{

    protected final String a;

    public yn(yi yi1, qc qc, String s)
    {
        super(yi1, qc);
        a = s;
    }

    public void a(Object obj, or or1)
        throws IOException, oz
    {
        g(obj, or1);
    }

    public void a(Object obj, or or1, Class class1)
        throws IOException, oz
    {
        b(obj, or1, class1);
    }

    public void b(Object obj, or or1)
        throws IOException, oz
    {
        g(obj, or1);
    }

    protected final void b(Object obj, or or1, Class class1)
        throws IOException, oz
    {
        or1.d();
    }

    public void c(Object obj, or or1)
        throws IOException, oz
    {
        g(obj, or1);
    }

    public void d(Object obj, or or1)
        throws IOException, oz
    {
        h(obj, or1);
    }

    public void e(Object obj, or or1)
        throws IOException, oz
    {
        h(obj, or1);
    }

    public void f(Object obj, or or1)
        throws IOException, oz
    {
        h(obj, or1);
    }

    protected final void g(Object obj, or or1)
        throws IOException, oz
    {
        or1.d();
    }

    protected final void h(Object obj, or or1)
        throws IOException, oz
    {
        or1.e();
        or1.a(a, b.a(obj));
    }
}
