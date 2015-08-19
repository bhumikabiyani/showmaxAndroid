// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abm, oq, or, ru

public final class zz extends abm
{

    final boolean a;

    public zz(boolean flag)
    {
        super(java/lang/Boolean);
        a = flag;
    }

    public void a(Boolean boolean1, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(boolean1.booleanValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Boolean)obj, or1, ru);
    }
}
