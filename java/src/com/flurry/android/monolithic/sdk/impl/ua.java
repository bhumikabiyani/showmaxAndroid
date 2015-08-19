// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.util.concurrent.atomic.AtomicReference;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            wv, ro, oz, qw, 
//            qq, qu, afm, qc, 
//            ow, qm, qk

public class ua extends wv
    implements ro
{

    protected final afm a;
    protected final qc b;
    protected qu c;

    public ua(afm afm, qc qc)
    {
        super(java/util/concurrent/atomic/AtomicReference);
        a = afm;
        b = qc;
    }

    public Object a(ow ow, qm qm)
        throws IOException, oz
    {
        return b(ow, qm);
    }

    public void a(qk qk, qq qq1)
        throws qw
    {
        c = qq1.a(qk, a, b);
    }

    public AtomicReference b(ow ow, qm qm)
        throws IOException, oz
    {
        return new AtomicReference(c.a(ow, qm));
    }
}
