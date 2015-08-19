// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, oq, or, rx, 
//            abc, ru

public final class aca extends abw
{

    public aca()
    {
        super([D, null, null);
    }

    public abc a(rx rx)
    {
        return this;
    }

    public void a(double ad[], or or1, ru ru)
        throws IOException, oq
    {
        int i = 0;
        for (int j = ad.length; i < j; i++)
        {
            or1.a(ad[i]);
        }

    }

    public void b(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((double[])obj, or1, ru);
    }
}
