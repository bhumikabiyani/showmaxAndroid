// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abq, oq, or, ru

public final class aab extends abq
{

    static final aab a = new aab();

    public aab()
    {
        super(java/lang/Float);
    }

    public void a(Float float1, or or1, ru ru)
        throws IOException, oq
    {
        or1.a(float1.floatValue());
    }

    public volatile void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        a((Float)obj, or1, ru);
    }

}
