// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, afz, oq, rx, 
//            oz, or, ru

public class acz extends abt
{

    public acz()
    {
        super(com/flurry/android/monolithic/sdk/impl/afz);
    }

    public void a(afz afz1, or or, ru ru)
        throws IOException, oq
    {
        afz1.a(or);
    }

    public final void a(afz afz1, or or, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.a(afz1, or);
        a(afz1, or, ru);
        rx1.d(afz1, or);
    }

    public volatile void a(Object obj, or or, ru ru)
        throws IOException, oq
    {
        a((afz)obj, or, ru);
    }

    public volatile void a(Object obj, or or, ru ru, rx rx1)
        throws IOException, oz
    {
        a((afz)obj, or, ru, rx1);
    }
}
