// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, or, rx, 
//            ru

public class acy extends abt
{

    public static final acy a = new acy();

    public acy()
    {
        super(java/lang/Object);
    }

    public void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        or1.b(obj.toString());
    }

    public void a(Object obj, or or1, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.a(obj, or1);
        a(obj, or1, ru);
        rx1.d(obj, or1);
    }

}
