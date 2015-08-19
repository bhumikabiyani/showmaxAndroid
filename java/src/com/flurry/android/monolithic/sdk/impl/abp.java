// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, or, oz, 
//            rx, ru

public class abp extends abt
{

    public abp(Class class1)
    {
        super(class1, false);
    }

    public void a(Object obj, or or1, ru ru)
        throws IOException, oq
    {
        or1.d(obj.toString());
    }

    public void a(Object obj, or or1, ru ru, rx rx1)
        throws IOException, oz
    {
        rx1.a(obj, or1);
        a(obj, or1, ru);
        rx1.d(obj, or1);
    }
}
