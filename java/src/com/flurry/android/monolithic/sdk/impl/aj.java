// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import com.flurry.android.impl.ads.avro.protocol.v6.AdSpaceLayout;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            je, ag

abstract class aj
{

    private aj()
    {
    }

    aj(ag ag)
    {
        this();
    }

    private static boolean h(AdSpaceLayout adspacelayout)
    {
        return adspacelayout.b().intValue() != 0;
    }

    private static boolean i(AdSpaceLayout adspacelayout)
    {
        return adspacelayout.c().intValue() != 0;
    }

    public abstract android.view.ViewGroup.LayoutParams a(AdSpaceLayout adspacelayout);

    public int b(AdSpaceLayout adspacelayout)
    {
        if (h(adspacelayout))
        {
            return d(adspacelayout);
        } else
        {
            return f(adspacelayout);
        }
    }

    public int c(AdSpaceLayout adspacelayout)
    {
        if (i(adspacelayout))
        {
            return e(adspacelayout);
        } else
        {
            return g(adspacelayout);
        }
    }

    public int d(AdSpaceLayout adspacelayout)
    {
        return je.b(adspacelayout.b().intValue());
    }

    public int e(AdSpaceLayout adspacelayout)
    {
        return je.b(adspacelayout.c().intValue());
    }

    public int f(AdSpaceLayout adspacelayout)
    {
        return -1;
    }

    public int g(AdSpaceLayout adspacelayout)
    {
        return -2;
    }
}
