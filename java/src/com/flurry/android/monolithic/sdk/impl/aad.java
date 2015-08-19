// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abm, oq, or, ru

public final class aad extends abm
{

    public aad()
    {
        super(java/lang/Integer);
    }

    public void a(Integer integer, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(integer.intValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Integer)obj, or1, ru);
    }
}
