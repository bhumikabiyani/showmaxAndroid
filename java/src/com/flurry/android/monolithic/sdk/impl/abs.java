// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, qz, oq, oz, 
//            or, ru, rx

public class abs extends abt
{

    public static final abs a = new abs();

    protected abs()
    {
        super(com/flurry/android/monolithic/sdk/impl/qz);
    }

    public void a(qz qz1, or or, ru ru)
        throws IOException, oq
    {
        qz1.a(or, ru);
    }

    public final void a(qz qz1, or or, ru ru, rx rx)
        throws IOException, oq
    {
        qz1.a(or, ru, rx);
    }

    public volatile void a(Object obj, or or, ru ru)
        throws IOException, oq
    {
        a((qz)obj, or, ru);
    }

    public volatile void a(Object obj, or or, ru ru, rx rx)
        throws IOException, oz
    {
        a((qz)obj, or, ru, rx);
    }

}
