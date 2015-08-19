// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            th, ql, qk, afm, 
//            qw, oz, xo, tn, 
//            sw

public class ww extends th
{

    protected final String a;
    protected final boolean b;
    protected xo c;
    protected tn d[];
    protected xo e;
    protected afm f;
    protected xo g;
    protected xo h;
    protected xo i;
    protected xo j;
    protected xo k;
    protected xo l;

    public ww(qk qk1, afm afm1)
    {
        boolean flag;
        if (qk1 == null)
        {
            flag = false;
        } else
        {
            flag = qk1.a(ql.q);
        }
        b = flag;
        if (afm1 == null)
        {
            qk1 = "UNKNOWN TYPE";
        } else
        {
            qk1 = afm1.toString();
        }
        a = qk1;
    }

    protected qw a(Throwable throwable)
    {
        for (; throwable.getCause() != null; throwable = throwable.getCause()) { }
        return new qw((new StringBuilder()).append("Instantiation of ").append(a()).append(" value failed: ").append(throwable.getMessage()).toString(), throwable);
    }

    public Object a(double d1)
        throws IOException, oz
    {
label0:
        {
            Object obj;
            try
            {
                if (k == null)
                {
                    break label0;
                }
                obj = k.a(Double.valueOf(d1));
            }
            catch (Exception exception)
            {
                throw a(((Throwable) (exception)));
            }
            return obj;
        }
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON floating-point number; no one-double/Double-arg constructor/factory method").toString());
    }

    public Object a(int i1)
        throws IOException, oz
    {
label0:
        {
            Object obj;
            try
            {
                if (i != null)
                {
                    return i.a(Integer.valueOf(i1));
                }
                if (j == null)
                {
                    break label0;
                }
                obj = j.a(Long.valueOf(i1));
            }
            catch (Exception exception)
            {
                throw a(((Throwable) (exception)));
            }
            return obj;
        }
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON integral number; no single-int-arg constructor/factory method").toString());
    }

    public Object a(long l1)
        throws IOException, oz
    {
label0:
        {
            Object obj;
            try
            {
                if (j == null)
                {
                    break label0;
                }
                obj = j.a(Long.valueOf(l1));
            }
            catch (Exception exception)
            {
                throw a(((Throwable) (exception)));
            }
            return obj;
        }
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON long integral number; no single-long-arg constructor/factory method").toString());
    }

    public Object a(Object obj)
        throws IOException, oz
    {
        if (g == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("No delegate constructor for ").append(a()).toString());
        }
        try
        {
            obj = g.a(obj);
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw a(((Throwable) (obj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object obj)
        {
            throw a(((Throwable) (obj)));
        }
        return obj;
    }

    public Object a(String s)
        throws IOException, oz
    {
        if (h != null)
        {
            try
            {
                s = ((String) (h.a(s)));
            }
            // Misplaced declaration of an exception variable
            catch (String s)
            {
                throw a(((Throwable) (s)));
            }
            return s;
        } else
        {
            return b(s);
        }
    }

    public Object a(boolean flag)
        throws IOException, oz
    {
label0:
        {
            Object obj;
            try
            {
                if (l == null)
                {
                    break label0;
                }
                obj = l.a(Boolean.valueOf(flag));
            }
            catch (Exception exception)
            {
                throw a(((Throwable) (exception)));
            }
            return obj;
        }
        throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON boolean value; no single-boolean/Boolean-arg constructor/factory method").toString());
    }

    public Object a(Object aobj[])
        throws IOException, oz
    {
        if (e == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("No with-args constructor for ").append(a()).toString());
        }
        try
        {
            aobj = ((Object []) (e.a(aobj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            throw a(((Throwable) (aobj)));
        }
        // Misplaced declaration of an exception variable
        catch (Object aobj[])
        {
            throw a(((Throwable) (aobj)));
        }
        return ((Object) (aobj));
    }

    public String a()
    {
        return a;
    }

    public void a(xo xo1)
    {
        h = xo1;
    }

    public void a(xo xo1, xo xo2, afm afm1, xo xo3, tn atn[])
    {
        c = xo1;
        g = xo2;
        f = afm1;
        e = xo3;
        d = atn;
    }

    protected Object b(String s)
        throws IOException, oz
    {
        if (l != null)
        {
            String s1 = s.trim();
            if ("true".equals(s1))
            {
                return a(true);
            }
            if ("false".equals(s1))
            {
                return a(false);
            }
        }
        if (b && s.length() == 0)
        {
            return null;
        } else
        {
            throw new qw((new StringBuilder()).append("Can not instantiate value of type ").append(a()).append(" from JSON String; no single-String constructor/factory method").toString());
        }
    }

    public void b(xo xo1)
    {
        i = xo1;
    }

    public void c(xo xo1)
    {
        j = xo1;
    }

    public boolean c()
    {
        return h != null;
    }

    public void d(xo xo1)
    {
        k = xo1;
    }

    public boolean d()
    {
        return i != null;
    }

    public void e(xo xo1)
    {
        l = xo1;
    }

    public boolean e()
    {
        return j != null;
    }

    public boolean f()
    {
        return k != null;
    }

    public boolean g()
    {
        return l != null;
    }

    public boolean h()
    {
        return c != null;
    }

    public boolean j()
    {
        return e != null;
    }

    public sw[] k()
    {
        return d;
    }

    public afm l()
    {
        return f;
    }

    public Object m()
        throws IOException, oz
    {
        if (c == null)
        {
            throw new IllegalStateException((new StringBuilder()).append("No default constructor for ").append(a()).toString());
        }
        Object obj;
        try
        {
            obj = c.g();
        }
        catch (ExceptionInInitializerError exceptionininitializererror)
        {
            throw a(exceptionininitializererror);
        }
        catch (Exception exception)
        {
            throw a(exception);
        }
        return obj;
    }

    public xo n()
    {
        return c;
    }

    public xo o()
    {
        return g;
    }
}
