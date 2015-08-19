// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qm

final class wr extends we
{

    final Method b;

    public wr(Method method)
    {
        super(method.getDeclaringClass());
        b = method;
    }

    public Object b(String s, qm qm)
        throws Exception
    {
        return b.invoke(null, new Object[] {
            s
        });
    }
}
