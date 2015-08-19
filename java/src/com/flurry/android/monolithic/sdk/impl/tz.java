// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, oz, ow, qm

public class tz extends wv
{

    public tz()
    {
        super(java/util/concurrent/atomic/AtomicBoolean);
    }

    public Object a(ow ow, qm qm)
        throws IOException, oz
    {
        return b(ow, qm);
    }

    public AtomicBoolean b(ow ow, qm qm)
        throws IOException, oz
    {
        return new AtomicBoolean(n(ow, qm));
    }
}
