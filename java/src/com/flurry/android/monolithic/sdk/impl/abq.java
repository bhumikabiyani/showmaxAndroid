// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            abt, oq, rx, or, 
//            ru

public abstract class abq extends abt
{

    protected abq(Class class1)
    {
        super(class1);
    }

    protected abq(Class class1, boolean flag)
    {
        super(class1);
    }

    public void a(Object obj, or or, ru ru, rx rx1)
        throws IOException, oq
    {
        rx1.a(obj, or);
        a(obj, or, ru);
        rx1.d(obj, or);
    }
}
