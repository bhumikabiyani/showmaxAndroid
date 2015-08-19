// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.lang.reflect.Constructor;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            we, qm

final class wq extends we
{

    protected final Constructor b;

    public wq(Constructor constructor)
    {
        super(constructor.getDeclaringClass());
        b = constructor;
    }

    public Object b(String s, qm qm)
        throws Exception
    {
        return b.newInstance(new Object[] {
            s
        });
    }
}
