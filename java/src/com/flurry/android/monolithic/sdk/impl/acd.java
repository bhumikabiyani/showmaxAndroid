// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, oq, or, rx, 
//            abc, ru

public final class acd extends abw
{

    public acd()
    {
        this(null);
    }

    public acd(rx rx)
    {
        super([J, rx, null);
    }

    public abc a(rx rx)
    {
        return new acd(rx);
    }

    public void a(long al[], or or1, ru ru)
        throws IOException, oq
    {
        int i = 0;
        for (int j = al.length; i < j; i++)
        {
            or1.a(al[i]);
        }

    }

    public void b(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((long[])obj, or1, ru);
    }
}
