// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oz, rw, ow, qm

public abstract class qu
{

    public qu()
    {
    }

    public qu a()
    {
        return this;
    }

    public abstract Object a(ow ow, qm qm)
        throws IOException, oz;

    public Object a(ow ow, qm qm, rw rw1)
        throws IOException, oz
    {
        return rw1.d(ow, qm);
    }

    public Object a(ow ow, qm qm, Object obj)
        throws IOException, oz
    {
        throw new UnsupportedOperationException();
    }

    public Object b()
    {
        return null;
    }

    public Object c()
    {
        return b();
    }
}
