// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            ra, afm, rr, ru, 
//            qw, oq, rz, or

public abstract class abt extends ra
{

    protected final Class k;

    protected abt(afm afm1)
    {
        k = afm1.p();
    }

    protected abt(Class class1)
    {
        k = class1;
    }

    protected abt(Class class1, boolean flag)
    {
        k = class1;
    }

    public void a(ru ru1, Throwable throwable, Object obj, int i)
        throws IOException
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (ru1 == null || ru1.a(rr.n))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof qw))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        throw qw.a(throwable, obj, i);
    }

    public void a(ru ru1, Throwable throwable, Object obj, String s)
        throws IOException
    {
        for (; (throwable instanceof InvocationTargetException) && throwable.getCause() != null; throwable = throwable.getCause()) { }
        if (throwable instanceof Error)
        {
            throw (Error)throwable;
        }
        boolean flag;
        if (ru1 == null || ru1.a(rr.n))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (throwable instanceof IOException)
        {
            if (!flag || !(throwable instanceof qw))
            {
                throw (IOException)throwable;
            }
        } else
        if (!flag && (throwable instanceof RuntimeException))
        {
            throw (RuntimeException)throwable;
        }
        throw qw.a(throwable, obj, s);
    }

    public abstract void a(Object obj, or or, ru ru1)
        throws IOException, oq;

    protected boolean a(ra ra1)
    {
        return ra1 != null && ra1.getClass().getAnnotation(com/flurry/android/monolithic/sdk/impl/rz) != null;
    }

    public final Class c()
    {
        return k;
    }
}
