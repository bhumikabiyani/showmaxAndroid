// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, oq, or, rx, 
//            abc, ru

public final class ace extends abw
{

    public ace()
    {
        this(null);
    }

    public ace(rx rx)
    {
        super([S, rx, null);
    }

    public abc a(rx rx)
    {
        return new ace(rx);
    }

    public void a(short aword0[], or or1, ru ru)
        throws IOException, oq
    {
        int i = 0;
        for (int j = aword0.length; i < j; i++)
        {
            or1.b(aword0[i]);
        }

    }

    public void b(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((short[])obj, or1, ru);
    }
}
