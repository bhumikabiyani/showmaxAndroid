// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            kb, kj, or, kf, 
//            ka, kc

class ju extends kb
{

    private final int i;

    public ju(ka ka, String s, int j)
    {
        super(kj.f, ka, s);
        if (j < 0)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Invalid fixed size: ").append(j).toString());
        } else
        {
            i = j;
            return;
        }
    }

    void a(kc kc, or or1)
        throws IOException
    {
        if (c(kc, or1))
        {
            return;
        }
        or1.d();
        or1.a("type", "fixed");
        d(kc, or1);
        if (e() != null)
        {
            or1.a("doc", e());
        }
        or1.a("size", i);
        c.a(or1);
        a(or1);
        or1.e();
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof ju))
            {
                return false;
            }
            obj = (ju)obj;
            if (!c(((ji) (obj))) || !a(((kb) (obj))) || i != ((ju) (obj)).i || !c.equals(((ju) (obj)).c))
            {
                return false;
            }
        }
        return true;
    }

    public int l()
    {
        return i;
    }

    int m()
    {
        return super.m() + i;
    }
}
