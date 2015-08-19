// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, ru, or

public final class acn extends abt
{

    public acn()
    {
        super(java/util/concurrent/atomic/AtomicReference, false);
    }

    public volatile void a(Object obj, or or, ru ru1)
        throws IOException, oq
    {
        a((AtomicReference)obj, or, ru1);
    }

    public void a(AtomicReference atomicreference, or or, ru ru1)
        throws IOException, oq
    {
        ru1.a(atomicreference.get(), or);
    }
}
