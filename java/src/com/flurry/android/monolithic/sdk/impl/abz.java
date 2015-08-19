// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, or, oz, 
//            rr, ru, rx

public final class abz extends abt
{

    public abz()
    {
        super([C);
    }

    private final void a(or or1, char ac[])
        throws IOException, oq
    {
        int i = 0;
        for (int j = ac.length; i < j; i++)
        {
            or1.a(ac, i, 1);
        }

    }

    public volatile void a(Object obj, or or1, ru ru1)
        throws IOException, oq
    {
        a((char[])obj, or1, ru1);
    }

    public volatile void a(Object obj, or or1, ru ru1, rx rx1)
        throws IOException, oz
    {
        a((char[])obj, or1, ru1, rx1);
    }

    public void a(char ac[], or or1, ru ru1)
        throws IOException, oq
    {
        if (ru1.a(rr.s))
        {
            or1.b();
            a(or1, ac);
            or1.c();
            return;
        } else
        {
            or1.a(ac, 0, ac.length);
            return;
        }
    }

    public void a(char ac[], or or1, ru ru1, rx rx1)
        throws IOException, oq
    {
        if (ru1.a(rr.s))
        {
            rx1.c(ac, or1);
            a(or1, ac);
            rx1.f(ac, or1);
            return;
        } else
        {
            rx1.a(ac, or1);
            or1.a(ac, 0, ac.length);
            rx1.d(ac, or1);
            return;
        }
    }
}
