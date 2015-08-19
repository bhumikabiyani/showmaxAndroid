// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            qc, qu, tb, afv, 
//            qw, oz, ow, pb, 
//            afm, ado, rw, qm, 
//            xk

public abstract class sw
    implements qc
{

    protected final String a;
    protected final afm b;
    protected final ado c;
    protected qu d;
    protected rw e;
    protected tb f;
    protected String g;
    protected int h;

    protected sw(sw sw1)
    {
        h = -1;
        a = sw1.a;
        b = sw1.b;
        c = sw1.c;
        d = sw1.d;
        e = sw1.e;
        f = sw1.f;
        g = sw1.g;
        h = sw1.h;
    }

    protected sw(sw sw1, qu qu1)
    {
        Object obj = null;
        super();
        h = -1;
        a = sw1.a;
        b = sw1.b;
        c = sw1.c;
        e = sw1.e;
        g = sw1.g;
        h = sw1.h;
        d = qu1;
        if (qu1 == null)
        {
            f = null;
            return;
        }
        sw1 = ((sw) (qu1.b()));
        if (sw1 == null)
        {
            sw1 = obj;
        } else
        {
            sw1 = new tb(b, sw1);
        }
        f = sw1;
    }

    protected sw(String s, afm afm, rw rw, ado ado)
    {
        h = -1;
        if (s == null || s.length() == 0)
        {
            a = "";
        } else
        {
            a = afv.a.a(s);
        }
        b = afm;
        c = ado;
        e = rw;
    }

    public afm a()
    {
        return b;
    }

    public abstract sw a(qu qu1);

    protected IOException a(Exception exception)
        throws IOException
    {
        if (exception instanceof IOException)
        {
            throw (IOException)exception;
        }
        Object obj = exception;
        if (exception instanceof RuntimeException)
        {
            throw (RuntimeException)exception;
        }
        for (; ((Throwable) (obj)).getCause() != null; obj = ((Throwable) (obj)).getCause()) { }
        throw new qw(((Throwable) (obj)).getMessage(), null, ((Throwable) (obj)));
    }

    public final Object a(ow ow1, qm qm)
        throws IOException, oz
    {
        if (ow1.e() == pb.m)
        {
            if (f == null)
            {
                return null;
            } else
            {
                return f.a(qm);
            }
        }
        if (e != null)
        {
            return d.a(ow1, qm, e);
        } else
        {
            return d.a(ow1, qm);
        }
    }

    public void a(int l)
    {
        if (h != -1)
        {
            throw new IllegalStateException((new StringBuilder()).append("Property '").append(c()).append("' already had index (").append(h).append("), trying to assign ").append(l).toString());
        } else
        {
            h = l;
            return;
        }
    }

    public abstract void a(ow ow1, qm qm, Object obj)
        throws IOException, oz;

    protected void a(Exception exception, Object obj)
        throws IOException
    {
        if (exception instanceof IllegalArgumentException)
        {
            StringBuilder stringbuilder;
            if (obj == null)
            {
                obj = "[NULL]";
            } else
            {
                obj = obj.getClass().getName();
            }
            stringbuilder = (new StringBuilder("Problem deserializing property '")).append(d());
            stringbuilder.append("' (expected type: ").append(a());
            stringbuilder.append("; actual type: ").append(((String) (obj))).append(")");
            obj = exception.getMessage();
            if (obj != null)
            {
                stringbuilder.append(", problem: ").append(((String) (obj)));
            } else
            {
                stringbuilder.append(" (no error message provided)");
            }
            throw new qw(stringbuilder.toString(), null, exception);
        } else
        {
            a(exception);
            return;
        }
    }

    public abstract void a(Object obj, Object obj1)
        throws IOException;

    public void a(String s)
    {
        g = s;
    }

    public abstract xk b();

    public final String c()
    {
        return a;
    }

    public String d()
    {
        return a;
    }

    public String e()
    {
        return g;
    }

    public boolean f()
    {
        return d != null;
    }

    public boolean g()
    {
        return e != null;
    }

    public qu h()
    {
        return d;
    }

    public rw i()
    {
        return e;
    }

    public int j()
    {
        return h;
    }

    public Object k()
    {
        return null;
    }

    public String toString()
    {
        return (new StringBuilder()).append("[property '").append(c()).append("']").toString();
    }
}
