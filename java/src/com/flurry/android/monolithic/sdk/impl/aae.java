// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aae extends abq
{

    static final aae a = new aae();

    public aae()
    {
        super(java/lang/Long);
    }

    public void a(Long long1, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(long1.longValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Long)obj, or1, ru);
    }

}
