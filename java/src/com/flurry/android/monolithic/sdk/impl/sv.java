// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.lang.reflect.Method;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            xl, oz, ow, pb, 
//            qu, qw, qc, afm, 
//            qm

public final class sv
{

    protected final qc a;
    protected final Method b;
    protected final afm c;
    protected qu d;

    public sv(qc qc, xl xl1, afm afm, qu qu1)
    {
        this(qc, xl1.e(), afm, qu1);
    }

    public sv(qc qc, Method method, afm afm, qu qu1)
    {
        a = qc;
        c = afm;
        b = method;
        d = qu1;
    }

    private String d()
    {
        return b.getDeclaringClass().getName();
    }

    public qc a()
    {
        return a;
    }

    public sv a(qu qu1)
    {
        return new sv(a, b, c, qu1);
    }

    public final Object a(ow ow1, qm qm)
        throws IOException, oz
    {
        if (ow1.e() == pb.m)
        {
            return null;
        } else
        {
            return d.a(ow1, qm);
        }
    }

    public final void a(ow ow1, qm qm, Object obj, String s)
        throws IOException, oz
    {
        a(obj, s, a(ow1, qm));
    }

    protected void a(Exception exception, String s, Object obj)
        throws IOException
    {
        if (exception instanceof IllegalArgumentException)
        {
            if (obj == null)
            {
                obj = "[NULL]";
            } else
            {
                obj = obj.getClass().getName();
            }
            s = (new StringBuilder("Problem deserializing \"any\" property '")).append(s);
            s.append((new StringBuilder()).append("' of class ").append(d()).append(" (expected type: ").toString()).append(c);
            s.append("; actual type: ").append(((String) (obj))).append(")");
            obj = exception.getMessage();
            if (obj != null)
            {
                s.append(", problem: ").append(((String) (obj)));
            } else
            {
                s.append(" (no error message provided)");
            }
            throw new qw(s.toString(), null, exception);
        }
        if (exception instanceof IOException)
        {
            throw (IOException)exception;
        }
        s = exception;
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        }
        for (; s.getCause() != null; s = s.getCause()) { }
        throw new qw(s.getMessage(), null, s);
    }

    public final void a(Object obj, String s, Object obj1)
        throws IOException
    {
        try
        {
            b.invoke(obj, new Object[] {
                s, obj1
            });
            return;
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            a(((Exception) (obj)), s, obj1);
        }
    }

    public boolean b()
    {
        return d != null;
    }

    public afm c()
    {
        return c;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[any property on class ").append(d()).append("]").toString();
    }
}
