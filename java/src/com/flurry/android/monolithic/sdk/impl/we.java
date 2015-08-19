// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            rc, oz, qm, pt

public abstract class we extends rc
{

    protected final Class a;

    protected we(Class class1)
    {
        a = class1;
    }

    protected int a(String s)
        throws IllegalArgumentException
    {
        return Integer.parseInt(s);
    }

    public Class a()
    {
        return a;
    }

    public final Object a(String s, qm qm1)
        throws IOException, oz
    {
        Object obj;
        if (s == null)
        {
            obj = null;
        } else
        {
            Object obj1;
            try
            {
                obj1 = b(s, qm1);
            }
            catch (Exception exception)
            {
                throw qm1.a(a, s, (new StringBuilder()).append("not a valid representation: ").append(exception.getMessage()).toString());
            }
            obj = obj1;
            if (obj1 == null)
            {
                throw qm1.a(a, s, "not a valid representation");
            }
        }
        return obj;
    }

    protected long b(String s)
        throws IllegalArgumentException
    {
        return Long.parseLong(s);
    }

    protected abstract Object b(String s, qm qm1)
        throws Exception;

    protected double c(String s)
        throws IllegalArgumentException
    {
        return pt.c(s);
    }
}
