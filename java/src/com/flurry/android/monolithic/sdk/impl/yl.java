// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            zb, oz, or, yi, 
//            qc

public class yl extends zb
{

    public yl(yi yi1, qc qc)
    {
        super(yi1, qc);
    }

    public void a(Object obj, or or1)
        throws IOException, oz
    {
        or1.b();
        or1.b(b.a(obj));
    }

    public void a(Object obj, or or1, Class class1)
        throws IOException, oz
    {
        or1.b();
        or1.b(b.a(obj, class1));
    }

    public void b(Object obj, or or1)
        throws IOException, oz
    {
        or1.b();
        or1.b(b.a(obj));
        or1.d();
    }

    public void c(Object obj, or or1)
        throws IOException, oz
    {
        or1.b();
        or1.b(b.a(obj));
        or1.b();
    }

    public void d(Object obj, or or1)
        throws IOException, oz
    {
        or1.c();
    }

    public void e(Object obj, or or1)
        throws IOException, oz
    {
        or1.e();
        or1.c();
    }

    public void f(Object obj, or or1)
        throws IOException, oz
    {
        or1.c();
        or1.c();
    }
}
