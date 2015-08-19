// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abc, oq, or, rx, 
//            qc, ru

public abstract class abw extends abc
{

    protected final rx e;
    protected final qc f;

    protected abw(Class class1, rx rx1, qc qc)
    {
        super(class1);
        e = rx1;
        f = qc;
    }

    public final void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        or1.b();
        b(obj, or1, ru);
        or1.c();
    }

    public final void a(Object obj, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.c(obj, or1);
        b(obj, or1, ru);
        rx1.f(obj, or1);
    }

    protected abstract void b(Object obj, or or1, ru ru)
        throws IOException, oq;
}
