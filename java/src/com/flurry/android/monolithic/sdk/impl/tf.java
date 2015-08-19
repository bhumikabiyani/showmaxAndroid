// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qu, oz, rw, ow, 
//            qm

public final class tf extends qu
{

    final rw a;
    final qu b;

    public tf(rw rw, qu qu1)
    {
        a = rw;
        b = qu1;
    }

    public Object a(ow ow, qm qm)
        throws IOException, oz
    {
        return b.a(ow, qm, a);
    }

    public Object a(ow ow, qm qm, rw rw)
        throws IOException, oz
    {
        throw new IllegalStateException("Type-wrapped deserializer's deserializeWithType should never get called");
    }
}
