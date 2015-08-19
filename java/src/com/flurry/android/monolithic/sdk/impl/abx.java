// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abw, oq, or, rx, 
//            abc, ru

public final class abx extends abw
{

    public abx()
    {
        super([Z, null, null);
    }

    public abc a(rx rx)
    {
        return this;
    }

    public void a(boolean aflag[], or or1, ru ru)
        throws IOException, oq
    {
        int i = 0;
        for (int j = aflag.length; i < j; i++)
        {
            or1.a(aflag[i]);
        }

    }

    public void b(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((boolean[])obj, or1, ru);
    }
}
