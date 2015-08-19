// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            oz

public abstract class ts
{

    public final ts a;
    public final Object b;

    protected ts(ts ts1, Object obj)
    {
        a = ts1;
        b = obj;
    }

    public abstract void a(Object obj)
        throws IOException, oz;
}
