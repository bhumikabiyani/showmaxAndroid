// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Member;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xg, adz, xp

public abstract class xk extends xg
{

    protected final xp b;

    protected xk(xp xp)
    {
        b = xp;
    }

    public abstract void a(Object obj, Object obj1)
        throws UnsupportedOperationException, IllegalArgumentException;

    public abstract Class h();

    public abstract Member i();

    protected xp j()
    {
        return b;
    }

    public final void k()
    {
        adz.a(i());
    }
}
