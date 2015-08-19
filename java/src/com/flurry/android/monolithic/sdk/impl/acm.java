// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class acm extends abq
{

    public acm()
    {
        super(java/util/concurrent/atomic/AtomicLong, false);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((AtomicLong)obj, or1, ru);
    }

    public void a(AtomicLong atomiclong, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(atomiclong.get());
    }
}
