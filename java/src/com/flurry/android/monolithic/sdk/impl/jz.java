// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ji, kj, or, kf, 
//            kc

class jz extends ji
{

    private final ji f;

    public jz(ji ji1)
    {
        super(kj.d);
        f = ji1;
    }

    void a(kc kc, or or1)
        throws IOException
    {
        or1.d();
        or1.a("type", "map");
        or1.a("values");
        f.a(kc, or1);
        c.a(or1);
        or1.e();
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof jz))
            {
                return false;
            }
            obj = (jz)obj;
            if (!c(((ji) (obj))) || !f.equals(((jz) (obj)).f) || !c.equals(((jz) (obj)).c))
            {
                return false;
            }
        }
        return true;
    }

    public ji j()
    {
        return f;
    }

    int m()
    {
        return super.m() + f.m();
    }
}
