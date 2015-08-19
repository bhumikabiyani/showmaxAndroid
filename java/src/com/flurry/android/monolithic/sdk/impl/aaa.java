// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abm, oq, or, ru

public final class aaa extends abm
{

    static final aaa a = new aaa();

    public aaa()
    {
        super(java/lang/Double);
    }

    public void a(Double double1, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(double1.doubleValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Double)obj, or1, ru);
    }

}
