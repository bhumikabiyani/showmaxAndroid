// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ra, oz, rx, or, 
//            ru

final class zx extends ra
{

    protected final rx a;
    protected final ra b;

    public zx(rx rx, ra ra1)
    {
        a = rx;
        b = ra1;
    }

    public void a(Object obj, or or, ru ru)
        throws IOException, oz
    {
        b.a(obj, or, ru, a);
    }

    public void a(Object obj, or or, ru ru, rx rx)
        throws IOException, oz
    {
        b.a(obj, or, ru, rx);
    }

    public Class c()
    {
        return java/lang/Object;
    }
}
