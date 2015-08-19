// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class ack extends abq
{

    public ack()
    {
        super(java/util/concurrent/atomic/AtomicBoolean, false);
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((AtomicBoolean)obj, or1, ru);
    }

    public void a(AtomicBoolean atomicboolean, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(atomicboolean.get());
    }
}
