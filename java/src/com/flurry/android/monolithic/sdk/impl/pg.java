// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.android.monolithic.sdk.impl;

import java.io.IOException;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

// Referenced classes of package com.flurry.android.monolithic.sdk.impl:
//            or, pl, os, afs, 
//            oz, pc, oq, pd, 
//            ou

public abstract class pg extends or
{

    protected pc b;
    protected int c;
    protected boolean d;
    protected pl e;
    protected boolean f;

    protected pg(int i1, pc pc1)
    {
        c = i1;
        e = pl.g();
        b = pc1;
        d = a(os.e);
    }

    public or a()
    {
        return a(((pd) (new afs())));
    }

    public void a(ou ou)
        throws IOException, oz
    {
        if (ou == null)
        {
            f();
            return;
        }
        if (b == null)
        {
            throw new IllegalStateException("No ObjectCodec defined for the generator, can not serialize JsonNode-based trees");
        } else
        {
            b.a(this, ou);
            return;
        }
    }

    public void a(Object obj)
        throws IOException, oz
    {
        if (obj == null)
        {
            f();
            return;
        }
        if (b != null)
        {
            b.a(this, obj);
            return;
        } else
        {
            b(obj);
            return;
        }
    }

    public final boolean a(os os1)
    {
        return (c & os1.c()) != 0;
    }

    public void b()
        throws IOException, oq
    {
        h("start an array");
        e = e.h();
        if (a != null)
        {
            a.e(this);
            return;
        } else
        {
            i();
            return;
        }
    }

    protected void b(Object obj)
        throws IOException, oq
    {
        if (obj == null)
        {
            f();
            return;
        }
        if (obj instanceof String)
        {
            b((String)obj);
            return;
        }
        if (obj instanceof Number)
        {
            Number number = (Number)obj;
            if (number instanceof Integer)
            {
                b(number.intValue());
                return;
            }
            if (number instanceof Long)
            {
                a(number.longValue());
                return;
            }
            if (number instanceof Double)
            {
                a(number.doubleValue());
                return;
            }
            if (number instanceof Float)
            {
                a(number.floatValue());
                return;
            }
            if (number instanceof Short)
            {
                b(number.shortValue());
                return;
            }
            if (number instanceof Byte)
            {
                b(number.byteValue());
                return;
            }
            if (number instanceof BigInteger)
            {
                a((BigInteger)number);
                return;
            }
            if (number instanceof BigDecimal)
            {
                a((BigDecimal)number);
                return;
            }
            if (number instanceof AtomicInteger)
            {
                b(((AtomicInteger)number).get());
                return;
            }
            if (number instanceof AtomicLong)
            {
                a(((AtomicLong)number).get());
                return;
            }
        } else
        {
            if (obj instanceof byte[])
            {
                a((byte[])(byte[])obj);
                return;
            }
            if (obj instanceof Boolean)
            {
                a(((Boolean)obj).booleanValue());
                return;
            }
            if (obj instanceof AtomicBoolean)
            {
                a(((AtomicBoolean)obj).get());
                return;
            }
        }
        throw new IllegalStateException((new StringBuilder()).append("No ObjectCodec defined for the generator, can only serialize simple wrapper types (type passed ").append(obj.getClass().getName()).append(")").toString());
    }

    public void c()
        throws IOException, oq
    {
        if (!e.a())
        {
            i((new StringBuilder()).append("Current context not an ARRAY but ").append(e.d()).toString());
        }
        if (a != null)
        {
            a.b(this, e.e());
        } else
        {
            j();
        }
        e = e.j();
    }

    public void close()
        throws IOException
    {
        f = true;
    }

    public void d()
        throws IOException, oq
    {
        h("start an object");
        e = e.i();
        if (a != null)
        {
            a.b(this);
            return;
        } else
        {
            k();
            return;
        }
    }

    public void d(String s)
        throws IOException, oq
    {
        h("write raw value");
        c(s);
    }

    public void e()
        throws IOException, oq
    {
        if (!e.c())
        {
            i((new StringBuilder()).append("Current context not an object but ").append(e.d()).toString());
        }
        e = e.j();
        if (a != null)
        {
            a.a(this, e.e());
            return;
        } else
        {
            l();
            return;
        }
    }

    public final pl h()
    {
        return e;
    }

    protected abstract void h(String s)
        throws IOException, oq;

    protected void i()
        throws IOException, oq
    {
    }

    protected void i(String s)
        throws oq
    {
        throw new oq(s);
    }

    protected void j()
        throws IOException, oq
    {
    }

    protected void k()
        throws IOException, oq
    {
    }

    protected void l()
        throws IOException, oq
    {
    }

    protected void m()
    {
        throw new RuntimeException("Internal error: should never end up through this code path");
    }
}
