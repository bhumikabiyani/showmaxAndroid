// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, oq, or, rx, 
//            abc, ru

public final class acb extends abw
{

    public acb()
    {
        this(null);
    }

    public acb(rx rx)
    {
        super([F, rx, null);
    }

    public abc a(rx rx)
    {
        return new acb(rx);
    }

    public void a(float af[], or or1, ru ru)
        throws IOException, oq
    {
        int i = 0;
        for (int j = af.length; i < j; i++)
        {
            or1.a(af[i]);
        }

    }

    public void b(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((float[])obj, or1, ru);
    }
}
